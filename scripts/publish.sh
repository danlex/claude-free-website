#!/bin/bash
# Copies generated site from website/ to docs/ and pushes to GitHub Pages

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE="$ROOT/website"
DOCS="$ROOT/docs"

if [ ! -f "$WEBSITE/index.html" ]; then
  echo "ERROR: website/index.html not found — run /build first."
  exit 1
fi

echo "Copying site files to docs/..."
mkdir -p "$DOCS"

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

if git diff --cached --quiet; then
  echo "No changes to publish — docs/ is already up to date."
else
  git commit -m "Publish website"
fi

git push origin main

echo ""
echo "Done! GitHub Pages takes 1-2 minutes to update."
