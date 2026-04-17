#!/bin/bash
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WEBSITE="$ROOT/website"
ERRORS=0
WARNINGS=0

err()  { echo "  ERROR: $1"; ERRORS=$((ERRORS + 1)); }
warn() { echo "  WARN:  $1"; WARNINGS=$((WARNINGS + 1)); }
ok()   { echo "  OK:    $1"; }

echo "Running pre-publish checks..."
echo ""

if [ -f "$WEBSITE/index.html" ]; then
  ok "index.html found"
else
  err "website/index.html not found — run /build first"
fi

for p in "Your Name Here" "your@email.com" "Your Company Name" "TODO" "PLACEHOLDER" "Lorem ipsum" "YOUR_FORM_ID" "YOUR_NAME" "yourname"; do
  if grep -ril "$p" "$WEBSITE/" --include="*.html" --include="*.css" 2>/dev/null | grep -q .; then
    warn "Found placeholder text: \"$p\""
  fi
done

if [ -f "$WEBSITE/index.html" ]; then
  TITLE=$(grep -o '<title>[^<]*</title>' "$WEBSITE/index.html" 2>/dev/null | sed 's/<[^>]*>//g')
  if [ -n "$TITLE" ] && [ "$TITLE" != "My Website" ]; then
    ok "Title: $TITLE"
  else
    warn "Generic or missing <title>"
  fi

  if grep -q 'name="description"' "$WEBSITE/index.html" 2>/dev/null; then
    ok "Meta description found"
  else
    warn "No meta description (SEO)"
  fi
fi

echo ""
if [ "$ERRORS" -gt 0 ]; then
  echo "Result: $ERRORS error(s), $WARNINGS warning(s). Fix errors before publishing."
  exit 1
else
  echo "Result: Ready to publish ($WARNINGS warning(s))"
  exit 0
fi
