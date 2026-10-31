#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
ENV_EXAMPLE="${ROOT_DIR}/.env.example"

cat > "${ENV_EXAMPLE}" <<'EOF'
# Auto-generated for CI builds.
# This file ensures the Secrets Gradle Plugin can initialize in environments
# where a real .env.example is not checked into the repository.
# Replace these values with real secrets when needed.

FIREBASE_PROJECT_ID=
FIREBASE_API_KEY=
FIREBASE_AUTH_DOMAIN=
FIREBASE_STORAGE_BUCKET=
FIREBASE_MESSAGING_SENDER_ID=
FIREBASE_APP_ID=
FIREBASE_MEASUREMENT_ID=
GOOGLE_MAPS_API_KEY=
EOF

echo "Created ${ENV_EXAMPLE}"
