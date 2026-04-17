# Free Website — Build & Deploy with Claude + GitHub Pages

Build a real, live website for free in ~15 minutes. No coding required.

**Result:** Your website live at `https://github.com/danlex/claude-free-website`

---

## What you need

- A computer (Mac, Windows, or Linux)
- A free [GitHub account](https://github.com/signup) — takes 2 minutes
- [Node.js 18+](https://nodejs.org) — needed to run Claude Code

---

## Step 1 — Create a free GitHub account

> Already have one? Skip to Step 2.

1. Go to [github.com/signup](https://github.com/signup)
2. Enter your email address and click **Continue**
3. Create a password (at least 8 characters)
4. Choose a username — this will appear in your site URL
5. Verify your email address (check your inbox)

![GitHub signup screenshot](docs/screenshots/01-github-signup.png)

---

## Step 2 — Install Claude Code

Open your terminal (Mac: press `Cmd+Space`, type `Terminal`, press Enter):

```bash
npm install -g @anthropic-ai/claude-code
```

Then log in with your Anthropic account:

```bash
claude login
```

A browser window will open — sign in or create a free account at [claude.ai](https://claude.ai).

![Claude login screenshot](docs/screenshots/02-claude-login.png)

---

## Step 3 — Install GitHub CLI

The GitHub CLI lets Claude publish your site automatically.

**Mac:**
```bash
brew install gh
```

**Windows:**
```bash
winget install --id GitHub.cli
```

**Linux:** [See installation guide](https://github.com/cli/cli/blob/trunk/docs/install_linux.md)

Then authenticate:

```bash
gh auth login
```

- Choose **GitHub.com**
- Choose **HTTPS**
- Choose **Login with a web browser**
- Press Enter — a browser opens, click **Authorize**

![GitHub CLI auth screenshot](docs/screenshots/03-gh-auth.png)

---

## Step 4 — Fork & clone this repo

**Fork first** (so you own a copy on GitHub):

1. Go to [github.com/danlex/claude-free-website](https://github.com/danlex/claude-free-website)
2. Click the **Fork** button (top right)
3. Click **Create fork**

Then clone your fork:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/claude-free-website.git
cd claude-free-website
```

Replace `YOUR_GITHUB_USERNAME` with your actual GitHub username.

![Fork and clone screenshot](docs/screenshots/04-fork-clone.png)

---

## Step 5 — Start Claude

```bash
claude
```

Claude will greet you as your **Website Architect** — ready to guide you.

![Claude Code greeting screenshot](docs/screenshots/05-claude-start.png)

---

## Step 6 — Share your background (optional)

Claude will ask if you have URLs or documents to share.

You can give it:
- Your LinkedIn profile URL
- Your existing website
- A text bio or CV (just paste it in)

Claude researches everything and uses it to write real content for your site — no Lorem Ipsum, no placeholders.

> **Tip:** The more you share, the better your site content will be.

![Research step screenshot](docs/screenshots/06-research.png)

---

## Step 7 — Answer the questions

Claude will ask:
- What type of site? *(landing page, portfolio, personal, blog, company)*
- What's it for? *(your name or company, what you do)*
- What sections? *(Claude suggests sensible defaults)*
- Color vibe? *(minimal / bold / warm / professional / creative)*

Just answer in plain English. There are no right or wrong answers.

![Questions screenshot](docs/screenshots/07-questions.png)

---

## Step 8 — Preview your site

Once Claude generates your site, it starts a local preview:

```
Open http://localhost:8000 in your browser
```

You'll see your real, complete website. If you want changes, just say so — Claude will update it immediately.

![Preview screenshot](docs/screenshots/08-preview.png)

---

## Step 9 — Publish to GitHub Pages

Tell Claude: **"I'm ready to publish"**

Claude will:
1. Run final validation checks
2. Create a repository on GitHub
3. Push your website files
4. Enable GitHub Pages

![Publishing screenshot](docs/screenshots/09-publishing.png)

---

## Step 10 — Your site is live!

```
https://github.com/danlex/claude-free-website
```

GitHub Pages takes **1–2 minutes** to build. Then your site is live, forever, for free.

![Live site screenshot](docs/screenshots/10-live.png)

---

## Optional: Connect a custom domain

If you own a domain (e.g., `www.yourbusiness.com`):

### Step A — Tell Claude your domain

```
I want to use my custom domain www.yourdomain.com
```

Claude will add a `CNAME` file and re-publish automatically.

### Step B — Add a DNS record at your registrar

Log in to wherever you bought your domain (Namecheap, Google Domains, GoDaddy, etc.) and add:

| Type | Name | Value |
|------|------|-------|
| CNAME | www | `yourusername.github.io` |

> **Using a root/apex domain** (e.g., `yourdomain.com` without `www`)? Add 4 A records instead:
>
> `185.199.108.153` · `185.199.109.153` · `185.199.110.153` · `185.199.111.153`

### Step C — Enable HTTPS in GitHub

1. Go to `https://github.com/yourusername/my-site/settings/pages`
2. Under **Custom domain**, enter your domain and click **Save**
3. Wait ~10 minutes for DNS to propagate
4. Check **Enforce HTTPS** when it appears

![Custom domain screenshot](docs/screenshots/11-custom-domain.png)

---

## Making changes later

```bash
cd claude-free-website
claude
```

Tell Claude what you want to change — it updates the files and re-publishes automatically.

---

## Available commands (inside Claude)

| Command | What it does |
|---------|-------------|
| `/architect` | Start or restart the guided flow |
| `/research` | Research a person or company from URLs or documents |
| `/build` | Generate (or regenerate) your website |
| `/preview` | View your site locally at http://localhost:8000 |
| `/publish` | Push to GitHub and go live |
| `/check` | Validate before publishing |

---

## What it can build

| Type | Description |
|------|-------------|
| Landing page | Hero, features, CTA — great for products or services |
| Portfolio | Projects grid, case studies — great for designers & developers |
| Personal / bio | About, links, contact — great for personal brand |
| Blog | Post list, clean reading layout |
| Company website | Services, team, testimonials, contact form |

## What it cannot build

- Apps with user accounts or logins
- E-commerce / checkout / payments
- Anything requiring a database or server-side code

---

## Cost breakdown

| Item | Cost |
|------|------|
| Hosting (GitHub Pages) | **Free** |
| This template | **Free** |
| Claude Code | **Free tier available** |
| Custom domain (optional) | ~$10–15/year |
| Contact forms (Formspree free) | **Free** (50/month) |

---

## License

MIT — fork it, customize it, use it for any project.

---

## Want to learn AI properly?

**[TVL Academy](https://academy.tvl.tech)** — professional AI training by TVL Technology.

A 9-hour program (3 × 3h sessions) designed for teams of 10–20 people:
- **Session 1:** Prompt Engineering — build a personalized prompt library using 18 techniques
- **Session 2:** Custom AI Assistant per Role — configure AI tools for each job function
- **Session 3:** AI Design Sprint — identify and prioritize automation opportunities

Includes 30 days of post-training support and EU AI Act compliance documentation.
Delivered onsite anywhere in Romania or remotely.

[Book a free 30-minute consultation →](https://academy.tvl.tech/en/)

---

Built with ❤️ by [TVL Technology](https://tvl.tech)
