# Script Chương 2 (Phần 2) — Kiến trúc RD1139 & RTL

> Bám theo `sections_i2c/02_*`. Mục tiêu chương 2: giải thích kiến trúc và cơ chế phối hợp **Master FSM (byte-level)** với **Bus FSM (bit-level)**.

## 02_00 — `02_00_chapter.html` — Mở chương 2
### Mục đích slide
- Chuyển từ “luật bus” sang “cách hiện thực bằng RTL”: sơ đồ khối, module, FSM, TX/RX, clock gen & stretching.

### Lời nói (script)
- Sang **chương 2**, em đi vào **kiến trúc RD1139 & RTL**: từ top module, phân rã module, đến hai FSM và luồng ghi/đọc.

### Câu chuyển
- Trước tiên em trình bày **sơ đồ khối top module** để thấy luồng CPU → bus.

## 02_01 — `02_01_kien_truc_khoi.html` — Sơ đồ khối Top Module
### Mục đích slide
- Cho người nghe “bản đồ tổng quan”: CPU/processor interface → FSM → filtered SDA/SCL → pad open-drain → slave/ACK.

### Lời nói (script)
- Luồng chính: **Processor Interface** nhận cấu hình/byte dữ liệu → điều phối bằng **Master Control FSM** và **Bus Control FSM**.
- SDA/SCL qua khối **Filtered** để đồng bộ/ổn định trước khi ra pad.
- Pad là **open-drain**: kéo thấp hoặc nhả.
- Slave nhận START/STOP và trả **ACK** ở bit thứ 9.

### Câu chuyển
- Tiếp theo em đi vào **vai trò từng khối** trong top module.

## 02_02 — `02_02_phan_ra_top_module.html` — Vai trò các khối (top-level)
### Mục đích slide
- “Ai làm gì”: tách trách nhiệm rõ ràng giúp FSM và debug dễ.

### Lời nói (script)
- **Processor Interface**: đọc/ghi thanh ghi, handshake với bus nội bộ.
- **Master Control FSM**: điều phối mức **byte**: IDLE→START→ADDR→DATA→STOP→DONE, phối hợp đếm byte.
- **Bus Control FSM**: điều khiển mức **bit**: tạo START/STOP đúng điều kiện, tạo pha SCL low/high, xử lý ACK bit.
- **Filtered SCL/SDA**: đồng bộ/đệm tín hiệu.
- **Slave model**: mô phỏng theo RD1139 phục vụ kiểm chứng.

### Câu chuyển
- Nhìn ở mức “chức năng I2C”, ta gom các khối thành clock/start-stop/ack/tx-rx. Slide sau minh họa cách gom này.

## 02_03 — `02_03_rtl_blocks.html` — Sơ đồ khối chức năng
### Mục đích slide
- Cho thấy các “khối chức năng” đúng với thuật ngữ giao thức: clock gen, start/stop, ack, tx/rx.

### Lời nói (script)
- **Clock Generator & Synchronizer**: tạo nhịp SCL theo mode/div, xử lý stretching.
- **START/STOP Generate/Detect**: tạo và nhận diện START/STOP.
- **ACK Generate/Detect**: xử lý bit ACK thứ 9.
- **Tx/Rx Data FSM**: dịch bit, đệm byte, báo byte done.

### Câu chuyển
- Slide sau tóm tắt lại vai trò từng khối chức năng, nhấn vào clock gen & stretching.

## 02_04 — `02_04_phan_ra_func_module.html` — Vai trò các khối (functional)
### Mục đích slide
- Nhấn mạnh 2 điểm hay sai: tạo START/STOP đúng SCL=1 và xử lý clock stretching.

### Lời nói (script)
- **Clock Gen & Sync**: từ `i_clk_div_*` + mode tạo SCL, đồng bộ SDA/SCL và chờ stretching.
- **START/STOP Logic**: START/STOP là ngoại lệ SDA đổi khi SCL=1.
- **Acknowledge logic**: bit thứ 9 sau mỗi byte.
- **Tx/Rx Data FSM**: dịch bit/byte và báo cho Master FSM.

### Câu chuyển
- Bây giờ em vào phần trọng tâm: **Bus Control FSM** (mức bit) trước, rồi tới **Master Control FSM** (mức byte).

## 02_05 — `02_05_bus_fsm_block_diagram.html` — Bus Control FSM (block diagram)
### Mục đích slide
- Giải thích: Bus FSM là “bộ tạo pha” trên SCL/SDA để tuân chuẩn bus.

### Lời nói (script)
- Bus FSM đảm bảo: SDA chỉ đổi khi SCL low, START/STOP khi SCL high, và xử lý ACK bit.

### Câu chuyển
- Slide sau là đồ thị trạng thái Bus FSM để thấy chu trình các pha.

## 02_06 — `02_06_bus_fsm_graph.html` — Sơ đồ trạng thái Bus FSM
### Mục đích slide
- Trực quan hóa các trạng thái bit-level.

### Lời nói (script)
- Trạng thái xoay quanh 2 pha **SCL LOW** và **SCL HIGH**, cộng các nhánh START/STOP/ACK.
- Có chỗ mở cho tình huống đa master (mức khái niệm).

