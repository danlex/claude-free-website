#!/bin/bash
# Copies generated site from website/ to docs/ and pushes to GitHub Pages
set -e

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE="$ROOT/website"
DOCS="$ROOT/docs"

if [ ! -f "$WEBSITE/index.html" ]; then
  echo "ERROR: website/index.html not found — run /build first."
  exit 1
fi

echo "Copying site files to docs/..."
mkdir -p "$DOCS"

# Copy web files (not markdown planning files)
for f in index.html styles.css script.js robots.txt sitemap.xml CNAME; do
  if [ -f "$WEBSITE/$f" ]; then
    cp "$WEBSITE/$f" "$DOCS/$f"
    echo "  Copied $f"
  fi
done

echo ""
echo "Committing and pushing..."
cd "$ROOT"
git add docs/
git commit -m "Publish website"
git push

echo ""
echo "Done! GitHub Pages takes 1-2 minutes to update."
