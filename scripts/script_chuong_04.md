# Script Chương 4 (Phần 4) — ASIC Sky130nm & LibreLane (minh họa flow)

> Bám theo `sections_i2c/04_*`. Lưu ý: phần này mang tính **minh họa pipeline ASIC** với RTL RD1139, nhằm chứng minh khả năng đi đến sign-off bằng tool open-source.

## 04_00 — `04_00_chapter.html` — Mở chương 4
### Mục đích slide
- Giới thiệu “đường ống vật lý” (physical flow): PDK → PnR → sign-off DRC/LVS/STA/Antenna.

### Lời nói (script)
- Sang **chương 4**, em trình bày phần **minh họa triển khai ASIC** với **Sky130nm** và **LibreLane**: từ cấu hình, chạy flow, đến các kiểm tra sign-off và kết quả pass.

### Câu chuyển
- Đầu tiên là bối cảnh: PDK Sky130 và mục tiêu minh họa khi chạy LibreLane.

## 04_01 — `04_01_config_json.html` — Sky130nm & LibreLane (config/goal)
### Mục đích slide
- Chốt: dùng PDK nào, top module nào, clock nào, và mục tiêu minh họa là gì.

### Lời nói (script)
- Dùng thư viện/PDK **SkyWater sky130nm** (PDK mở) phù hợp luồng **LibreLane**.
- Top module: `i2c_master_controller_top`, clock `i_clk`, tần số hệ thống **32 MHz**.
- Mục tiêu: chứng minh core I2C master **tổng hợp được** và đi qua pipeline:
  - floorplan → placement → CTS → routing → sign-off (STA/DRC/LVS/antenna).

### Câu chuyển
- Sau khi chạy flow, ta có thể xem layout trực quan trên KLayout.

## 04_02 — `04_02_klayout_gui.html` — Layout trên KLayout GUI
### Mục đích slide
- Minh họa “kết quả vật lý” dạng GDSII và cách quan sát bằng GUI.

### Lời nói (script)
- Đây là giao diện **KLayout** hiển thị layout (GDSII) của `i2c_master_controller_top`.
- Ý nghĩa: từ RTL đã ra được layout vật lý; có thể zoom/inspect các lớp kim loại, cell placement, IO, v.v.

### Câu chuyển
- Còn ở mức PnR, OpenROAD GUI giúp quan sát routing map và thông số vật lý.

## 04_03 — `04_03_openroad_gui.html` — Routing trên OpenROAD GUI
### Mục đích slide
- Minh họa bước định tuyến và khả năng quan sát trực quan routing.

### Lời nói (script)
- OpenROAD GUI cho phép xem **routing map** và cấu trúc PnR của thiết kế.
- Đây là bằng chứng thiết kế đi được đến bước routing, không chỉ dừng ở synthesis.

### Câu chuyển
- Slide sau liệt kê các bước chạy LibreLane để thấy pipeline đầy đủ (nhiều step).

## 04_04 — `04_04_run_steps.html` — Run steps LibreLane
### Mục đích slide
- Chứng minh flow thực sự chạy qua nhiều công đoạn (placement, post-PnR, antenna, sign-off…).

### Lời nói (script)
- LibreLane có hơn **75 step**: từ placement, CTS, routing, đến các bước kiểm tra.
- Mục đích: thể hiện rõ đây là “pipeline ASIC” hoàn chỉnh.

### Câu chuyển
- Tiếp theo em lần lượt nhắc 3 nhóm sign-off: **DRC**, **LVS**, **STA**.

## 04_06 — `04_06_drc_flow.html` — DRC flow (Design Rule Check)
### Mục đích slide
- Nêu input/output của DRC và cách debug lỗi DRC.

### Lời nói (script)
- **Input**: layout **GDSII** + luật thiết kế từ **PDK**.
- **Checker**: KLayout/Magic chạy DRC, xuất log và report (XML).
- Nếu có lỗi: nạp XML vào KLayout để hiển thị marker tại tọa độ lỗi, phục vụ debug.

