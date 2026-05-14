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
# Stage 2 — Production PHP-FPM
#   Wayfinder TS bindings and frontend assets are pre-built on the CI runner
#   (deploy.yml) and included in the Docker build context via public/build/.
# =============================================================================
FROM php:8.4-fpm-alpine AS app

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
# (vendor, node_modules, .env excluded via .dockerignore;
#  public/build is pre-built on CI and included in context)
COPY --chown=www-data:www-data . .

# Production vendor from Stage 1 (no dev deps — smaller, secure)
COPY --from=vendor --chown=www-data:www-data /app/vendor ./vendor

# Composer binary needed for dump-autoload below
COPY --from=composer:2.8 /usr/bin/composer /usr/bin/composer

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
