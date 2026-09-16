#!/usr/bin/env python3
"""Resize raster assets for PDF embedding (screen, email friendly)."""
from __future__ import annotations

import sys
from pathlib import Path

try:
    from PIL import Image
except ImportError:
    print("Install Pillow: pip install pillow", file=sys.stderr)
    sys.exit(1)

MAX_W = 1400
QUALITY = 86
ROOT = Path(__file__).resolve().parent.parent
SRC_DIRS = [
    ROOT / "assets" / "raster" / "generated",
    ROOT / "assets" / "raster" / "novelmate_pdf",
]
OUT = ROOT / "assets" / "raster" / "pdf_embed"


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    count = 0
    for src_dir in SRC_DIRS:
        if not src_dir.exists():
            continue
        for p in sorted(src_dir.glob("*.png")):
            im = Image.open(p)
            im = im.convert("RGB")
            w, h = im.size
            if w > MAX_W or h > MAX_W:
                if w >= h:
                    nh = int(h * (MAX_W / w))
                    im = im.resize((MAX_W, nh), Image.Resampling.LANCZOS)
                else:
                    nw = int(w * (MAX_W / h))
                    im = im.resize((nw, MAX_W), Image.Resampling.LANCZOS)
            out = OUT / (p.stem + ".jpg")
            im.save(out, format="JPEG", quality=QUALITY, optimize=True)
            count += 1
            print(out.name, im.size)
    print(f"Wrote {count} JPEGs to {OUT}")


if __name__ == "__main__":
    main()
