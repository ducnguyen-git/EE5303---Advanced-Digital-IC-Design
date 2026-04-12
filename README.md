# EE5303 — I2C Master Controller

Báo cáo môn **Advanced Digital IC Design (EE5303)**: thiết kế **I2C Master Controller** theo kiến trúc tham chiếu **Lattice RD1139**. Nội dung văn bản trong LaTeX bám theo đề bài / tài liệu nhóm (`I2C-Master-Controller-Report.docx`).

## Cấu trúc LaTeX

| File | Mô tả |
|------|--------|
| `main.tex` | Preamble, trang bìa, mục lục, REFERENCES |
| `chapters/i2c_report_body.tex` | Toàn bộ chương nội dung báo cáo |
| `figures/i2c_from_docx/fig01.png` … `fig08.png` | Hình trích từ `I2C-Master-Controller-Report.docx` (đồng thứ tự Figure 1–8) |

Trong repo đã có đủ **`figures/i2c_from_docx/fig01.png` … `fig08.png`** (dùng chung cho LaTeX và slide HTML; fig05–08 là timing/waveform). Nếu cần tạo lại file đúng tên trên máy khác: `python scripts/generate_i2c_figure_placeholders.py` (Pillow).

## Biên dịch (local)

Cần **XeLaTeX** (dùng `fontspec` + `babel` tiếng Việt):

```text
xelatex main.tex
xelatex main.tex
```

## CI / PDF

Workflow GitHub Actions (`.github/workflows/build.yml`) biên dịch `main.tex` và đăng artifact **`EE5303_I2C_BaoCao.pdf`**, đồng thời đính kèm vào **Releases** khi push lên nhánh mặc định.

## GitHub Pages

Trang tĩnh tối giản: `index.html` (mô tả dự án và cách lấy PDF).

## Slide thuyết trình (HTML)

- **File vào**: `presentation_i2c.html` — **49 slide**, nội dung gồm: đặc tả RD1139 (theo `chapters/i2c_report_body.tex` + hình `figures/i2c_from_docx/fig01.png` … `fig08.png`), đối chiếu yêu cầu đề tài, Processor Interface, checklist chứng minh mô phỏng, mô phỏng/waveform, ref **SkyWater 130 nm** + **OpenLane** + core **OpenCores Wishbone** trong `refs/i2c_skywater_130nm-main`, slide so sánh RD1139 ↔ ref.
- **Chạy local**: phải dùng HTTP server (trình duyệt chặn `fetch` từ `file://`). Ví dụ tại thư mục gốc repo: `python -m http.server 8000` rồi mở `http://localhost:8000/presentation_i2c.html`, hoặc chạy `start_presentation_i2c.bat`.
- Sau khi tải xong slide, nhấn **Bắt đầu trình chiếu** — phím **→** / **Space** slide tiếp, **←** slide trước, **Esc** thoát; chuột phải: laser, vẽ, nhảy slide, danh sách chương.
- **Hình báo cáo / waveform**: các slide trỏ tới `figures/i2c_from_docx/` (fig05–08 = waveform); file đã có trong repo. Có thể thêm ảnh chụp từ simulator nhóm trong PDF nếu muốn đối chiếu bổ sung.
