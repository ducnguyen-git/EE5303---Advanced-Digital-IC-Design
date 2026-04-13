# Script Chương 3 (Phần 3) — Mô phỏng & waveform

> Bám theo `sections_i2c/03_*`. Mục tiêu: chứng minh RTL đúng giao thức bằng TB RD1139 và đối chiếu các tín hiệu handshake/cờ trạng thái với Fig06–08.

## 03_00 — `03_00_chapter.html` — Mở chương 3
### Mục đích slide
- Giới thiệu phạm vi kiểm chứng: TB RD1139, checklist TX/RX/RS, cách đọc waveform.

### Lời nói (script)
- Sang **chương 3**, em trình bày **kiểm chứng bằng mô phỏng**: testbench RD1139 và các waveform tương ứng cho TX/RX/repeated START.

### Câu chuyển
- Đầu tiên là môi trường mô phỏng và nhóm tín hiệu cần theo dõi.

## 03_01 — `03_01_mo_phong.html` — Môi trường mô phỏng & phạm vi
### Mục đích slide
- Chốt “nguồn TB” và “tín hiệu phải nhìn” để không bị lạc khi xem waveform.

### Lời nói (script)
- Testbench lấy theo **RD1139**: có model bus, slave giả lập/BFM và các task giao dịch.
- Mục tiêu mô phỏng: chứng minh **đúng giao thức** trước khi tổng hợp/tích hợp.
- Tín hiệu quan sát gồm 2 nhóm:
  - **Bus**: `SCL`, `SDA` (và enable pad nếu tách).
  - **CPU/RTL handshake**: `I2C_BUSY`, `TX_DONE/RX_DONE`, `o_transmit_data_requested`, `o_received_data_valid`.
- Các tín hiệu này sẽ được đối chiếu với Fig06–08.

### Câu chuyển
- Em vào kịch bản đầu tiên: **Master transmit (ghi)**.

## 03_02 — `03_02_tb_tx_chi_tiet.html` — TB: Master transmit (TX)
### Mục đích slide
- Nêu checklist quan sát bus và kỳ vọng handshake/cờ ở chế độ TX.

### Lời nói (script)
- Quan sát trên bus:
  - Có **START** sau idle.
  - Byte địa chỉ + **ACK** từ slave (bit 9).
  - Chuỗi byte dữ liệu; mỗi byte có **ACK**.
  - Kết thúc bằng **STOP** và có khoảng idle sau đó.
- Kỳ vọng phía RTL/CPU:
  - `o_transmit_data_requested` bật **trước** mỗi byte dữ liệu cần nạp.
  - Sau byte cuối: `TX_DONE=1`.
  - `I2C_BUSY` giữ đến khi STOP hoàn tất.
  - Nếu có NACK: kiểm tra cờ lỗi như `TX_ERR` (nếu RTL có).

### Câu chuyển
- Slide sau là waveform Fig06 để đối chiếu trực tiếp các tín hiệu handshake và cờ trạng thái khi TX.

## 03_03 — `03_03_wave_tx.html` — Fig06: Waveform TX
### Mục đích slide
- Chứng minh trực quan: vị trí `o_transmit_data_requested`, `TX_DONE`, `I2C_BUSY` quanh STOP.

### Lời nói (script)
- Trên waveform, em chỉ 3 điểm:
  - `o_transmit_data_requested` xuất hiện đúng thời điểm “xin byte” trước mỗi lần gửi dữ liệu.
  - `I2C_BUSY` bật khi bắt đầu giao dịch và chỉ hạ sau khi STOP hoàn tất.
  - `TX_DONE` lên sau byte cuối, phù hợp với kết thúc giao dịch.

### Câu chuyển
- Tiếp theo là kịch bản **Master receive (đọc)** và waveform Fig07.

## 03_04 — `03_04_tb_rx_chi_tiet.html` — TB: Master receive (RX)
### Mục đích slide
- Nêu checklist bus và kỳ vọng `o_receive_data`/`valid`/`RX_DONE`.

### Lời nói (script)
- Quan sát trên bus:
  - START → byte địa chỉ với **R/W=1**.
  - Slave trả byte dữ liệu.
  - Master phát **ACK/NACK** theo từng byte (thường NACK ở byte cuối trước STOP).
  - STOP kết thúc.
- Kỳ vọng phía RTL:
  - `o_receive_data` chứa byte mới khi `o_received_data_valid=1`.
  - `RX_DONE` lên sau byte cuối theo `i_byte_cnt_reg`.
  - Không đọc dữ liệu khi `valid=0`.

### Câu chuyển
- Slide sau là Fig07 để đối chiếu trực quan `o_receive_data`, `valid`, `RX_DONE`.

## 03_05 — `03_05_wave_rx.html` — Fig07: Waveform RX
### Mục đích slide
- Chứng minh luồng RX và thời điểm assert valid/done.

### Lời nói (script)
- Em chỉ vào các đoạn:
  - `o_received_data_valid` lên đúng lúc byte hoàn tất.
  - `o_receive_data` đổi giá trị tương ứng từng byte.
  - `RX_DONE` lên sau byte cuối đúng theo cấu hình đếm byte.

### Câu chuyển
- Trường hợp cuối là **Repeated START**: hai START liên tiếp không có STOP giữa chừng.

## 03_06 — `03_06_tb_rep_chi_tiet.html` — TB: Repeated START
### Mục đích slide
- Checklist “không STOP ở giữa”, START lần hai đúng điều kiện và đúng địa chỉ theo đặc tả.

### Lời nói (script)
- Trình tự:
  - START lần 1 → gửi địa chỉ → ACK.
  - **Không có STOP** giữa hai phase.
  - Phát START lần 2 (RS) và giữ đúng địa chỉ slave theo đặc tả.
  - Tiếp tục phase đọc/ghi, kết thúc bằng STOP sau cùng.
- Kiểm tra lỗi: nếu waveform có STOP chen giữa → TB hoặc FSM đếm byte sai.

### Câu chuyển
- Slide sau là Fig08 để chứng minh trực quan “hai START liên tiếp không STOP”.

## 03_07 — `03_07_wave_rep.html` — Fig08: Waveform Repeated START
### Mục đích slide
- Chứng minh điều kiện Sr đúng: START thứ hai trong bus busy, không STOP giữa chừng.

### Lời nói (script)
- Em chỉ vào điểm khác biệt: có hai đoạn START, và **không có STOP** ở giữa.
- Đây là bằng chứng kiểm chứng cho nhánh `STOP/REPEAT` trong Master FSM và các trạng thái START của Bus FSM.

### Câu chốt chương 3
- Chương 3 chứng minh RTL đúng giao thức qua TB RD1139: TX đúng handshake và cờ, RX đúng valid/done, và RS đúng “không STOP giữa chừng”.

