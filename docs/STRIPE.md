# Stripe integration (Novelmate Studio)

## Phase 0: first revenue without accounts

1. Create a **Stripe** account and complete business profile for the legal entity that will appear on statements (see [BRAND.md](../BRAND.md) for Phyllux vs standalone).
2. In Dashboard → **Product catalog**, create products for “Studio queue deposit” or “Pilot week” if you sell services first.
3. Use **Payment Links** (Dashboard → Payment links) for each SKU. Copy HTTPS URLs only; never paste secret keys into HTML.
4. Replace **mailto** or **waitlist** buttons on [public/pricing.html](../public/pricing.html) with `<a class="btn btn-primary" href="https://buy.stripe.com/...">` links.

## Phase 1: subscriptions and self serve cancel

1. Enable **Stripe Billing** with recurring prices for **Pro**.
2. Add a **Customer portal** configuration (cancel, update payment method).
3. After checkout, email receipts from Stripe; keep support@ address monitored.

## Try before buy (recommended guardrails)

| Guardrail | Why |
|-----------|-----|
| Calendar cap (for example 14 days) | Stops eternal free tier abuse |
| Usage cap (exports, pages, or GPU minutes) | Stops batch miners |
| Card required for trial | Optional; reduces fraud, adds friction |

Document the exact limits in **Terms** and in app behavior so they match.

## Customer Portal

Dashboard → **Billing** → **Customer portal** → enable subscription cancel and invoice history. Link from post purchase email or a signed “manage subscription” page when you add auth.

## Webhooks (later)

When you add a backend, verify `checkout.session.completed` and store `customer_id` mapped to license keys. Not required for Payment Links only on a static site.

## Environment variables

- **Cloudflare Workers** (if you add a thin proxy): `STRIPE_SECRET_KEY`, `STRIPE_WEBHOOK_SECRET`.
- **Never** commit these to git. Use Dashboard secrets or `wrangler secret`.

## Test mode

Use test keys and [Stripe test cards](https://stripe.com/docs/testing) until copy and refund policy are final.

## Honesty rail (Phyllux)

Marketing and tier copy on this site should stay consistent with Phyllux **[research status](https://phyllux.io/research-status.html)** (**row five** for Novelmate Studio). When Stripe product names or checkout descriptions change, update the public scorecard in the mothership repo in the same cadence when you can so customers see one story.
