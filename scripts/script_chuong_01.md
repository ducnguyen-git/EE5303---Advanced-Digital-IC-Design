# Script Chương 1 (Phần 1) — Bối cảnh & đặc tả I2C

> Bám theo `sections_i2c/01_*`. Mỗi slide gồm: mục đích → lời nói gợi ý → câu chuyển.

## 01_00 — `01_00_chapter.html` — Mở chương 1
### Mục đích slide
- Định hướng người nghe: chương 1 chốt **bối cảnh + luật bus I2C** để chương 2 thiết kế RTL/FSM không sai chuẩn.

### Lời nói (script)
- Kính chào thầy/cô và các bạn. Trong **chương 1**, em trình bày **bối cảnh** và **đặc tả I2C** làm nền cho thiết kế I2C Master.
- I2C là bus nối tiếp đồng bộ **2 dây** (`SCL`, `SDA`) dùng phổ biến để kết nối SoC/MCU/FPGA với các ngoại vi như cảm biến, EEPROM, RTC.
- Mục tiêu chương này là “khóa” 3 thứ:
  - **Thiết kế làm gì** (I2C Master theo RD1139),
  - **Luật bus** (open-drain, START/STOP, ACK/NACK, stretching),
  - **Tốc độ** (100 kHz / 400 kHz) gắn với clock hệ thống 32 MHz.

### Câu chuyển
- Đầu tiên em chốt **mục tiêu & phạm vi** của đồ án theo RD1139.

## 01_01 — `01_01_de_tai_muc_tieu.html` — Mục tiêu & phạm vi thiết kế
### Mục đích slide
- Trả lời: **làm cái gì**, **theo chuẩn nào**, **có tính năng gì**, **giả định gì**.

### Lời nói (script)
- Đồ án thiết kế **I2C Master** theo tài liệu tham khảo **Lattice RD1139**.
- “Master” là khối chủ động điều khiển giao dịch: tạo SCL, điều khiển SDA, phát START/STOP, gửi địa chỉ, đọc/ghi dữ liệu và kiểm tra ACK/NACK.
- Về chức năng, thiết kế cần:
  - **2 mode tốc độ**: **Standard ~100 kHz** và **Fast ~400 kHz**, cấu hình bằng `i_clk_div_lsb` và `i_mode_reg[2:0]`.
  - Địa chỉ **7-bit**, đầy đủ **START/STOP/ACK/NACK**, có **repeated START**.
  - **Tổng hợp được** và **mô phỏng được** theo **testbench RD1139** trước khi tích hợp.
- Về phạm vi:
  - Tập trung **single-master**; đa master chỉ nhắc khái niệm.
  - Clock hệ thống giả định **32 MHz**, nên clock-gen và FSM phải đảm bảo timing bus theo mode đã chọn.

### Câu chuyển
- Từ mục tiêu đó, em chuyển sang phần quan trọng nhất của chương 1: **các ràng buộc bắt buộc của bus I2C**.

## 01_02 — `01_02_rang_buoc.html` — Ràng buộc bus & hệ quả thiết kế
### Mục đích slide
- Chốt các “luật tín hiệu” để chương 2 map vào Bus FSM/Pad.

### Lời nói (script)
- Ràng buộc 1: **SDA/SCL là open-drain**.
  - Master **chỉ kéo thấp** hoặc **nhả high‑Z**; mức cao là do **pull-up ngoài**.
- Ràng buộc 2: **SDA chỉ đổi khi SCL = 0** (trừ START/STOP).
  - Khi SCL đang cao, thiết bị phía nhận lấy mẫu, nên SDA phải ổn định.
- Ràng buộc 3: **START/STOP**:
  - **START**: SDA 1→0 khi SCL=1.
  - **STOP**: SDA 0→1 khi SCL=1.
- Ràng buộc 4: **100 kHz / 400 kHz**:
  - Không chỉ “đúng tần số”, mà còn đúng pha high/low để đảm bảo setup/hold.
- Ràng buộc 5: **clock stretching**:
  - Slave có thể giữ SCL thấp; master phải **chờ** trước khi sang pha kế.

### Câu chuyển
- Dựa trên các luật đó, em nhắc lại **chuỗi giao dịch I2C** để lát nữa nhìn FSM sẽ dễ hiểu.

## 01_03 — `01_03_giao_thuc_i2c.html` — Chuỗi giao dịch I2C (7-bit)
### Mục đích slide
- Tạo “kịch bản chuẩn”: START → addr+R/W → ACK → data… → STOP/RS.

### Lời nói (script)
- Bus idle: `SCL` và `SDA` đều cao nhờ pull-up.
- Master phát **START** để chiếm bus.
- Byte đầu: **7-bit địa chỉ** + **1 bit R/W**:
  - R/W=0: ghi master→slave.
  - R/W=1: đọc slave→master.
- Bit thứ 9 là **ACK/NACK**:
  - Slave kéo SDA thấp: ACK; không kéo: NACK.
- Các byte dữ liệu theo sau, mỗi byte đều có ACK/NACK.
- Kết thúc bằng **STOP**, hoặc dùng **repeated START** nếu muốn đổi pha mà không nhả bus.

### Câu chuyển
- Để các pha này chạy đúng yêu cầu 100k/400k với clock hệ thống 32 MHz, em chốt phần **chế độ clock**.

## 01_04 — `01_04_i2c_timing_mode.html` — Chế độ clock Standard/Fast
### Mục đích slide
- Liên hệ yêu cầu tốc độ với clock-gen/prescale từ 32 MHz.

### Lời nói (script)
- Standard mode: SCL khoảng **100 kHz** (chu kỳ ~10 µs).
- Fast mode: SCL khoảng **400 kHz** (chu kỳ ~2.5 µs), timing chặt hơn.
- Với \(f_{sys}=32\,MHz\), SCL được tạo xấp xỉ:
  - \( f_{SCL} \approx \dfrac{f_{sys}}{2 \times prescale} \)
- Cần kiểm tra:
  - đủ tick để tạo pha high/low ổn định,
  - SDA đáp ứng setup/hold quanh cạnh SCL,
  - và FSM vẫn đúng khi có stretching.

### Câu chuyển
- Cuối chương 1, em đối chiếu trực tiếp các yêu cầu đề tài với phần trình bày để làm “checklist”.

## 01_05 — `01_05_doi_chieu_yeu_cau_de.html` — Đối chiếu yêu cầu
### Mục đích slide
- Biến yêu cầu thành checklist: “yêu cầu nào nằm ở slide/chuỗi nội dung nào”.

### Lời nói (script)
- Địa chỉ **7-bit**: phần giao thức + sẽ thể hiện trong luồng TX/RX.
- **100k/400k**: phần clock mode + divider.
- **START/STOP/ACK/NACK/RS**: định nghĩa ở chương 1, hiện thực ở FSM chương 2, kiểm chứng waveform chương 3.
- Luật bus (open-drain, SDA đổi khi SCL=0): nền cho Bus FSM/pad.
- Clock 32 MHz + HDL/TB: mô phỏng theo TB RD1139.
- Sign-off (DRC/LVS/STA/Antenna): phần minh họa flow ASIC (chương 4).

### Câu chốt chương 1
- Chương 1 “chốt luật và mục tiêu”. Sang chương 2, em trình bày **kiến trúc RTL**: tách **Master FSM (byte-level)** và **Bus FSM (bit-level)** để tuân thủ các luật này.

