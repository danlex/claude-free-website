Publish the website to GitHub Pages. Follow these steps:

1. Run `sh scripts/check.sh` — fix any errors before continuing.
2. Follow the SEO instructions in `agents/seo.md` to finalize meta tags, robots.txt, and sitemap.xml.
3. Ask the user for their GitHub username if not already known.
4. Run `sh scripts/publish.sh` to copy the site to docs/ and push.
5. Run `sh scripts/pages-enable.sh <username>/claude-free-website` to enable GitHub Pages.
6. Report the live URL: `https://<username>.github.io/claude-free-website`
