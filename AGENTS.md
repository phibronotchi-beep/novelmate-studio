# AGENTS.md — Novelmate Studio (site repo)

## What this repo is

Static **marketing and conversion** site for **Novelmate Studio**. Not the Python or desktop application; that remains in the Phyllux workspace under `D:/Novelmate/novelmate-studio/Novelmate/content-studio/` until migrated.

Contributor norms: [`CONTRIBUTING.md`](CONTRIBUTING.md). Security reporting: [`SECURITY.md`](SECURITY.md). License: [`LICENSE`](LICENSE).

## Conventions

- **Mobile first:** default CSS for narrow viewports; use `min-width` media queries for larger layouts.
- **Touch targets:** interactive controls at least about 44×44 px effective hit area.
- **Claim honesty:** label **Roadmap** vs **Available today** on pricing. Do not promise hosted multi tenant manuscript storage unless it is built and documented.
- **Phyllux evidence:** public claims for this lane are also tracked on Phyllux [research status](https://phyllux.io/research-status.html) (**row five**). When site copy changes materially, align or flag updates to that table in the mothership repo.
- **Images:** before committing raster heroes or `og:image`, follow Phyllux workspace rules (WebP quality 82, dimension caps). Until `assets/og-1200x630.webp` exists, omit `og:image` or use a verified absolute URL.
- **Links:** run `powershell -NoProfile -ExecutionPolicy Bypass -File scripts/check-links.ps1` from repo root before deploy.

## Product definition

Authoritative product and proof bar language lives in the workspace repo **`novelmate-definition-web`** (`DEFINITION.md`, `SERVICES_AND_MARKETING_FRAMING.md`). Refresh site copy when those documents change materially.

## Stripe

Operational steps and tier copy live in [`docs/STRIPE.md`](docs/STRIPE.md). Replace placeholder checkout links in `pricing.html` after you create Payment Links or Billing links in Stripe.
