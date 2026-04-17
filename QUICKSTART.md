# Quickstart Guide

A more detailed walkthrough if you want step-by-step instructions with context.

---

## Before you start

**Install Claude Code** (one time):
```bash
npm install -g @anthropic-ai/claude-code
```

You'll need a Claude account — sign up free at [claude.ai](https://claude.ai).

**Install GitHub CLI** (needed to publish — one time):

- macOS: `brew install gh`
- Windows: `winget install --id GitHub.cli`
- Linux: [instructions](https://github.com/cli/cli/blob/trunk/docs/install_linux.md)

---

## Step 1 — Clone the repo

```bash
git clone https://github.com/YOUR_USERNAME/free-website.git
cd free-website
```

> **Tip:** Replace `YOUR_USERNAME` with the GitHub username of whoever owns this template repo.

---

## Step 2 — Start Claude Code

```bash
claude
```

Claude will load `CLAUDE.md` automatically and greet you as the Website Architect.

---

## Step 3 — Optionally, share your background

When Claude asks, you can share:
- Your LinkedIn URL
- Your current website
- A pasted bio or CV
- A company description

Claude will research everything and use it to write real content for your site.

---

## Step 4 — Answer the questions

Claude will ask about:
- Type of site (landing page, portfolio, personal, blog, company)
- What you do / what the site is for
- Color preferences or design vibe
- What sections you want

Take your time. You can say "not sure" and Claude will suggest sensible defaults.

---

## Step 5 — Preview your site

Once Claude generates the site, it starts a local server:

```
http://localhost:8000
```

Open that in your browser. If you want changes, just tell Claude.

---

## Step 6 — Create a GitHub account (if needed)

Go to [github.com/signup](https://github.com/signup) — it's free.
- Enter your email
- Create a password
- Verify your email address

---

## Step 7 — Authenticate the GitHub CLI

```bash
gh auth login
```

Follow the prompts — it opens your browser for a quick one-click authorization.

---

## Step 8 — Publish

Tell Claude: "I'm ready to publish." Or run `/publish`.

Claude will:
1. Run final validation checks
2. Create a GitHub repository
3. Push your website files
4. Enable GitHub Pages

---

## Step 9 — Your site is live

```
https://yourusername.github.io/your-repo-name
```

GitHub takes 1–2 minutes to build. Then your site is live.

---

## Optional: Custom domain

If you own a domain (e.g., from Namecheap or Google Domains):

1. Tell Claude: "I want to use my custom domain `www.yourdomain.com`"
2. Claude will add a `CNAME` file and tell you which DNS record to add
3. Add the DNS record at your registrar
4. Wait ~10 minutes for DNS to propagate

---

## Making changes later

Come back anytime:
```bash
cd free-website
claude
```

Say "I want to update my about section" or "Add a new project to my portfolio" and Claude will make the changes and re-publish.
