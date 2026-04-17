#!/bin/bash
# Usage: sh scripts/pages-enable.sh <owner/repo>
REPO="${1:-}"

if [ -z "$REPO" ]; then
  echo "Usage: sh scripts/pages-enable.sh owner/repo"
  exit 1
fi

OWNER=$(echo "$REPO" | cut -d/ -f1)
REPONAME=$(echo "$REPO" | cut -d/ -f2)

if ! command -v gh &>/dev/null; then
  echo ""
  echo "GitHub CLI not found. Enable Pages manually:"
  echo "1. Go to https://github.com/$REPO/settings/pages"
  echo "2. Under Source, select 'Deploy from a branch'"
  echo "3. Choose 'main' branch and '/ (root)'"
  echo "4. Click Save"
  exit 0
fi

echo "Enabling GitHub Pages for $REPO..."

gh api "repos/$REPO/pages" --method POST \
  -f "source[branch]=main" \
  -f "source[path]=/" 2>/dev/null \
|| gh api "repos/$REPO/pages" --method PUT \
  -f "source[branch]=main" \
  -f "source[path]=/" 2>/dev/null \
|| true

echo ""
echo "GitHub Pages enabled!"
echo "Live at: https://${OWNER}.github.io/${REPONAME}"
echo "(Takes 1-2 minutes to appear)"