### Câu chuyển
- Slide sau em tóm tắt ý nghĩa từng trạng thái trong Bus FSM.

## 02_07 — `02_07_bus_fsm_giai_thich.html` — Bus FSM: ý nghĩa trạng thái
### Mục đích slide
- Nói rõ “mỗi state làm gì” để map với luật bus chương 1.

### Lời nói (script)
- `BUS IDLE`: chờ lệnh.
- `START DETECT`: chuẩn bị/kiểm tra điều kiện START.
- `SCL LOW`: giữ SCL thấp để chuẩn bị dữ liệu (SDA đổi ở đây).
- `SCL HIGH`: đưa SCL cao để lấy mẫu; cần chờ khi stretching.
- `ACK DETECT/GENERATE`: bit thứ 9.
- `STOP DETECT/STOP GENERATE`: kết thúc giao dịch đúng chuẩn.
- `DONE`: báo hoàn tất.

### Câu chuyển
- Trên Bus FSM, Master FSM sẽ điều phối cấp byte: gửi địa chỉ, gửi/nhận data, đếm byte, quyết định STOP hay RS.

## 02_08 — `02_08_master_fsm_block_diagram.html` — Master Control FSM (block diagram)
### Mục đích slide
- Nêu “luồng giao dịch” byte-level theo RD1139.

### Lời nói (script)
- Master FSM: `IDLE → START → SEND_ADDR → ADDR_ACK → WRITE/READ → DATA_ACK → STOP/REPEAT → DONE`.

### Câu chuyển
- Slide sau là đồ thị trạng thái tổng quan Master FSM.

## 02_09 — `02_09_master_fsm_graph.html` — Sơ đồ trạng thái Master FSM
### Mục đích slide
- Cho thấy nhánh TX/RX và đường về STOP/DONE.

### Lời nói (script)
- Sau `SEND_ADDR/ADDR_ACK`, nhánh theo R/W: TX hoặc RX.
- Kết thúc bằng `STOP` hoặc `REPEAT` (repeated START).

### Câu chuyển
- Slide sau em giải thích ý nghĩa từng trạng thái để thấy rõ điều kiện chuyển state.

## 02_10 — `02_10_master_fsm_giai_thich.html` — Master FSM: ý nghĩa trạng thái
### Mục đích slide
- Chốt logic điều phối: ACK địa chỉ, R/W, số byte, lỗi/abort.

### Lời nói (script)
- `IDLE`: chờ lệnh CPU.
- `START`: phát START, chuẩn bị byte địa chỉ.
- `SEND_ADDR`: đẩy 7+1 bit.
- `ADDR_ACK`: kiểm tra ACK; NACK có thể dẫn đến TX_ERR và dừng an toàn.
- `R/W`: chọn hướng giao dịch.
- `WRITE DATA / READ DATA`: thực hiện theo `i_byte_cnt_reg`, handshake dữ liệu.
- `DATA_ACK`: xử lý ACK sau mỗi byte.
- `STOP/REPEAT`: STOP nếu kết thúc; REPEAT nếu cần chuyển pha.
- `DONE`: set `TX_DONE/RX_DONE`.

### Câu chuyển
- Tiếp theo em mô tả trình tự ghi/đọc theo góc nhìn CPU/RTL handshake.

## 02_11 — `02_11_ghi_doc.html` — Trình tự ghi & đọc (CPU/RTL/bus)
### Mục đích slide
- Nói rõ các cờ/handshake để khi xem waveform chương 3 sẽ đối chiếu được.

### Lời nói (script)
- **Ghi (TX)**:
  - CPU set addr+W, set `i_byte_cnt_reg`, ghi START trong `i_config_reg`.
  - Bus: START → addr+W → ACK → data… → STOP.
  - `o_transmit_data_requested` bật trước mỗi byte cần nạp.
  - `TX_DONE` sau byte cuối; `I2C_BUSY` giữ tới khi STOP xong.
- **Đọc (RX)**:
  - CPU cấu hình addr với R/W=1.
  - `o_receive_data` có byte mới khi `o_received_data_valid=1`.
  - `RX_DONE` sau byte cuối; byte cuối thường NACK trước STOP.

### Câu chuyển
- Trường hợp thực tế hay dùng là **Repeated START** để đổi pha mà không nhả bus; slide sau chốt điều kiện và lỗi thường gặp.

## 02_12 — `02_12_repeated_start.html` — Repeated START (RS)
### Mục đích slide
- Giải thích khi nào dùng RS và ràng buộc kịch bản.

### Lời nói (script)
- RS dùng để đổi hướng/đọc thanh ghi nội bộ: “ghi địa chỉ thanh ghi → RS → đọc dữ liệu” **không STOP giữa chừng**.
- Theo đặc tả nhóm: START lần hai giữ **cùng địa chỉ slave**.
- Lỗi thường gặp: nhầm RS với STOP+START; đếm byte sai làm STOP chen giữa hai phase.

### Câu chốt chương 2
- Chương 2 đã chỉ ra kiến trúc tách lớp: **Bus FSM** đảm bảo chuẩn tín hiệu, **Master FSM** điều phối giao dịch theo byte và handshake CPU.

