# Raster asset manifest: Family Hype PDF

**Branding:** **Novelmate Studio** only. Wordmark: `assets/logo/novelmate-studio-wordmark.svg`.

## Policy (no legacy names in pixels)

All figures embedded in the PDF are chosen so **no raster contains the old codename or its spelling**. Legacy marketing PNGs from older app bundles **are not used**.

- **Product workflow, cards, icons, trust, tech, proof:** `assets/raster/novelmate_pdf/nm-pdf-*.png` (generated for this PDF, **no text in frame**, mint or neutral studio mood).
- **Black and white documentary strips:** `nm-pdf-photo-01` … `06` replace older shelf and desk masters that contained logo typography.
- **Scene art:** `assets/raster/generated/family-hype-*.png` (custom scenes; generated with **no logos, no readable type**).
- **JPEG embeds for Typst:** `assets/raster/pdf_embed/*.jpg` from `scripts/optimize_rasters_for_pdf.py`.

## `novelmate_pdf/` stems (marketing and UI metaphors)

| Stem | Role |
|------|------|
| `nm-pdf-workflow-four-stage` | Four stage path, abstract, no labels |
| `nm-pdf-card-local-first` | Local custody metaphor |
| `nm-pdf-card-pipeline` | Pipeline glass panel |
| `nm-pdf-card-export` | Export formats metaphor |
| `nm-pdf-card-kdp` | Publishing stack mood |
| `nm-pdf-candle-today` | Progress or patience mood |
| `nm-pdf-ollama-desk` | Local model workstation |
| `nm-pdf-flourish-divider` | Section divider |
| `nm-pdf-accessibility-warm` | Inclusive desk |
| `nm-pdf-hands-writing-finish` | Finish line mood |
| `nm-pdf-dev-laptop-books` | Dev stack mood |
| `nm-pdf-trust-sanctuary-desk` | Trust and custody |
| `nm-pdf-journey-proof-map` | Proof path map, icons only |
| `nm-pdf-icon-create` … `icon-projects` | Square chrome icons, no letters |
| `nm-pdf-photo-01` … `06` | B&W documentary library or desk photography, no typography |

Regenerate JPEGs:

```powershell
python scripts/optimize_rasters_for_pdf.py
```
