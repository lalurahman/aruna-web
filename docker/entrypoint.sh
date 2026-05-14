#!/bin/sh
set -e

# =============================================================================
# Docker entrypoint for the PHP-FPM application container.
# Runs once at container start before handing off to php-fpm.
# =============================================================================

# ─── Wait for MySQL ───────────────────────────────────────────────────────────
if [ "${DB_CONNECTION:-mysql}" = "mysql" ]; then
    DB_HOST="${DB_HOST:-db}"
    DB_PORT="${DB_PORT:-3306}"
    echo "[entrypoint] Waiting for MySQL at ${DB_HOST}:${DB_PORT} ..."
    until nc -z "${DB_HOST}" "${DB_PORT}" 2>/dev/null; do
        printf '.'
        sleep 2
    done
    echo ""
    echo "[entrypoint] MySQL is ready."
fi

# ─── Run database migrations ─────────────────────────────────────────────────
echo "[entrypoint] Running migrations..."
php artisan migrate --force

# ─── Create storage symlink (public/storage → storage/app/public) ────────────
echo "[entrypoint] Setting up storage symlink..."
php artisan storage:link --force 2>/dev/null || true

# ─── Warm up Laravel caches ──────────────────────────────────────────────────
echo "[entrypoint] Caching config, routes, views..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "[entrypoint] Ready. Starting PHP-FPM..."
exec "$@"
