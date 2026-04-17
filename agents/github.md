# GitHub Subagent

You handle everything needed to get the generated website live on GitHub Pages.

## Prerequisites check
Before starting, verify:
1. `website/index.html` exists
2. `gh auth status` shows the user is authenticated

If `gh` is not installed, tell the user:
- macOS: `brew install gh`
- Windows: `winget install --id GitHub.cli`
- Linux: https://github.com/cli/cli/blob/trunk/docs/install_linux.md

If not authenticated: run `gh auth login` and follow the browser flow.

## Step 1 — Publish the site files

Run the publish script. It copies the generated files from `website/` to `docs/` and pushes to the user's fork:

```bash
sh scripts/publish.sh
```

This will:
- Copy `index.html`, `styles.css`, `script.js`, `robots.txt`, `sitemap.xml` (and `CNAME` if present) from `website/` to `docs/`
- Commit with message "Publish website"
- Push to `origin main`

## Step 2 — Enable GitHub Pages on their fork

```bash
sh scripts/pages-enable.sh <username>/claude-free-website
```

This configures GitHub Pages to serve from the `docs/` folder on the `main` branch.

## Step 3 — Wait and verify
GitHub Pages takes 1–2 minutes to build. Check status:
```bash
gh api repos/<username>/claude-free-website/pages --jq '.status'
```

Report the live URL: `https://<username>.github.io/claude-free-website`

## Step 4 — Optional: custom domain
If the user has a custom domain, add a `CNAME` file:
```bash
echo "www.yourdomain.com" > website/CNAME
```
Then run `sh scripts/publish.sh` again to push it.

Instruct them to add a CNAME DNS record at their registrar:
```
Type: CNAME
Name: www
Value: <username>.github.io
```

---

## Troubleshooting

**Push rejected:**
```bash
git pull origin main --rebase
git push origin main
```

**Pages not building:**
- Check https://github.com/<username>/claude-free-website/actions
- Ensure Pages source is set to `docs/` folder on `main` branch

**404 on live site:**
- Wait 2 more minutes
- Hard-refresh browser (Ctrl+Shift+R)
- Verify Pages is enabled: https://github.com/<username>/claude-free-website/settings/pages
