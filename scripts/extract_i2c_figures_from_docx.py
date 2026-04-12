"""
Trích ảnh từ file .docx (Nhom5...) theo thứ tự xuất hiện trong document.xml,
ghi ra figures/i2c_from_docx/fig01.png ... fig08.png.

Chạy từ thư mục gốc repo:
  python scripts/extract_i2c_figures_from_docx.py
"""
from __future__ import annotations

import io
import re
import zipfile
from pathlib import Path
from xml.etree import ElementTree as ET

try:
    from PIL import Image
except ImportError:
    Image = None  # type: ignore

ROOT = Path(__file__).resolve().parents[1]
DOCX = ROOT / "Nhom5_I2C_Master_Controller (new).docx"
OUT_DIR = ROOT / "figures" / "i2c_from_docx"
NUM_FIGS = 8
# Bo qua anh nho (logo/tieu de) truoc cac hinh bao cao: canh rong >= MIN_WIDTH px
MIN_FIG_WIDTH = 500


def load_rid_to_target(z: zipfile.ZipFile) -> dict[str, str]:
    rels_xml = z.read("word/_rels/document.xml.rels")
    root = ET.fromstring(rels_xml)
    ns = {"rel": "http://schemas.openxmlformats.org/package/2006/relationships"}
    out: dict[str, str] = {}
    for rel in root.findall("rel:Relationship", ns):
        rid = rel.get("Id")
        target = rel.get("Target")
        if rid and target:
            out[rid] = target.replace("\\", "/")
    return out


def embed_order_in_document(doc_bytes: bytes) -> list[str]:
    """Thứ tự rId xuất hiện trong document (chỉ lần đầu mỗi rId)."""
    text = doc_bytes.decode("utf-8", errors="replace")
    pattern = re.compile(r'r:embed="(rId\d+)"')
    order: list[str] = []
    seen: set[str] = set()
    for m in pattern.finditer(text):
        rid = m.group(1)
        if rid not in seen:
            seen.add(rid)
            order.append(rid)
    return order


def filter_report_figures(z: zipfile.ZipFile, image_paths: list[tuple[str, str]]) -> list[tuple[str, str]]:
    """Bo cac embed qua nho (logo) — giu thu tu con lai."""
    if Image is None:
        return image_paths
    out: list[tuple[str, str]] = []
    for rid, internal in image_paths:
        data = z.read(internal)
        suf = Path(internal).suffix.lower()
        if suf != ".png":
            out.append((rid, internal))
            continue
        try:
            im = Image.open(io.BytesIO(data))
            w, h = im.size
        except OSError:
            out.append((rid, internal))
            continue
        if w < MIN_FIG_WIDTH:
            continue
        out.append((rid, internal))
    return out


def main() -> None:
    if not DOCX.is_file():
        raise SystemExit(f"Missing docx: {DOCX}")

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    with zipfile.ZipFile(DOCX, "r") as z:
        rid_to_target = load_rid_to_target(z)
        doc_xml = z.read("word/document.xml")
        order = embed_order_in_document(doc_xml)

        image_paths: list[tuple[str, str]] = []
        for rid in order:
            target = rid_to_target.get(rid)
            if not target:
                continue
            # Chỉ lấy ảnh trong media (bỏ qua OLE, v.v.)
            if not target.startswith("media/"):
                continue
            internal = "word/" + target
            if internal not in z.namelist():
                continue
            lower = target.lower()
            if not any(lower.endswith(ext) for ext in (".png", ".jpeg", ".jpg", ".gif", ".bmp", ".tif", ".tiff", ".emf", ".wmf")):
                continue
            image_paths.append((rid, internal))

    with zipfile.ZipFile(DOCX, "r") as z:
        image_paths = filter_report_figures(z, image_paths)

    if len(image_paths) < NUM_FIGS:
        raise SystemExit(
            f"Only found {len(image_paths)} report-sized images after filtering (need >= {NUM_FIGS}). Check docx."
        )

    print(f"Using {len(image_paths)} images (skipped small/logo); writing {NUM_FIGS} -> {OUT_DIR.relative_to(ROOT)}")

    with zipfile.ZipFile(DOCX, "r") as z:
        for i in range(NUM_FIGS):
            rid, internal = image_paths[i]
            data = z.read(internal)
            suffix = Path(internal).suffix.lower()
            if suffix in (".png",):
                out_name = f"fig{i + 1:02d}.png"
                (OUT_DIR / out_name).write_bytes(data)
                print(f"  OK {out_name} <- {internal} ({rid})")
            elif suffix in (".jpg", ".jpeg", ".gif", ".bmp", ".tif", ".tiff"):
                if Image is None:
                    raise SystemExit("Need Pillow: pip install Pillow")
                im = Image.open(io.BytesIO(data))
                if im.mode not in ("RGB", "RGBA"):
                    im = im.convert("RGB")
                elif im.mode == "RGBA":
                    bg = Image.new("RGB", im.size, (255, 255, 255))
                    bg.paste(im, mask=im.split()[3])
                    im = bg
                out_path = OUT_DIR / f"fig{i + 1:02d}.png"
                im.save(out_path, "PNG", optimize=True)
                print(f"  OK {out_path.name} <- {internal} (converted to PNG)")
            else:
                print(f"  SKIP {suffix} at {internal} (manual conversion needed)")


if __name__ == "__main__":
    main()
