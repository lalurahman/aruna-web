# =============================================================================
# Stage 1 — Builder (PHP + Node)
#   Needs PHP to run `artisan wayfinder:generate` (generates TS route bindings)
#   then Node to run `npm run build` (compiles Vite/Vue frontend assets)
# =============================================================================
FROM php:8.3-cli-alpine AS builder

# Install Node 20, npm, git (needed by Composer), unzip (package extraction),
# and sqlite-dev headers for pdo_sqlite compilation.
RUN apk add --no-cache nodejs npm git unzip sqlite-dev \
    && docker-php-ext-install pdo_sqlite

# Install Composer binary
COPY --from=composer:2.8 /usr/bin/composer /usr/bin/composer

WORKDIR /app

# ── Install PHP dependencies (cached unless composer.* changes) ───────────────
COPY composer.json composer.lock ./
RUN composer install \
    --no-dev \
    --no-interaction \
    --no-scripts \
    --prefer-dist \
    --ignore-platform-reqs

# ── Install Node dependencies (cached unless package*.json changes) ───────────
COPY package.json package-lock.json ./
RUN npm ci

# ── Copy full application source ──────────────────────────────────────────────
COPY . .

# ── Bootstrap a minimal .env so artisan can run ───────────────────────────────
#    (DB_CONNECTION=sqlite is already the default in .env.example)
RUN cp .env.example .env \
    && php artisan key:generate --ansi \
    && mkdir -p database \
    && touch database/database.sqlite

# ── Generate Wayfinder TypeScript bindings from PHP routes/actions ────────────
RUN php artisan wayfinder:generate

# ── Build production frontend assets with Vite ────────────────────────────────
RUN npm run build


# =============================================================================
# Stage 2 — Production PHP-FPM
# =============================================================================
FROM php:8.3-fpm-alpine AS app

# System packages and PHP extensions required by Laravel
RUN apk add --no-cache \
    netcat-openbsd \
    libzip-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    icu-dev \
    oniguruma-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
    pdo_mysql \
    mbstring \
    zip \
    gd \
    intl \
    bcmath \
    opcache \
    pcntl \
    && apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del .phpize-deps

WORKDIR /var/www/html

# Copy application source from build context
# (vendor, node_modules, public/build, .env excluded via .dockerignore)
COPY --chown=www-data:www-data . .

# Overlay with built artifacts from Stage 1
COPY --from=builder --chown=www-data:www-data /app/vendor       ./vendor
COPY --from=builder --chown=www-data:www-data /app/public/build ./public/build

# Generate optimised autoloader
RUN composer dump-autoload --no-dev --optimize --classmap-authoritative

# PHP configuration overrides
COPY docker/php/local.ini /usr/local/etc/php/conf.d/local.ini

# Laravel writable directories
RUN chown -R www-data:www-data storage bootstrap/cache \
    && chmod -R 775 storage bootstrap/cache

# Startup script
COPY docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 9000
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
