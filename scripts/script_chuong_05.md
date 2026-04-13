# Script Chương 5 (Phần 5) — Kết luận, hạn chế, hướng phát triển, tài liệu, cảm ơn

> Bám theo `sections_i2c/05_*`. Mục tiêu: chốt lại đóng góp chính, nêu hạn chế trung thực và hướng mở rộng hợp lý.

## 05_00 — `05_00_chapter.html` — Mở chương 5
### Mục đích slide
- Chuyển sang phần kết: tóm tắt kết quả, hạn chế/hướng phát triển, tài liệu tham khảo, cảm ơn.

### Lời nói (script)
- Sang **chương 5**, em tổng kết những gì đã làm được, nêu hạn chế và hướng phát triển, kèm tài liệu tham khảo.

### Câu chuyển
- Trước hết em tóm tắt 3–4 điểm kết luận quan trọng của đồ án.

## 05_01 — `05_01_ket_luan.html` — Kết luận
### Mục đích slide
- Chốt “đã làm được gì” theo 4 nhóm: đặc tả/RTL, minh họa flow ASIC, phân tách vai trò, đáp ứng yêu cầu.

### Lời nói (script)
- (1) **Đặc tả I2C Master theo RD1139**: kiến trúc khối, thanh ghi, FSM bus/master, luồng ghi/đọc/repeated START, kế hoạch kiểm chứng TB.
- (2) **Minh họa luồng IC Design** với Sky130nm/LibreLane: trải nghiệm pipeline từ RTL đến layout và các khâu sign-off.
- (3) **Phân tách vai trò rõ ràng**: RD1139 làm nền thiết kế I2C, LibreLane làm case study triển khai.
- (4) **Đáp ứng yêu cầu môn học/đề tài**: có checklist đối chiếu, có mô phỏng waveform minh chứng.

### Câu chuyển
- Tiếp theo em nêu các **hạn chế** và **hướng phát triển** để hoàn thiện hơn.

## 05_03 — `05_03_han_che_huong_pt.html` — Hạn chế & hướng phát triển
### Mục đích slide
- Thể hiện hiểu rõ giới hạn hiện tại và đề xuất bước tiếp theo có giá trị.

### Lời nói (script)
- **Hạn chế**
  - RTL RD1139 chưa tối ưu mạnh về timing.
  - Sign-off dùng tool open-source: không bao phủ mọi corner PVT; vẫn có vấn đề khi check antenna.
- **Hướng mở rộng**
  - Nếu có license/điều kiện: đóng gói RTL và chạy lại pipeline để so sánh diện tích/timing.
  - Thêm mô phỏng ngẫu nhiên + coverage/property (SVA) cho FSM.
  - Tích hợp trên FPGA và đo SCL/SDA thực bằng logic analyzer.

### Câu chuyển
- Sau phần hướng phát triển, em liệt kê nhanh các tài liệu tham khảo chính.

## 05_02 — `05_02_tai_lieu_tham_khao.html` — Tài liệu tham khảo
### Mục đích slide
- Nêu nguồn chính: RD1139 và tài liệu LibreLane.

### Lời nói (script)
- Tài liệu chính của đồ án:
  - Lattice (2015): **I2C Master Controller — RD1139**.
  - Tài liệu LibreLane (getting started) để minh họa flow ASIC.

### Câu chuyển
- Em xin kết thúc phần trình bày bằng slide cảm ơn.

## 05_04 — `05_04_cam_on.html` — Cảm ơn
### Mục đích slide
- Kết thúc lịch sự, mời câu hỏi.

### Lời nói (script)
- Em xin cảm ơn thầy/cô và các bạn đã lắng nghe. Em xin sẵn sàng nhận câu hỏi.

