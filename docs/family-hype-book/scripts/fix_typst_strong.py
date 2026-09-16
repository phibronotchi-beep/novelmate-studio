"""One-off: convert `- **Label:**` list markers to Typst `- #strong[Label:]`."""
import re
import sys
from pathlib import Path

TARGET = Path(__file__).resolve().parent.parent / "typ" / "part-feature-atlas.typ"


def main() -> None:
    p = Path(sys.argv[1]) if len(sys.argv) > 1 else TARGET
    t = p.read_text(encoding="utf-8")
    before = t.count("**")
    # List lines only: avoid touching prose ** if any
    t2 = re.sub(r"^- \*\*([^*\n]+)\*\*", r"- #strong[\1]", t, flags=re.MULTILINE)
    p.write_text(t2, encoding="utf-8")
    print(p, "stars before:", before, "after:", t2.count("**"))


if __name__ == "__main__":
    main()
