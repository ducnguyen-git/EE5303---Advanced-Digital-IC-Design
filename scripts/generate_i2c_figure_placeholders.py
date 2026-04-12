"""Tạo PNG placeholder fig01..fig08 trong figures/i2c_from_docx/ (thay bằng ảnh trích Word khi có)."""
from __future__ import annotations

from pathlib import Path

try:
    from PIL import Image, ImageDraw, ImageFont
except ImportError as e:
    raise SystemExit("Cần Pillow: pip install Pillow") from e

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "figures" / "i2c_from_docx"

LABELS = {
    1: "Block diagram — I2C Master",
    2: "RTL functional blocks",
    3: "Bus Control FSM",
    4: "Master Control FSM",
    5: "Timing read / write",
    6: "Master transmit",
    7: "Master receive",
    8: "Repeated START",
}


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    w, h = 1280, 720
    for n, title in LABELS.items():
        img = Image.new("RGB", (w, h), color=(15, 23, 42))
        draw = ImageDraw.Draw(img)
        try:
            font_lg = ImageFont.truetype("arial.ttf", 36)
            font_sm = ImageFont.truetype("arial.ttf", 22)
        except OSError:
            font_lg = ImageFont.load_default()
            font_sm = font_lg
        t1 = f"Figure 2.{n} (placeholder)"
        t2 = title
        t3 = "Thay bằng ảnh trích từ báo cáo Word / LaTeX"
        tw1 = draw.textlength(t1, font=font_lg) if hasattr(draw, "textlength") else len(t1) * 18
        tw2 = draw.textlength(t2, font=font_sm)
        tw3 = draw.textlength(t3, font=font_sm)
        draw.text(((w - tw1) / 2, h / 2 - 70), t1, fill=(226, 232, 240), font=font_lg)
        draw.text(((w - tw2) / 2, h / 2 - 10), t2, fill=(148, 163, 184), font=font_sm)
        draw.text(((w - tw3) / 2, h / 2 + 35), t3, fill=(100, 116, 139), font=font_sm)
        out = OUT / f"fig{n:02d}.png"
        img.save(out, "PNG", optimize=True)
        print("Wrote", out.relative_to(ROOT))


if __name__ == "__main__":
    main()
