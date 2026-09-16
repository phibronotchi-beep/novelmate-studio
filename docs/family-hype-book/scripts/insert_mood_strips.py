"""Insert mood-strip lines after every Nth #pagebreak() in feature atlas."""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PATH = ROOT / "typ" / "part-feature-atlas.typ"


def main() -> None:
    text = PATH.read_text(encoding="utf-8")
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    pb_count = 0
    fill_i = 3  # 01-02 used in manual opener if desired; start strips at 03
    every = 3

    for line in lines:
        out.append(line)
        if line.strip() == "#pagebreak()":
            pb_count += 1
            if pb_count % every == 0 and fill_i <= 16:
                out.append(
                    f'\n#mood-strip("../assets/raster/pdf_embed/nm-pdf-fill-{fill_i:02d}.jpg")\n'
                )
                fill_i += 1

    PATH.write_text("".join(out), encoding="utf-8")
    print(f"Inserted strips up to fill index {fill_i - 1}, pagebreaks counted {pb_count}")


if __name__ == "__main__":
    main()
