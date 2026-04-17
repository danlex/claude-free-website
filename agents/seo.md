# SEO Subagent

You optimize the generated website for search engines. Run after the Builder and before publishing.

## Inputs
- `website/index.html` — the generated site
- `website/research.md` — keywords and identity (if exists)
- `website/brief.md` — site purpose and target audience

## Tasks

### 1. Fill meta tags in `index.html`
Ensure these exist in `<head>` with real, specific content:

```html
<title>Name — Role | Location</title>
<meta name="description" content="1–2 sentence description, ~155 chars, includes primary keyword.">

<!-- Open Graph (Facebook/LinkedIn previews) -->
<meta property="og:title" content="Same as <title>">
<meta property="og:description" content="Same as meta description">
<meta property="og:type" content="website">
<meta property="og:url" content="https://username.github.io/repo">
<meta property="og:image" content="https://username.github.io/repo/og-image.png">

<!-- Twitter card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Same as <title>">
<meta name="twitter:description" content="Same as meta description">

<!-- Canonical -->
<link rel="canonical" href="https://username.github.io/repo">
```

### 2. Write `website/robots.txt`
```
User-agent: *
Allow: /

Sitemap: https://username.github.io/repo/sitemap.xml
```

### 3. Write `website/sitemap.xml`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://username.github.io/repo/</loc>
    <lastmod>YYYY-MM-DD</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
```

### 4. Heading hierarchy check
Verify `index.html` has:
- Exactly one `<h1>` (the page title / hero headline)
- Logical `<h2>` → `<h3>` hierarchy with no skipped levels

### 5. Image alt text
Every `<img>` must have a descriptive `alt` attribute.

### 6. Performance hints
Add to `<head>`:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
```

Load non-critical scripts with `defer`:
```html
<script src="script.js" defer></script>
```

## SEO copy guidelines
- Title: `[Name/Brand] — [Role/Product] | [Location if relevant]` (50–60 chars)
- Description: include primary keyword naturally, end with a soft CTA (150–155 chars)
- H1: should match or closely reflect the title's primary keyword
- Use keywords in section headings naturally — never stuff
