# Contributing

This repository is the **static marketing site** for Novelmate Studio. Keep changes small, mobile first, and honest about what is shipped versus roadmap (see `BRAND.md` and `docs/STRIPE.md`).

## Before you open a PR

1. Run `powershell -NoProfile -ExecutionPolicy Bypass -File scripts/check-links.ps1` from the repo root.
2. Do not commit Stripe keys, API tokens, or `.env` files. Use GitHub and Cloudflare secret stores only.
3. New raster images: follow Phyllux workspace rules when you optimize (WebP quality 82, sensible dimensions); see `public/assets/README.md` for `og:image`.

## Copy and claims

- Prefer language aligned with the product definition repo (`bookwyrm-definition-web`) when you change positioning.
- Do not upgrade roadmap items to “available today” without verification.

## Questions

Use **Contact** on the site or the maintainer workflow you already use for `phibronotchi-beep` org repos.
