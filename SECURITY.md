# Security

## Reporting

If you believe you found a security vulnerability in this **static site** (for example XSS via an unsanitized build step, or a secret accidentally committed), contact the maintainer through a **private** channel. Do not open a public issue with exploit details until the maintainer acknowledges receipt.

Deployed sites should expose **`/.well-known/security.txt`** (see `public/.well-known/security.txt` in this repo) with a `mailto:` contact line for scanners and good-faith reporters.

For the **desktop / local authoring application**, report through the same steward path you use for Phyllux or Novelmate Studio product security; this marketing repo is not the runtime for manuscript processing.

## Marketing claims vs security reports

Phyllux Technologies publishes a public [research status](https://phyllux.io/research-status.html) scorecard (**row five** for Novelmate Studio). That table is for **evidenced product and marketing claims**, not for coordinating vulnerability disclosure. Keep security findings off public issues until acknowledged, as above.

## Out of scope

Misconfiguration of your Cloudflare account, DNS, or Stripe Dashboard is operational risk, not a code defect in this tree.
