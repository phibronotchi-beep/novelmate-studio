# Deploying novelmatestudio.com

**Live (2026-07-29):** Vercel team **phyllux** → project **`novelmate-studio`**  
Production aliases: https://novelmatestudio.com · https://novelmate-studio.vercel.app  
Registrar: **Porkbun** (nameservers stay on Porkbun).

## Current DNS (Porkbun)

Keep MX / SPF for Porkbun email forwarding.

| Type | Host | Answer |
|------|------|--------|
| ALIAS | `@` (apex) | `cname.vercel-dns.com` |
| CNAME | `*` | `cname.vercel-dns.com` |
| MX | `@` | `fwd1.porkbun.com` (10), `fwd2.porkbun.com` (20) |
| TXT | `@` | `v=spf1 include:_spf.porkbun.com ~all` |

Optional later: switch apex/www to the project-specific `*.vercel-dns-017.com` target from `vercel domains verify` (same pattern as phyllux.com). Not required while verify reports `ok` / verified.

## Deploy from this repo

Static site lives in **`public/`**.

```powershell
cd D:\WS\programs\Novelmate-repos\novelmate-studio
npx --yes vercel --prod --yes
```

`vercel.json` sets `outputDirectory` to `public`.

## GitHub (optional)

1. Create or connect **`phibronotchi-beep/novelmate-studio`**.
2. Push `main`, then `npx vercel git connect` if you want push-to-deploy.

## Stripe

See `docs/STRIPE.md`. Never commit secret keys. Payment Link URLs can go in `public/pricing.html` when ready.

## Legacy Phyllux URLs

If **`/bwurm.html`** or Novelmate stubs on phyllux.io should land here, update redirects in `phyllux-technologies-web` (see `docs/CLOUDFLARE_PAGES_EDGE.md` / mothership deploy notes).

## Honesty rail

Align marketing claims with Phyllux research status on phyllux.io when you rewrite copy.
