# Novelmate Studio (marketing site)

Public marketing and conversion site for **Novelmate Studio**, local first AI assisted fiction tooling. Intended to live at **https://novelmatestudio.com** on **Cloudflare Pages**, with source in GitHub under **`phibronotchi-beep/novelmate-studio`** (create the remote and push this tree when ready).

## Repo layout

| Path | Purpose |
|------|---------|
| `public/index.html` | Home |
| `public/pricing.html` | Tiers and try before buy framing |
| `public/faq.html` | AI disclosure pointers, capacity |
| `public/privacy.html` | Privacy policy stub |
| `public/terms.html` | Terms stub |
| `public/contact.html` | Contact |
| `public/css/site.css` | Mobile first shared styles |
| `docs/STRIPE.md` | Stripe phases and tier copy |
| `BRAND.md` | Naming and Phyllux vs standalone variants |
| `DEPLOYMENT.md` | Domain, Pages, DNS, secrets |
| `CONTRIBUTING.md` | PR and hygiene expectations |
| `LICENSE` | Proprietary; all rights reserved |
| `SECURITY.md` | How to report issues safely |

## Local checks

From repo root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/check-links.ps1
```

Confirms relative `href` targets under `public/` exist.

## Before first production deploy

1. Register **novelmatestudio.com** at your registrar and wire DNS per `DEPLOYMENT.md`.
2. Add **`public/assets/og-1200x630.webp`** (quality 82, max width 1920 per workspace image rules) and wire `og:image` in each HTML head, or keep title or description only until the asset exists.
3. Replace Privacy and Terms stubs with counsel reviewed text when you take payments.

See also **`CONTRIBUTING.md`** and **`SECURITY.md`**.

## Application code

The desktop or local first product continues to live under **`CLAWWORK/BookWyrm/content-studio/`** in the main workspace until you split it; this repo is the **public site** only.
