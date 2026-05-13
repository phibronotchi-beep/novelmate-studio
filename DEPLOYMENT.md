# Deploying novelmatestudio.com

## 1. Domain

Register **novelmatestudio.com** at your DNS or registrar. You do not need to move DNS to Cloudflare first, but using Cloudflare as DNS simplifies TLS and Pages.

## 2. GitHub

1. Create repository **`phibronotchi-beep/novelmate-studio`** (private or public).
2. Push this directory as the default branch (for example `main`).
3. No build step is required for the static HTML in the repo root. If you later add Astro or a bundler, update the Cloudflare build command and output directory.

## 3. Cloudflare Pages

1. In Cloudflare: **Workers and Pages** → **Create** → **Pages** → Connect to Git → select **`phibronotchi-beep/novelmate-studio`**.
2. **Build settings:**
   - **Framework preset:** None
   - **Build command:** leave empty (or `exit 0`)
   - **Build output directory:** `public` (where `index.html` and `css/` live)
3. Save and deploy. Note the `*.pages.dev` preview hostname.
4. **Custom domains:** add **novelmatestudio.com** and optionally **www.novelmatestudio.com**; set redirects so only one hostname is canonical (for example apex primary, `www` → apex).
5. Enable **Always Use HTTPS**.

## 4. Preview deployments

With the included GitHub Actions workflow, each push to `main` can deploy via Wrangler using **`CLOUDFLARE_API_TOKEN`**, **`CLOUDFLARE_ACCOUNT_ID`**, and **`CLOUDFLARE_PROJECT_NAME`** secrets. Alternatively rely on Cloudflare’s built in Git integration only and delete or disable the workflow if you prefer UI only deploys.

If you use **Wrangler** from CI, add these repository secrets:

| Secret | Purpose |
|--------|---------|
| `CLOUDFLARE_API_TOKEN` | API token with **Account** → **Cloudflare Pages** → **Edit** |
| `CLOUDFLARE_ACCOUNT_ID` | Account overview |
| `CLOUDFLARE_PROJECT_NAME` | Pages project name (for example `novelmate-studio`), passed to `wrangler pages deploy` |

The workflow file is [`.github/workflows/pages-deploy.yml`](.github/workflows/pages-deploy.yml). Adjust branch names if you do not use `main`.

## 5. Stripe (see also `docs/STRIPE.md`)

Store **Stripe** live or test keys only in **Cloudflare environment variables** for any future worker, or in **GitHub secrets** for CI. Never commit keys. Payment Links can be plain URLs in `pricing.html` once you create them in the Stripe Dashboard.

## 6. Legacy Phyllux URLs

If **`/bwurm.html`** or **`/bwurm-test-authors.html`** on phyllux.io should land on this site, update redirects in the Phyllux Cloudflare config (see `phyllux-technologies-web/docs/CLOUDFLARE_PAGES_EDGE.md`). That change is tracked in the mothership repo, not here.

## 7. Honesty rail (Phyllux)

Phyllux Technologies publishes **[research status](https://phyllux.io/research-status.html)** on phyllux.io. Novelmate Studio is scored on **row five**. When you change marketing copy here, line it up with that table so deploys stay consistent with the public evidence story.
