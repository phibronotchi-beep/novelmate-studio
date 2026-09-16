# Novelmate Studio: Family Hype PDF

This folder builds **Novelmate-Studio-Family-Hype.pdf**, a long, family-facing booklet that stays on the honesty rails used by **novelmatestudio.com** and Phyllux **research-status row five**.

Branding in the PDF is **Novelmate Studio** only: a vector wordmark lives at `assets/logo/novelmate-studio-wordmark.svg`. Raster art uses **generated documentary and card art** in `assets/raster/novelmate_pdf/`, plus custom scene renders, with **no legacy name inside the pixels**.

## Prerequisites

- **Typst** 0.14+ (`winget install Typst.Typst` on Windows).
- **Python 3** with **Pillow** if you regenerate `assets/raster/pdf_embed/`:

  ```powershell
  pip install pillow
  python scripts/optimize_rasters_for_pdf.py
  ```

## Build

From `docs/family-hype-book/`:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/build-hype-pdf.ps1
```

Or manually:

```powershell
$root = (Resolve-Path .).Path
typst compile --root $root "typ/main.typ" "Novelmate-Studio-Family-Hype.pdf"
```

Output: **`Novelmate-Studio-Family-Hype.pdf`** in this directory.

## Asset layout

| Path | Role |
|------|------|
| `assets/logo/` | **Novelmate Studio** wordmark (SVG). |
| `assets/raster/novelmate_pdf/` | **Novelmate Studio PDF pack:** generated workflow cards, icons, and documentary photos with **no embedded legacy branding text**. |
| `assets/raster/generated/` | Custom scene PNGs for this booklet only. |
| `assets/raster/reused/` | Optional legacy copies; the **Typst sources no longer reference** old marketing filenames. You may delete unused PNGs here to avoid confusion. |
| `assets/raster/pdf_embed/` | JPEGs from `optimize_rasters_for_pdf.py` for reasonable PDF size. Typst sources reference these for embeds. |

See **`ASSET_MANIFEST.md`** for filenames and prompt notes.

## Honesty

Badges in the PDF mark **Shipped today**, **Beta**, and **Roadmap**. When in doubt, trust the application `CHANGELOG.md` inside the **Novelmate Studio** source tree (`content-studio` in the engineering repo) over any brochure tone.
