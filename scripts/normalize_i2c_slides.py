"""
Normalize I2C slide HTML: first root div -> class includes i2c-slide; drop inline style on root.
Handles multiline opening <div ...>.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SECTIONS = ROOT / "sections_i2c"

OPEN_SLIDE = re.compile(
    r'^<div class="slide slide-container(?:\s+i2c-slide)?"\s*(?:\r?\n\s*)?(?:style="[^"]*")?\s*>',
    re.MULTILINE | re.DOTALL,
)


def patch_file(content: str) -> str:
    return OPEN_SLIDE.sub('<div class="slide slide-container i2c-slide">', content, count=1)


def main() -> None:
    for path in sorted(SECTIONS.glob("*.html")):
        raw = path.read_text(encoding="utf-8")
        new = patch_file(raw)
        if new != raw:
            path.write_text(new, encoding="utf-8")
            print("updated:", path.name)
        else:
            print("unchanged:", path.name)


if __name__ == "__main__":
    main()
