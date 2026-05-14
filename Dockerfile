# =============================================================================
# Stage 1 — Vendor: install production PHP dependencies only (no dev)
#   Uses the official Composer image which already has PHP + git + unzip.
# =============================================================================
FROM composer:2.8 AS vendor

WORKDIR /app

COPY composer.json composer.lock ./
RUN composer install \
    --no-dev \
    --no-interaction \
    --no-scripts \
    --prefer-dist \
    --ignore-platform-reqs


# =============================================================================
# Stage 2 — Builder: generate Wayfinder TS types + compile frontend assets
#   Installs ALL Composer deps (including dev) so that every service provider
#   and artisan command is available when Laravel bootstraps.
# =============================================================================
FROM php:8.3-cli-alpine AS builder

# Full set of extensions Laravel needs to bootstrap (bcmath, intl, zip, etc.)
# plus Node 20 + npm for the Vite build step.
RUN apk add --no-cache \
    nodejs npm git unzip \
    sqlite-dev oniguruma-dev \
    libzip-dev icu-dev \
    && docker-php-ext-install \
    pdo_sqlite mbstring bcmath intl zip

COPY --from=composer:2.8 /usr/bin/composer /usr/bin/composer

WORKDIR /app

# ── Install ALL Composer deps (dev included) so artisan commands are complete ─
COPY composer.json composer.lock ./
RUN composer install \
    --no-interaction \
    --no-scripts \
    --prefer-dist \
    --ignore-platform-reqs

# ── Install Node dependencies ─────────────────────────────────────────────────
COPY package.json package-lock.json ./
RUN npm ci

# ── Copy full application source ──────────────────────────────────────────────
COPY . .

# ── Bootstrap a minimal .env so artisan can run ───────────────────────────────
RUN cp .env.example .env \
    && php artisan key:generate --ansi \
    && mkdir -p database \
    && touch database/database.sqlite

# ── Register service providers (skipped by --no-scripts) ─────────────────────
RUN php artisan package:discover --ansi

# ── Generate Wayfinder TypeScript bindings from PHP routes/actions ────────────
RUN php artisan wayfinder:generate

# ── Build production frontend assets with Vite ────────────────────────────────
RUN npm run build


# =============================================================================
# Stage 3 — Production PHP-FPM
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

# Production vendor from Stage 1 (no dev deps — smaller, secure)
COPY --from=vendor --chown=www-data:www-data /app/vendor ./vendor

# Built frontend assets from Stage 2
COPY --from=builder --chown=www-data:www-data /app/public/build ./public/build

# Generate optimised autoloader with app source + production vendor
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
