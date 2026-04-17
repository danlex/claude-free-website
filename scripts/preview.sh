#!/bin/bash
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE="$ROOT/website"

if [ ! -f "$WEBSITE/index.html" ]; then
  echo "No website found yet. Run /build first to generate your site."
  exit 1
fi

echo ""
echo "Preview server running at http://localhost:8000"
echo "Press Ctrl+C to stop"
echo ""
cd "$WEBSITE" && python3 -m http.server 8000
