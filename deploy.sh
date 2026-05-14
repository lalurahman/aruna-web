#!/usr/bin/env bash
# =============================================================================
# deploy.sh — manual re-deploy helper (for use WITHOUT CI/CD)
#
# Builds the Docker image locally on the VPS and restarts containers.
# If you have CI/CD configured (GitHub Actions), deployments happen
# automatically on push to main — you don't need to run this manually.
#
# Usage (run from project root on the VPS):
#   git pull && bash deploy.sh
# =============================================================================
set -e

echo "╔══════════════════════════════════════════╗"
echo "║        Aruna Web — Docker Deploy         ║"
echo "╚══════════════════════════════════════════╝"

# ─── 1. Build the new Docker image ────────────────────────────────────────────
#        Includes: composer install + wayfinder:generate + npm run build
echo ""
echo "==> Building Docker image..."
docker compose build app

# ─── 2. Remove stale public assets volume ─────────────────────────────────────
#        It will be repopulated from the new image on next start.
#        Database (aruna_web_db) and storage (aruna_web_storage) are NOT touched.
echo ""
echo "==> Removing stale public assets volume..."
docker volume rm aruna_web_public 2>/dev/null && echo "   Removed." || echo "   Volume not found, skipping."

# ─── 3. Restart app and nginx (keep db and redis running) ─────────────────────
echo ""
echo "==> Restarting app..."
docker compose up -d --no-deps app
sleep 5
docker compose up -d --no-deps nginx

# ─── 4. Clean up dangling images ──────────────────────────────────────────────
docker image prune -f

# ─── 5. Show logs ─────────────────────────────────────────────────────────────
echo ""
echo "==> Tailing app logs (Ctrl+C to exit)..."
docker compose logs --follow --tail=50 app