### Câu chuyển
- Sau khi DRC, bước quan trọng là **LVS**: layout có khớp với schematic/netlist hay không.

## 04_07 — `04_07_lvs_flow.html` — LVS flow (Layout vs Schematic)
### Mục đích slide
- Giải thích quá trình trích xuất netlist từ layout và so sánh với netlist logic.

### Lời nói (script)
- Magic trích xuất netlist vật lý (SPICE) từ GDSII + PDK.
- Netgen so sánh netlist vật lý với netlist logic (Verilog).
- Kết quả là report xác nhận match/mismatch.

### Câu chuyển
- Hai slide sau là minh họa báo cáo LVS tóm tắt và kết luận “match”.

## 04_08 — `04_08_lvs_summary_1.html` — LVS summary (phần 1)
### Mục đích slide
- Minh họa mapping port/so sánh hai phía.

### Lời nói (script)
- Bên trái là layout (GDS), bên phải là schematic; ví dụ các port top module để thấy đối chiếu tương ứng.

### Câu chuyển
- Slide tiếp theo chốt kết luận LVS.

## 04_09 — `04_09_lvs_summary_2.html` — LVS summary (phần 2)
### Mục đích slide
- Chốt thông điệp: layout và schematic khớp.

### Lời nói (script)
- Kết luận báo cáo: **Layout vs Schematic khớp hoàn toàn** (match).

### Câu chuyển
- Ngoài đúng kết nối, thiết kế phải đúng thời gian: bước tiếp theo là **STA**.

## 04_10 — `04_10_sta_check.html` — STA flow
### Mục đích slide
- Nêu pipeline STA: SPEF parasitic → OpenSTA → report setup/hold.

### Lời nói (script)
- OpenRCX trích xuất parasitic R/C từ layout (DEF) tạo **SPEF**.
- OpenSTA dùng netlist + SPEF + constraints (SDC) + thư viện PDK để tính delay, kiểm tra setup/hold.
- Xuất report và SDF để đánh giá đạt timing hay có violation.

### Câu chuyển
- Slide sau là hình minh họa báo cáo STA summary.

## 04_11 — `04_11_sta_summary.html` — STA summary
### Mục đích slide
- Minh họa output báo cáo timing.

### Lời nói (script)
- Đây là các báo cáo STA summary (2 phần) thể hiện trạng thái timing theo constraints.

### Câu chuyển
- Để chặt hơn, sign-off thường chạy multi-corner; hai slide sau minh họa log/report và ý nghĩa IPVT.

## 04_12 — `04_12_ipvt_corner_logs_reports.html` — IPVT corner logs
### Mục đích slide
- Cho thấy mỗi corner sinh ra các log/report riêng.

### Lời nói (script)
- Đây là danh sách log/report trong một corner cụ thể (ví dụ nom_tt_025C_1v80) để minh họa cách tổ chức kết quả.

### Câu chuyển
- Slide sau giải thích ý nghĩa các tham số IPVT.

## 04_13 — `04_13_ipvt_corner_explain.html` — Ý nghĩa IPVT
### Mục đích slide
- Giải thích I/P/V/T trong multi-corner.

### Lời nói (script)
- IPVT là viết tắt của Interconnect/Process/Voltage/Temperature: các biến thiên dùng để phân tích timing/độ tin cậy.

### Câu chuyển
- Cuối cùng em chốt trạng thái pass sign-off.

## 04_14 — `04_14_pass_signoff.html` — Pass sign-off
### Mục đích slide
- Kết luận flow minh họa: thiết kế đạt trạng thái pass sign-off.

### Lời nói (script)
- Slide này tổng hợp trạng thái **pass sign-off**: đạt các kiểm tra DRC/LVS/STA (và các check liên quan).
- Đây là minh họa rằng RTL có thể đi đến mức “sẵn sàng tape-out” trong flow open-source.

### Câu chốt chương 4
- Chương 4 chứng minh năng lực triển khai: từ RTL → layout và đi qua các bước sign-off cơ bản trong LibreLane/Sky130.

