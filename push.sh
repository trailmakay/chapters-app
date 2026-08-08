#!/usr/bin/env bash
# Chapters — commit & push (Render auto-redeploys on push to main).
# Usage:  ./push.sh "your commit message"
set -e
cd "$(dirname "$0")"
MSG="${1:-Update Chapters}"
git add -A
git commit -m "$MSG" || { echo "Nothing to commit."; exit 0; }
git push
echo "Pushed. Render is redeploying — live in ~30s."
