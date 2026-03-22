# EE5303 — I2C Master Controller

Báo cáo môn **Advanced Digital IC Design (EE5303)**: thiết kế **I2C Master Controller** theo kiến trúc tham chiếu **Lattice RD1139**. Nội dung văn bản trong LaTeX bám theo đề bài / tài liệu nhóm (`I2C-Master-Controller-Report.docx`).

## Cấu trúc LaTeX

| File | Mô tả |
|------|--------|
| `main.tex` | Preamble, trang bìa, mục lục, REFERENCES |
| `chapters/i2c_report_body.tex` | Toàn bộ chương nội dung báo cáo |

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
