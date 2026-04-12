# EE5303 — I2C Master Controller

Báo cáo môn **Advanced Digital IC Design (EE5303)**: thiết kế **I2C Master Controller** theo kiến trúc tham chiếu **Lattice RD1139**. Nội dung văn bản trong LaTeX bám theo đề bài / tài liệu nhóm (`I2C-Master-Controller-Report.docx`).

## Cấu trúc LaTeX

| File | Mô tả |
|------|--------|
| `main.tex` | Preamble, trang bìa, mục lục, REFERENCES |
| `chapters/i2c_report_body.tex` | Toàn bộ chương nội dung báo cáo |
| `figures/i2c_from_docx/fig01.png` … `fig08.png` | Hình trích từ `I2C-Master-Controller-Report.docx` (đồng thứ tự Figure 1–8) |

Trong repo đã có đủ **`figures/i2c_from_docx/fig01.png` … `fig08.png`** (dùng chung cho LaTeX và slide HTML). **Trích từ Word:** sau khi sửa `Nhom5_I2C_Master_Controller (new).docx`, chạy `python scripts/extract_i2c_figures_from_docx.py` — script lấy 8 ảnh embed đầu tiên **đủ rộng** (bỏ qua logo nhỏ ở đầu), ghi đè các file `fig01`…`fig08`. Chỉ khi cần file đúng tên mà chưa có Word: `python scripts/generate_i2c_figure_placeholders.py` (Pillow).

## Biên dịch (local)

Cần **XeLaTeX** (dùng `fontspec` + `babel` tiếng Việt):

```text
xelatex main.tex
xelatex main.tex
```

## CI / PDF

Workflow GitHub Actions (`.github/workflows/build.yml`) biên dịch `main.tex` và đăng artifact **`EE5303_I2C_BaoCao.pdf`**, đồng thời đính kèm vào **Releases** khi push lên nhánh mặc định.

## GitHub Pages

Trang gốc `index.html` là **slide HTML** (cùng repo). PDF/LaTeX: các mục trên.

## Slide thuyết trình (HTML)

- **File vào**: `index.html` — **49 slide**, nội dung gồm: đặc tả RD1139 (theo `chapters/i2c_report_body.tex` + hình `figures/i2c_from_docx/fig01.png` … `fig08.png`), đối chiếu yêu cầu đề tài, Processor Interface, checklist chứng minh mô phỏng, mô phỏng/waveform, ref **SkyWater 130 nm** + **OpenLane** + core **OpenCores Wishbone** trong `refs/i2c_skywater_130nm-main`, slide so sánh RD1139 ↔ ref.
- **Chạy local**: trình duyệt chặn `fetch` khi mở file trực tiếp từ đĩa (`file://`). Cần HTTP server tại thư mục gốc repo, ví dụ: `python -m http.server 8000` rồi mở `http://localhost:8000/` (mặc định là `index.html`).
- **CSS**: `css/slides.css`, `css/presentation-tools.css`, `css/i2c-slides.css`. **JS**: `js/presentation.js` + `js/presentation-tools.js`.
- Sau khi tải xong slide: **xem tổng quan** (cuộn danh sách) hoặc nhấn nút **play** / phím **F** để **trình chiếu** — phím **→** / **Space**, **←**, **Esc**; chuột phải: laser, vẽ, nhảy slide, chương.
- **Hình báo cáo / waveform**: các slide trỏ tới `figures/i2c_from_docx/` (fig05–08 = waveform); file đã có trong repo. Có thể thêm ảnh chụp từ simulator nhóm trong PDF nếu muốn đối chiếu bổ sung.
