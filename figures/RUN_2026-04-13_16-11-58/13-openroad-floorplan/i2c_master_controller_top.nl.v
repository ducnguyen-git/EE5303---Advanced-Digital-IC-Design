module i2c_master_controller_top (i_clk,
    i_rst_n,
    io_scl,
    io_sda,
    o_int_n,
    o_received_data_valid,
    o_start_ack,
    o_transmit_data_request,
    i_byte_cnt_reg,
    i_clk_div_lsb,
    i_config_reg,
    i_mode_reg,
    i_slave_addr_reg,
    i_transmit_data,
    o_cmd_status_reg,
    o_receive_data);
 input i_clk;
 input i_rst_n;
 inout io_scl;
 inout io_sda;
 output o_int_n;
 output o_received_data_valid;
 output o_start_ack;
 output o_transmit_data_request;
 input [7:0] i_byte_cnt_reg;
 input [7:0] i_clk_div_lsb;
 input [5:0] i_config_reg;
 input [7:0] i_mode_reg;
 input [6:0] i_slave_addr_reg;
 input [7:0] i_transmit_data;
 output [7:0] o_cmd_status_reg;
 output [7:0] o_receive_data;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire \u_i2c_master_controller.bps_mode[0] ;
 wire \u_i2c_master_controller.bps_mode[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.abort_ack ;
 wire \u_i2c_master_controller.cntrl_fsm.abort_ack_d1 ;
 wire \u_i2c_master_controller.cntrl_fsm.abort_ack_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.abort_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.abort_reg1 ;
 wire \u_i2c_master_controller.cntrl_fsm.adr_mode ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_cnt[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_done ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_rx_en ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.o_rx_ack_sda ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[8] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[9] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_done ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_err ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_en ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.o_byte_tx_sda ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ;
 wire \u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i2cbus_busy_i ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_start_detect ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_stop_detect ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_changed ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start_gen_ack ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_i2c_busy ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_rx_done ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_start_gen_en ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_stop_gen_en ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_tx_done ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.rx_en ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[5] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[6] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ;
 wire \u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[9] ;
 wire \u_i2c_master_controller.cntrl_fsm.intr_clr_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.intr_clr_reg1 ;
 wire \u_i2c_master_controller.cntrl_fsm.intr_clr_reg2 ;
 wire \u_i2c_master_controller.cntrl_fsm.o_int_out ;
 wire \u_i2c_master_controller.cntrl_fsm.rx_done_d1 ;
 wire \u_i2c_master_controller.cntrl_fsm.rx_done_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.rx_err ;
 wire \u_i2c_master_controller.cntrl_fsm.rx_err_d1 ;
 wire \u_i2c_master_controller.cntrl_fsm.rx_err_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.rxintr_en ;
 wire \u_i2c_master_controller.cntrl_fsm.start_reg1 ;
 wire \u_i2c_master_controller.cntrl_fsm.tx_done_d1 ;
 wire \u_i2c_master_controller.cntrl_fsm.tx_done_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.tx_err ;
 wire \u_i2c_master_controller.cntrl_fsm.tx_err_d1 ;
 wire \u_i2c_master_controller.cntrl_fsm.tx_err_reg ;
 wire \u_i2c_master_controller.cntrl_fsm.txintr_en ;
 wire \u_i2c_master_controller.filter_scl.in_d1 ;
 wire \u_i2c_master_controller.filter_scl.in_d2 ;
 wire \u_i2c_master_controller.filter_scl.in_d3 ;
 wire \u_i2c_master_controller.filter_scl.out_n ;
 wire \u_i2c_master_controller.filter_sda.in_d1 ;
 wire \u_i2c_master_controller.filter_sda.in_d2 ;
 wire \u_i2c_master_controller.filter_sda.in_d3 ;
 wire \u_i2c_master_controller.filter_sda.out_n ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_start_sda_i ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_stop_sda_i ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.o_i2c_master_scl ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[5] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[8] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_reset ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[5] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[7] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[8] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_done ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[11] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[13] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[15] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[7] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_detect.state ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_done ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[11] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[13] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[15] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[3] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[7] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[1] ;
 wire \u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ;
 wire \u_i2c_master_controller.soft_reset_d1 ;
 wire \u_i2c_master_controller.soft_reset_d2 ;
 wire \u_i2c_master_controller.soft_reset_d3 ;

 sky130_fd_sc_hd__inv_2 _0533_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .Y(_0282_));
 sky130_fd_sc_hd__inv_2 _0534_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .Y(_0283_));
 sky130_fd_sc_hd__inv_2 _0535_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[5] ),
    .Y(_0284_));
 sky130_fd_sc_hd__inv_2 _0536_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ),
    .Y(_0285_));
 sky130_fd_sc_hd__inv_2 _0537_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .Y(_0286_));
 sky130_fd_sc_hd__inv_2 _0538_ (.A(\u_i2c_master_controller.filter_sda.out_n ),
    .Y(_0287_));
 sky130_fd_sc_hd__inv_2 _0539_ (.A(\u_i2c_master_controller.filter_scl.out_n ),
    .Y(_0288_));
 sky130_fd_sc_hd__inv_2 _0540_ (.A(\u_i2c_master_controller.cntrl_fsm.o_int_out ),
    .Y(o_int_n));
 sky130_fd_sc_hd__inv_2 _0541_ (.A(i_clk_div_lsb[1]),
    .Y(_0090_));
 sky130_fd_sc_hd__inv_2 _0542_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .Y(_0289_));
 sky130_fd_sc_hd__inv_2 _0543_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .Y(_0290_));
 sky130_fd_sc_hd__inv_2 _0544_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .Y(_0291_));
 sky130_fd_sc_hd__inv_2 _0545_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ),
    .Y(_0292_));
 sky130_fd_sc_hd__inv_2 _0546_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_stop_detect ),
    .Y(_0293_));
 sky130_fd_sc_hd__inv_2 _0547_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ),
    .Y(_0294_));
 sky130_fd_sc_hd__inv_2 _0548_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ),
    .Y(_0295_));
 sky130_fd_sc_hd__inv_2 _0549_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_done ),
    .Y(_0296_));
 sky130_fd_sc_hd__inv_2 _0550_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_start_gen_en ),
    .Y(_0297_));
 sky130_fd_sc_hd__inv_2 _0551_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_en ),
    .Y(_0298_));
 sky130_fd_sc_hd__inv_2 _0552_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[3] ),
    .Y(_0299_));
 sky130_fd_sc_hd__inv_2 _0553_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_rx_done ),
    .Y(_0300_));
 sky130_fd_sc_hd__inv_2 _0554_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start_gen_ack ),
    .Y(_0301_));
 sky130_fd_sc_hd__inv_2 _0555_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ),
    .Y(_0302_));
 sky130_fd_sc_hd__inv_2 _0556_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i2cbus_busy_i ),
    .Y(_0303_));
 sky130_fd_sc_hd__inv_2 _0557_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_rx_en ),
    .Y(_0304_));
 sky130_fd_sc_hd__inv_2 _0558_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ),
    .Y(_0305_));
 sky130_fd_sc_hd__inv_2 _0559_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ),
    .Y(_0306_));
 sky130_fd_sc_hd__inv_2 _0560_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ),
    .Y(_0307_));
 sky130_fd_sc_hd__inv_2 _0561_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[7] ),
    .Y(_0308_));
 sky130_fd_sc_hd__inv_2 _0562_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[13] ),
    .Y(_0309_));
 sky130_fd_sc_hd__inv_2 _0563_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ),
    .Y(_0310_));
 sky130_fd_sc_hd__inv_2 _0564_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .Y(_0311_));
 sky130_fd_sc_hd__inv_2 _0565_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ),
    .Y(_0312_));
 sky130_fd_sc_hd__inv_2 _0566_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[7] ),
    .Y(_0313_));
 sky130_fd_sc_hd__inv_2 _0567_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[13] ),
    .Y(_0314_));
 sky130_fd_sc_hd__inv_2 _0568_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[7] ),
    .Y(_0315_));
 sky130_fd_sc_hd__inv_2 _0569_ (.A(\u_i2c_master_controller.bps_mode[1] ),
    .Y(_0049_));
 sky130_fd_sc_hd__inv_2 _0570_ (.A(\u_i2c_master_controller.soft_reset_d2 ),
    .Y(_0316_));
 sky130_fd_sc_hd__inv_2 _0571_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .Y(_0317_));
 sky130_fd_sc_hd__inv_2 _0572_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .Y(_0318_));
 sky130_fd_sc_hd__inv_2 _0573_ (.A(io_sda),
    .Y(_0044_));
 sky130_fd_sc_hd__inv_2 _0574_ (.A(io_scl),
    .Y(_0043_));
 sky130_fd_sc_hd__nor2_2 _0575_ (.A(_0287_),
    .B(\u_i2c_master_controller.filter_scl.out_n ),
    .Y(_0048_));
 sky130_fd_sc_hd__mux2_1 _0576_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_start_detect ),
    .A1(_0048_),
    .S(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state ),
    .X(_0264_));
 sky130_fd_sc_hd__a31o_2 _0577_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .A2(_0293_),
    .A3(_0295_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .X(_0263_));
 sky130_fd_sc_hd__and3_2 _0578_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .X(_0319_));
 sky130_fd_sc_hd__and4_2 _0579_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[2] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .X(_0320_));
 sky130_fd_sc_hd__and3_2 _0580_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .C(_0320_),
    .X(_0321_));
 sky130_fd_sc_hd__and4_2 _0581_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[5] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .D(_0320_),
    .X(_0322_));
 sky130_fd_sc_hd__a31o_2 _0582_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .A3(_0322_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[8] ),
    .X(_0323_));
 sky130_fd_sc_hd__nor2_2 _0583_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_reset ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ),
    .Y(_0324_));
 sky130_fd_sc_hd__nand4_2 _0584_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[8] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .D(_0322_),
    .Y(_0325_));
 sky130_fd_sc_hd__and3_2 _0585_ (.A(_0323_),
    .B(_0324_),
    .C(_0325_),
    .X(_0262_));
 sky130_fd_sc_hd__a21oi_2 _0586_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .A2(_0322_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .Y(_0326_));
 sky130_fd_sc_hd__a311o_2 _0587_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .A3(_0322_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ),
    .C1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_reset ),
    .X(_0327_));
 sky130_fd_sc_hd__nor2_2 _0588_ (.A(_0326_),
    .B(_0327_),
    .Y(_0261_));
 sky130_fd_sc_hd__o21ai_2 _0589_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .A2(_0322_),
    .B1(_0324_),
    .Y(_0328_));
 sky130_fd_sc_hd__a21oi_2 _0590_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ),
    .A2(_0322_),
    .B1(_0328_),
    .Y(_0260_));
 sky130_fd_sc_hd__o21ai_2 _0591_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[5] ),
    .A2(_0321_),
    .B1(_0324_),
    .Y(_0329_));
 sky130_fd_sc_hd__nor2_2 _0592_ (.A(_0322_),
    .B(_0329_),
    .Y(_0259_));
 sky130_fd_sc_hd__a21o_2 _0593_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .A2(_0320_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ),
    .X(_0330_));
 sky130_fd_sc_hd__and3b_2 _0594_ (.A_N(_0321_),
    .B(_0324_),
    .C(_0330_),
    .X(_0258_));
 sky130_fd_sc_hd__o21ai_2 _0595_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .A2(_0320_),
    .B1(_0324_),
    .Y(_0331_));
 sky130_fd_sc_hd__a21oi_2 _0596_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ),
    .A2(_0320_),
    .B1(_0331_),
    .Y(_0257_));
 sky130_fd_sc_hd__o21ai_2 _0597_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[2] ),
    .A2(_0319_),
    .B1(_0324_),
    .Y(_0332_));
 sky130_fd_sc_hd__nor2_2 _0598_ (.A(_0320_),
    .B(_0332_),
    .Y(_0256_));
 sky130_fd_sc_hd__a21o_2 _0599_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ),
    .X(_0333_));
 sky130_fd_sc_hd__and3b_2 _0600_ (.A_N(_0319_),
    .B(_0324_),
    .C(_0333_),
    .X(_0255_));
 sky130_fd_sc_hd__o21ai_2 _0601_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .B1(_0324_),
    .Y(_0334_));
 sky130_fd_sc_hd__a21oi_2 _0602_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .B1(_0334_),
    .Y(_0254_));
 sky130_fd_sc_hd__a21o_2 _0603_ (.A1(\u_i2c_master_controller.filter_sda.out_n ),
    .A2(\u_i2c_master_controller.filter_sda.in_d2 ),
    .B1(\u_i2c_master_controller.filter_sda.in_d3 ),
    .X(_0335_));
 sky130_fd_sc_hd__o21a_2 _0604_ (.A1(\u_i2c_master_controller.filter_sda.out_n ),
    .A2(\u_i2c_master_controller.filter_sda.in_d2 ),
    .B1(_0335_),
    .X(_0253_));
 sky130_fd_sc_hd__a21o_2 _0605_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.filter_scl.in_d2 ),
    .B1(\u_i2c_master_controller.filter_scl.in_d3 ),
    .X(_0336_));
 sky130_fd_sc_hd__o21a_2 _0606_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.filter_scl.in_d2 ),
    .B1(_0336_),
    .X(_0252_));
 sky130_fd_sc_hd__o21ba_2 _0607_ (.A1(\u_i2c_master_controller.cntrl_fsm.tx_done_reg ),
    .A2(\u_i2c_master_controller.cntrl_fsm.rx_done_reg ),
    .B1_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_i2c_busy ),
    .X(_0337_));
 sky130_fd_sc_hd__o32a_2 _0608_ (.A1(\u_i2c_master_controller.cntrl_fsm.tx_err_reg ),
    .A2(\u_i2c_master_controller.cntrl_fsm.rx_err_reg ),
    .A3(_0337_),
    .B1(\u_i2c_master_controller.cntrl_fsm.txintr_en ),
    .B2(\u_i2c_master_controller.cntrl_fsm.rxintr_en ),
    .X(_0338_));
 sky130_fd_sc_hd__or3_2 _0609_ (.A(\u_i2c_master_controller.cntrl_fsm.o_int_out ),
    .B(\u_i2c_master_controller.cntrl_fsm.abort_ack_reg ),
    .C(_0338_),
    .X(_0200_));
 sky130_fd_sc_hd__and4_2 _0610_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_start_sda_i ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_stop_sda_i ),
    .C(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.o_byte_tx_sda ),
    .D(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.o_rx_ack_sda ),
    .X(_0530_));
 sky130_fd_sc_hd__and2_2 _0611_ (.A(_0288_),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[1] ),
    .X(_0033_));
 sky130_fd_sc_hd__nor2_2 _0612_ (.A(\u_i2c_master_controller.filter_sda.out_n ),
    .B(\u_i2c_master_controller.filter_scl.out_n ),
    .Y(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ));
 sky130_fd_sc_hd__inv_2 _0613_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ),
    .Y(_0339_));
 sky130_fd_sc_hd__and2_2 _0614_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[6] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ),
    .X(_0002_));
 sky130_fd_sc_hd__and2_2 _0615_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[6] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0001_));
 sky130_fd_sc_hd__and2_2 _0616_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[6] ),
    .X(_0000_));
 sky130_fd_sc_hd__and2_2 _0617_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_err ),
    .B(_0291_),
    .X(\u_i2c_master_controller.cntrl_fsm.tx_err ));
 sky130_fd_sc_hd__and2_2 _0618_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_err ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .X(\u_i2c_master_controller.cntrl_fsm.rx_err ));
 sky130_fd_sc_hd__xor2_2 _0619_ (.A(i_clk_div_lsb[1]),
    .B(i_clk_div_lsb[2]),
    .X(_0091_));
 sky130_fd_sc_hd__a21o_2 _0620_ (.A1(i_clk_div_lsb[1]),
    .A2(i_clk_div_lsb[2]),
    .B1(i_clk_div_lsb[3]),
    .X(_0340_));
 sky130_fd_sc_hd__nand2_2 _0621_ (.A(i_clk_div_lsb[2]),
    .B(i_clk_div_lsb[3]),
    .Y(_0341_));
 sky130_fd_sc_hd__o21ai_2 _0622_ (.A1(_0090_),
    .A2(_0341_),
    .B1(_0340_),
    .Y(_0092_));
 sky130_fd_sc_hd__xnor2_2 _0623_ (.A(i_clk_div_lsb[4]),
    .B(_0340_),
    .Y(_0093_));
 sky130_fd_sc_hd__a2111o_2 _0624_ (.A1(i_clk_div_lsb[1]),
    .A2(i_clk_div_lsb[2]),
    .B1(i_clk_div_lsb[3]),
    .C1(i_clk_div_lsb[4]),
    .D1(i_clk_div_lsb[5]),
    .X(_0342_));
 sky130_fd_sc_hd__o21ai_2 _0625_ (.A1(i_clk_div_lsb[4]),
    .A2(_0340_),
    .B1(i_clk_div_lsb[5]),
    .Y(_0343_));
 sky130_fd_sc_hd__nand2_2 _0626_ (.A(_0342_),
    .B(_0343_),
    .Y(_0094_));
 sky130_fd_sc_hd__xnor2_2 _0627_ (.A(i_clk_div_lsb[6]),
    .B(_0342_),
    .Y(_0095_));
 sky130_fd_sc_hd__or3_2 _0628_ (.A(i_clk_div_lsb[6]),
    .B(i_clk_div_lsb[7]),
    .C(_0342_),
    .X(_0344_));
 sky130_fd_sc_hd__o21ai_2 _0629_ (.A1(i_clk_div_lsb[6]),
    .A2(_0342_),
    .B1(i_clk_div_lsb[7]),
    .Y(_0345_));
 sky130_fd_sc_hd__nand2_2 _0630_ (.A(_0344_),
    .B(_0345_),
    .Y(_0096_));
 sky130_fd_sc_hd__or2_2 _0631_ (.A(i_mode_reg[0]),
    .B(_0344_),
    .X(_0346_));
 sky130_fd_sc_hd__nand2_2 _0632_ (.A(i_mode_reg[0]),
    .B(_0344_),
    .Y(_0347_));
 sky130_fd_sc_hd__nand2_2 _0633_ (.A(_0346_),
    .B(_0347_),
    .Y(_0097_));
 sky130_fd_sc_hd__xnor2_2 _0634_ (.A(i_mode_reg[1]),
    .B(_0346_),
    .Y(_0098_));
 sky130_fd_sc_hd__and2b_2 _0635_ (.A_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_done ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ),
    .X(_0348_));
 sky130_fd_sc_hd__o2bb2a_2 _0636_ (.A1_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_stop_gen_en ),
    .A2_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ),
    .B1(_0033_),
    .B2(_0348_),
    .X(_0032_));
 sky130_fd_sc_hd__nand2_2 _0637_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_done ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ),
    .Y(_0349_));
 sky130_fd_sc_hd__a32o_2 _0638_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[1] ),
    .A3(_0349_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_stop_gen_en ),
    .X(_0031_));
 sky130_fd_sc_hd__a21oi_2 _0639_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_done ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ),
    .Y(_0350_));
 sky130_fd_sc_hd__a211oi_2 _0640_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_stop_gen_en ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ),
    .B1(_0033_),
    .C1(_0350_),
    .Y(_0030_));
 sky130_fd_sc_hd__a22o_2 _0641_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[2] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_done ),
    .B1(_0339_),
    .B2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[6] ),
    .X(_0029_));
 sky130_fd_sc_hd__a21o_2 _0642_ (.A1(_0288_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[1] ),
    .X(_0028_));
 sky130_fd_sc_hd__a22o_2 _0643_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[4] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[0] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_start_gen_en ),
    .X(_0027_));
 sky130_fd_sc_hd__a22o_2 _0644_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[3] ),
    .B2(_0298_),
    .X(_0026_));
 sky130_fd_sc_hd__and2_2 _0645_ (.A(_0288_),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[4] ),
    .X(_0351_));
 sky130_fd_sc_hd__a21o_2 _0646_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[2] ),
    .A2(_0296_),
    .B1(_0351_),
    .X(_0025_));
 sky130_fd_sc_hd__a22o_2 _0647_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[0] ),
    .A2(_0297_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[3] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_en ),
    .X(_0024_));
 sky130_fd_sc_hd__or2_2 _0648_ (.A(\u_i2c_master_controller.filter_scl.out_n ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ),
    .X(_0352_));
 sky130_fd_sc_hd__a2bb2o_2 _0649_ (.A1_N(_0299_),
    .A2_N(_0352_),
    .B1(_0288_),
    .B2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[1] ),
    .X(_0023_));
 sky130_fd_sc_hd__a22o_2 _0650_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[2] ),
    .B2(_0294_),
    .X(_0022_));
 sky130_fd_sc_hd__a22o_2 _0651_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[1] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[2] ),
    .B2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ),
    .X(_0021_));
 sky130_fd_sc_hd__a22o_2 _0652_ (.A1(_0282_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[3] ),
    .B2(_0352_),
    .X(_0020_));
 sky130_fd_sc_hd__and2_2 _0653_ (.A(\u_i2c_master_controller.filter_scl.out_n ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[0] ),
    .X(_0019_));
 sky130_fd_sc_hd__a21oi_2 _0654_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[1] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[2] ),
    .Y(_0353_));
 sky130_fd_sc_hd__nor2_2 _0655_ (.A(_0019_),
    .B(_0353_),
    .Y(_0018_));
 sky130_fd_sc_hd__o21a_2 _0656_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[0] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[1] ),
    .B1(_0288_),
    .X(_0017_));
 sky130_fd_sc_hd__nor3_2 _0657_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_err ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ),
    .C(\u_i2c_master_controller.cntrl_fsm.abort_reg ),
    .Y(_0354_));
 sky130_fd_sc_hd__and2_2 _0658_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[9] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_done ),
    .X(_0037_));
 sky130_fd_sc_hd__nor2_2 _0659_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ),
    .Y(_0355_));
 sky130_fd_sc_hd__or2_2 _0660_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ),
    .X(_0356_));
 sky130_fd_sc_hd__nand2b_2 _0661_ (.A_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ),
    .B(\u_i2c_master_controller.cntrl_fsm.adr_mode ),
    .Y(_0357_));
 sky130_fd_sc_hd__and4_2 _0662_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ),
    .C(_0356_),
    .D(_0357_),
    .X(_0358_));
 sky130_fd_sc_hd__o21a_2 _0663_ (.A1(_0037_),
    .A2(_0358_),
    .B1(_0354_),
    .X(_0042_));
 sky130_fd_sc_hd__a21o_2 _0664_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[9] ),
    .A2(_0300_),
    .B1(_0042_),
    .X(_0016_));
 sky130_fd_sc_hd__a22o_2 _0665_ (.A1(_0290_),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start_gen_ack ),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ),
    .X(_0015_));
 sky130_fd_sc_hd__and3_2 _0666_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ),
    .C(\u_i2c_master_controller.cntrl_fsm.adr_mode ),
    .X(_0359_));
 sky130_fd_sc_hd__a22o_2 _0667_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ),
    .A2(_0292_),
    .B1(_0354_),
    .B2(_0359_),
    .X(_0014_));
 sky130_fd_sc_hd__o21a_2 _0668_ (.A1(_0302_),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_changed ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .X(_0039_));
 sky130_fd_sc_hd__a21o_2 _0669_ (.A1(_0293_),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[6] ),
    .B1(_0039_),
    .X(_0013_));
 sky130_fd_sc_hd__a22o_2 _0670_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[5] ),
    .B2(_0303_),
    .X(_0012_));
 sky130_fd_sc_hd__a31o_2 _0671_ (.A1(_0291_),
    .A2(_0356_),
    .A3(_0357_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ),
    .X(_0360_));
 sky130_fd_sc_hd__and3_2 _0672_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ),
    .B(_0354_),
    .C(_0360_),
    .X(_0041_));
 sky130_fd_sc_hd__a21o_2 _0673_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ),
    .A2(_0292_),
    .B1(_0041_),
    .X(_0011_));
 sky130_fd_sc_hd__and3b_2 _0674_ (.A_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_changed ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ),
    .C(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .X(_0361_));
 sky130_fd_sc_hd__a221o_2 _0675_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ),
    .A2(_0301_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[5] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i2cbus_busy_i ),
    .C1(_0361_),
    .X(_0010_));
 sky130_fd_sc_hd__a22o_2 _0676_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .A2(_0292_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0009_));
 sky130_fd_sc_hd__nor2_2 _0677_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ),
    .B(_0356_),
    .Y(_0362_));
 sky130_fd_sc_hd__or2_2 _0678_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ),
    .B(_0356_),
    .X(_0363_));
 sky130_fd_sc_hd__a21oi_2 _0679_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ),
    .A2(_0363_),
    .B1(_0037_),
    .Y(_0364_));
 sky130_fd_sc_hd__nor2_2 _0680_ (.A(_0354_),
    .B(_0364_),
    .Y(_0008_));
 sky130_fd_sc_hd__a22o_2 _0681_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_stop_detect ),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[6] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ),
    .B2(_0302_),
    .X(_0007_));
 sky130_fd_sc_hd__a22o_2 _0682_ (.A1(_0290_),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[0] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_en ),
    .X(_0006_));
 sky130_fd_sc_hd__a21o_2 _0683_ (.A1(_0298_),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[0] ),
    .B1(_0001_),
    .X(_0005_));
 sky130_fd_sc_hd__a22o_2 _0684_ (.A1(_0290_),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[1] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[0] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_rx_en ),
    .X(_0004_));
 sky130_fd_sc_hd__a21o_2 _0685_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[0] ),
    .A2(_0304_),
    .B1(_0000_),
    .X(_0003_));
 sky130_fd_sc_hd__nand2_2 _0686_ (.A(i_slave_addr_reg[1]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ),
    .Y(_0365_));
 sky130_fd_sc_hd__or2_2 _0687_ (.A(i_slave_addr_reg[1]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ),
    .X(_0366_));
 sky130_fd_sc_hd__or2_2 _0688_ (.A(i_slave_addr_reg[6]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ),
    .X(_0367_));
 sky130_fd_sc_hd__nand2_2 _0689_ (.A(i_slave_addr_reg[6]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ),
    .Y(_0368_));
 sky130_fd_sc_hd__xor2_2 _0690_ (.A(i_slave_addr_reg[2]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[3] ),
    .X(_0369_));
 sky130_fd_sc_hd__or2_2 _0691_ (.A(i_slave_addr_reg[0]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ),
    .X(_0370_));
 sky130_fd_sc_hd__nand2_2 _0692_ (.A(i_slave_addr_reg[0]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ),
    .Y(_0371_));
 sky130_fd_sc_hd__xor2_2 _0693_ (.A(i_slave_addr_reg[3]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[4] ),
    .X(_0372_));
 sky130_fd_sc_hd__or2_2 _0694_ (.A(i_slave_addr_reg[5]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ),
    .X(_0373_));
 sky130_fd_sc_hd__nand2_2 _0695_ (.A(i_slave_addr_reg[5]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ),
    .Y(_0374_));
 sky130_fd_sc_hd__xor2_2 _0696_ (.A(i_slave_addr_reg[4]),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[5] ),
    .X(_0375_));
 sky130_fd_sc_hd__a22o_2 _0697_ (.A1(_0367_),
    .A2(_0368_),
    .B1(_0373_),
    .B2(_0374_),
    .X(_0376_));
 sky130_fd_sc_hd__a221o_2 _0698_ (.A1(_0365_),
    .A2(_0366_),
    .B1(_0370_),
    .B2(_0371_),
    .C1(_0372_),
    .X(_0377_));
 sky130_fd_sc_hd__or4_2 _0699_ (.A(_0369_),
    .B(_0375_),
    .C(_0376_),
    .D(_0377_),
    .X(_0034_));
 sky130_fd_sc_hd__xor2_2 _0700_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ),
    .X(_0378_));
 sky130_fd_sc_hd__a21o_2 _0701_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ),
    .A2(_0307_),
    .B1(_0378_),
    .X(_0379_));
 sky130_fd_sc_hd__or4b_2 _0702_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[7] ),
    .D_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[3] ),
    .X(_0380_));
 sky130_fd_sc_hd__and2b_2 _0703_ (.A_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ),
    .X(_0381_));
 sky130_fd_sc_hd__or4b_2 _0704_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .B(_0380_),
    .C(_0381_),
    .D_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .X(_0382_));
 sky130_fd_sc_hd__or4_2 _0705_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[13] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[15] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ),
    .X(_0383_));
 sky130_fd_sc_hd__or4_2 _0706_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[11] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ),
    .X(_0384_));
 sky130_fd_sc_hd__or2_2 _0707_ (.A(_0383_),
    .B(_0384_),
    .X(_0385_));
 sky130_fd_sc_hd__nor3_2 _0708_ (.A(_0379_),
    .B(_0382_),
    .C(_0385_),
    .Y(_0070_));
 sky130_fd_sc_hd__and2b_2 _0709_ (.A_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ),
    .X(_0386_));
 sky130_fd_sc_hd__and2b_2 _0710_ (.A_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ),
    .X(_0387_));
 sky130_fd_sc_hd__a211o_2 _0711_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[4] ),
    .A2(_0311_),
    .B1(_0386_),
    .C1(_0387_),
    .X(_0388_));
 sky130_fd_sc_hd__or4b_2 _0712_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[7] ),
    .D_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[3] ),
    .X(_0389_));
 sky130_fd_sc_hd__and2b_2 _0713_ (.A_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .X(_0390_));
 sky130_fd_sc_hd__or4b_2 _0714_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .B(_0389_),
    .C(_0390_),
    .D_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .X(_0391_));
 sky130_fd_sc_hd__or4_2 _0715_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[13] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[15] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ),
    .X(_0392_));
 sky130_fd_sc_hd__or4_2 _0716_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[11] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ),
    .X(_0393_));
 sky130_fd_sc_hd__or2_2 _0717_ (.A(_0392_),
    .B(_0393_),
    .X(_0394_));
 sky130_fd_sc_hd__nor3_2 _0718_ (.A(_0388_),
    .B(_0391_),
    .C(_0394_),
    .Y(_0089_));
 sky130_fd_sc_hd__xnor2_2 _0719_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[8] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[8] ),
    .Y(_0395_));
 sky130_fd_sc_hd__xor2_2 _0720_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[2] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[2] ),
    .X(_0396_));
 sky130_fd_sc_hd__xor2_2 _0721_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[0] ),
    .X(_0397_));
 sky130_fd_sc_hd__xnor2_2 _0722_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[1] ),
    .Y(_0398_));
 sky130_fd_sc_hd__o221a_2 _0723_ (.A1(_0286_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[3] ),
    .B1(_0315_),
    .B2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .C1(_0395_),
    .X(_0399_));
 sky130_fd_sc_hd__a221o_2 _0724_ (.A1(_0286_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[3] ),
    .B1(_0315_),
    .B2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ),
    .C1(_0397_),
    .X(_0400_));
 sky130_fd_sc_hd__o2bb2a_2 _0725_ (.A1_N(_0283_),
    .A2_N(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[6] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[5] ),
    .B2(_0284_),
    .X(_0401_));
 sky130_fd_sc_hd__o221a_2 _0726_ (.A1(_0285_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[4] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[6] ),
    .B2(_0283_),
    .C1(_0401_),
    .X(_0402_));
 sky130_fd_sc_hd__a221oi_2 _0727_ (.A1(_0285_),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[4] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[5] ),
    .B2(_0284_),
    .C1(_0396_),
    .Y(_0403_));
 sky130_fd_sc_hd__and3_2 _0728_ (.A(_0398_),
    .B(_0399_),
    .C(_0403_),
    .X(_0404_));
 sky130_fd_sc_hd__and3b_2 _0729_ (.A_N(_0400_),
    .B(_0402_),
    .C(_0404_),
    .X(_0045_));
 sky130_fd_sc_hd__nor2_2 _0730_ (.A(\u_i2c_master_controller.bps_mode[1] ),
    .B(\u_i2c_master_controller.bps_mode[0] ),
    .Y(_0050_));
 sky130_fd_sc_hd__nor2_2 _0731_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ),
    .Y(_0072_));
 sky130_fd_sc_hd__a21o_2 _0732_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ),
    .B1(_0361_),
    .X(_0036_));
 sky130_fd_sc_hd__and2_2 _0733_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .B(\u_i2c_master_controller.cntrl_fsm.abort_reg ),
    .X(_0035_));
 sky130_fd_sc_hd__and2_2 _0734_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_done ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ),
    .X(_0051_));
 sky130_fd_sc_hd__or2_2 _0735_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[1] ),
    .B(_0351_),
    .X(_0053_));
 sky130_fd_sc_hd__and2_2 _0736_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_detect.state ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ),
    .X(_0071_));
 sky130_fd_sc_hd__mux2_1 _0737_ (.A0(_0361_),
    .A1(_0303_),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[5] ),
    .X(_0038_));
 sky130_fd_sc_hd__a31o_2 _0738_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ),
    .A2(_0289_),
    .A3(o_transmit_data_request),
    .B1(_0359_),
    .X(_0405_));
 sky130_fd_sc_hd__mux2_1 _0739_ (.A0(_0405_),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ),
    .X(_0040_));
 sky130_fd_sc_hd__o21ai_2 _0740_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .A2(_0295_),
    .B1(_0022_),
    .Y(_0047_));
 sky130_fd_sc_hd__o211a_2 _0741_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[1] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[3] ),
    .B1(\u_i2c_master_controller.filter_scl.out_n ),
    .C1(_0295_),
    .X(_0406_));
 sky130_fd_sc_hd__a21o_2 _0742_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ),
    .B1(_0406_),
    .X(_0046_));
 sky130_fd_sc_hd__o21ai_2 _0743_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .A2(_0070_),
    .B1(_0317_),
    .Y(_0054_));
 sky130_fd_sc_hd__o31a_2 _0744_ (.A1(_0379_),
    .A2(_0382_),
    .A3(_0385_),
    .B1(_0317_),
    .X(_0407_));
 sky130_fd_sc_hd__or2_2 _0745_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .X(_0408_));
 sky130_fd_sc_hd__nand2_2 _0746_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .Y(_0409_));
 sky130_fd_sc_hd__and3_2 _0747_ (.A(_0407_),
    .B(_0408_),
    .C(_0409_),
    .X(_0061_));
 sky130_fd_sc_hd__a31o_2 _0748_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .A3(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .X(_0410_));
 sky130_fd_sc_hd__a21oi_2 _0749_ (.A1(_0305_),
    .A2(_0409_),
    .B1(_0410_),
    .Y(_0062_));
 sky130_fd_sc_hd__and4_2 _0750_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[3] ),
    .X(_0411_));
 sky130_fd_sc_hd__a31o_2 _0751_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ),
    .A3(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[3] ),
    .X(_0412_));
 sky130_fd_sc_hd__and3b_2 _0752_ (.A_N(_0411_),
    .B(_0412_),
    .C(_0407_),
    .X(_0063_));
 sky130_fd_sc_hd__nand2_2 _0753_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ),
    .B(_0411_),
    .Y(_0413_));
 sky130_fd_sc_hd__or2_2 _0754_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ),
    .B(_0411_),
    .X(_0414_));
 sky130_fd_sc_hd__and3_2 _0755_ (.A(_0407_),
    .B(_0413_),
    .C(_0414_),
    .X(_0064_));
 sky130_fd_sc_hd__and3_2 _0756_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ),
    .C(_0411_),
    .X(_0415_));
 sky130_fd_sc_hd__a211oi_2 _0757_ (.A1(_0306_),
    .A2(_0413_),
    .B1(_0415_),
    .C1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .Y(_0065_));
 sky130_fd_sc_hd__nand2_2 _0758_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ),
    .B(_0415_),
    .Y(_0416_));
 sky130_fd_sc_hd__or2_2 _0759_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ),
    .B(_0415_),
    .X(_0417_));
 sky130_fd_sc_hd__and3_2 _0760_ (.A(_0407_),
    .B(_0416_),
    .C(_0417_),
    .X(_0066_));
 sky130_fd_sc_hd__and4_2 _0761_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[7] ),
    .X(_0418_));
 sky130_fd_sc_hd__a21o_2 _0762_ (.A1(_0411_),
    .A2(_0418_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .X(_0419_));
 sky130_fd_sc_hd__a21oi_2 _0763_ (.A1(_0308_),
    .A2(_0416_),
    .B1(_0419_),
    .Y(_0067_));
 sky130_fd_sc_hd__a21oi_2 _0764_ (.A1(_0411_),
    .A2(_0418_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ),
    .Y(_0420_));
 sky130_fd_sc_hd__and3_2 _0765_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ),
    .B(_0411_),
    .C(_0418_),
    .X(_0421_));
 sky130_fd_sc_hd__nor3_2 _0766_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .B(_0420_),
    .C(_0421_),
    .Y(_0068_));
 sky130_fd_sc_hd__a21oi_2 _0767_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .A2(_0421_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .Y(_0422_));
 sky130_fd_sc_hd__o21a_2 _0768_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .A2(_0421_),
    .B1(_0422_),
    .X(_0069_));
 sky130_fd_sc_hd__a21oi_2 _0769_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .A2(_0421_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ),
    .Y(_0423_));
 sky130_fd_sc_hd__and3_2 _0770_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ),
    .C(_0421_),
    .X(_0424_));
 sky130_fd_sc_hd__nor3_2 _0771_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .B(_0423_),
    .C(_0424_),
    .Y(_0055_));
 sky130_fd_sc_hd__and4_2 _0772_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[11] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ),
    .X(_0425_));
 sky130_fd_sc_hd__and3_2 _0773_ (.A(_0411_),
    .B(_0418_),
    .C(_0425_),
    .X(_0426_));
 sky130_fd_sc_hd__nor2_2 _0774_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .B(_0426_),
    .Y(_0427_));
 sky130_fd_sc_hd__o21a_2 _0775_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[11] ),
    .A2(_0424_),
    .B1(_0427_),
    .X(_0056_));
 sky130_fd_sc_hd__or2_2 _0776_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ),
    .B(_0426_),
    .X(_0428_));
 sky130_fd_sc_hd__nand2_2 _0777_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ),
    .B(_0426_),
    .Y(_0429_));
 sky130_fd_sc_hd__and3_2 _0778_ (.A(_0317_),
    .B(_0428_),
    .C(_0429_),
    .X(_0057_));
 sky130_fd_sc_hd__and2_2 _0779_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[13] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ),
    .X(_0430_));
 sky130_fd_sc_hd__and4_2 _0780_ (.A(_0411_),
    .B(_0418_),
    .C(_0425_),
    .D(_0430_),
    .X(_0431_));
 sky130_fd_sc_hd__a211oi_2 _0781_ (.A1(_0309_),
    .A2(_0429_),
    .B1(_0431_),
    .C1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .Y(_0058_));
 sky130_fd_sc_hd__a21oi_2 _0782_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ),
    .A2(_0431_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .Y(_0432_));
 sky130_fd_sc_hd__o21a_2 _0783_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ),
    .A2(_0431_),
    .B1(_0432_),
    .X(_0059_));
 sky130_fd_sc_hd__a21oi_2 _0784_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ),
    .A2(_0431_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[15] ),
    .Y(_0433_));
 sky130_fd_sc_hd__a31o_2 _0785_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[15] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ),
    .A3(_0431_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ),
    .X(_0434_));
 sky130_fd_sc_hd__nor2_2 _0786_ (.A(_0433_),
    .B(_0434_),
    .Y(_0060_));
 sky130_fd_sc_hd__o21ai_2 _0787_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .A2(_0089_),
    .B1(_0318_),
    .Y(_0073_));
 sky130_fd_sc_hd__o31a_2 _0788_ (.A1(_0388_),
    .A2(_0391_),
    .A3(_0394_),
    .B1(_0318_),
    .X(_0435_));
 sky130_fd_sc_hd__or2_2 _0789_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .X(_0436_));
 sky130_fd_sc_hd__nand2_2 _0790_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .Y(_0437_));
 sky130_fd_sc_hd__and3_2 _0791_ (.A(_0435_),
    .B(_0436_),
    .C(_0437_),
    .X(_0080_));
 sky130_fd_sc_hd__a31o_2 _0792_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .A3(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .X(_0438_));
 sky130_fd_sc_hd__a21oi_2 _0793_ (.A1(_0310_),
    .A2(_0437_),
    .B1(_0438_),
    .Y(_0081_));
 sky130_fd_sc_hd__and4_2 _0794_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[3] ),
    .X(_0439_));
 sky130_fd_sc_hd__a31o_2 _0795_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ),
    .A3(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[3] ),
    .X(_0440_));
 sky130_fd_sc_hd__and3b_2 _0796_ (.A_N(_0439_),
    .B(_0440_),
    .C(_0435_),
    .X(_0082_));
 sky130_fd_sc_hd__nand2_2 _0797_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .B(_0439_),
    .Y(_0441_));
 sky130_fd_sc_hd__or2_2 _0798_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .B(_0439_),
    .X(_0442_));
 sky130_fd_sc_hd__and3_2 _0799_ (.A(_0435_),
    .B(_0441_),
    .C(_0442_),
    .X(_0083_));
 sky130_fd_sc_hd__and3_2 _0800_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ),
    .C(_0439_),
    .X(_0443_));
 sky130_fd_sc_hd__a211oi_2 _0801_ (.A1(_0312_),
    .A2(_0441_),
    .B1(_0443_),
    .C1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .Y(_0084_));
 sky130_fd_sc_hd__nand2_2 _0802_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ),
    .B(_0443_),
    .Y(_0444_));
 sky130_fd_sc_hd__or2_2 _0803_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ),
    .B(_0443_),
    .X(_0445_));
 sky130_fd_sc_hd__and3_2 _0804_ (.A(_0435_),
    .B(_0444_),
    .C(_0445_),
    .X(_0085_));
 sky130_fd_sc_hd__and4_2 _0805_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[7] ),
    .X(_0446_));
 sky130_fd_sc_hd__a21o_2 _0806_ (.A1(_0439_),
    .A2(_0446_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .X(_0447_));
 sky130_fd_sc_hd__a21oi_2 _0807_ (.A1(_0313_),
    .A2(_0444_),
    .B1(_0447_),
    .Y(_0086_));
 sky130_fd_sc_hd__a21oi_2 _0808_ (.A1(_0439_),
    .A2(_0446_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ),
    .Y(_0448_));
 sky130_fd_sc_hd__and3_2 _0809_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ),
    .B(_0439_),
    .C(_0446_),
    .X(_0449_));
 sky130_fd_sc_hd__nor3_2 _0810_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .B(_0448_),
    .C(_0449_),
    .Y(_0087_));
 sky130_fd_sc_hd__a21oi_2 _0811_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .A2(_0449_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .Y(_0450_));
 sky130_fd_sc_hd__o21a_2 _0812_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .A2(_0449_),
    .B1(_0450_),
    .X(_0088_));
 sky130_fd_sc_hd__a21oi_2 _0813_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .A2(_0449_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ),
    .Y(_0451_));
 sky130_fd_sc_hd__and3_2 _0814_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ),
    .C(_0449_),
    .X(_0452_));
 sky130_fd_sc_hd__nor3_2 _0815_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .B(_0451_),
    .C(_0452_),
    .Y(_0074_));
 sky130_fd_sc_hd__and4_2 _0816_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[11] ),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ),
    .X(_0453_));
 sky130_fd_sc_hd__and3_2 _0817_ (.A(_0439_),
    .B(_0446_),
    .C(_0453_),
    .X(_0454_));
 sky130_fd_sc_hd__nor2_2 _0818_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .B(_0454_),
    .Y(_0455_));
 sky130_fd_sc_hd__o21a_2 _0819_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[11] ),
    .A2(_0452_),
    .B1(_0455_),
    .X(_0075_));
 sky130_fd_sc_hd__or2_2 _0820_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ),
    .B(_0454_),
    .X(_0456_));
 sky130_fd_sc_hd__nand2_2 _0821_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ),
    .B(_0454_),
    .Y(_0457_));
 sky130_fd_sc_hd__and3_2 _0822_ (.A(_0318_),
    .B(_0456_),
    .C(_0457_),
    .X(_0076_));
 sky130_fd_sc_hd__and2_2 _0823_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[13] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ),
    .X(_0458_));
 sky130_fd_sc_hd__and4_2 _0824_ (.A(_0439_),
    .B(_0446_),
    .C(_0453_),
    .D(_0458_),
    .X(_0459_));
 sky130_fd_sc_hd__a211oi_2 _0825_ (.A1(_0314_),
    .A2(_0457_),
    .B1(_0459_),
    .C1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .Y(_0077_));
 sky130_fd_sc_hd__a21oi_2 _0826_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ),
    .A2(_0459_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .Y(_0460_));
 sky130_fd_sc_hd__o21a_2 _0827_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ),
    .A2(_0459_),
    .B1(_0460_),
    .X(_0078_));
 sky130_fd_sc_hd__a21oi_2 _0828_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ),
    .A2(_0459_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[15] ),
    .Y(_0461_));
 sky130_fd_sc_hd__a31o_2 _0829_ (.A1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[15] ),
    .A2(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ),
    .A3(_0459_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ),
    .X(_0462_));
 sky130_fd_sc_hd__nor2_2 _0830_ (.A(_0461_),
    .B(_0462_),
    .Y(_0079_));
 sky130_fd_sc_hd__or4_2 _0831_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ),
    .C(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ),
    .D(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ),
    .X(_0463_));
 sky130_fd_sc_hd__or4_2 _0832_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ),
    .C(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ),
    .D(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ),
    .X(_0464_));
 sky130_fd_sc_hd__nor2_2 _0833_ (.A(_0463_),
    .B(_0464_),
    .Y(_0465_));
 sky130_fd_sc_hd__a22o_2 _0834_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[3] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[4] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ),
    .X(_0466_));
 sky130_fd_sc_hd__a221o_2 _0835_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[1] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[7] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ),
    .C1(_0466_),
    .X(_0467_));
 sky130_fd_sc_hd__a22o_2 _0836_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[5] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[6] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ),
    .X(_0468_));
 sky130_fd_sc_hd__a221o_2 _0837_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[0] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[2] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ),
    .C1(_0468_),
    .X(_0469_));
 sky130_fd_sc_hd__or3_2 _0838_ (.A(_0465_),
    .B(_0467_),
    .C(_0469_),
    .X(_0281_));
 sky130_fd_sc_hd__nor3_2 _0839_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ),
    .B(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[1] ),
    .C(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[3] ),
    .Y(_0052_));
 sky130_fd_sc_hd__o21a_2 _0840_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _0841_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ),
    .A1(i_slave_addr_reg[0]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0193_));
 sky130_fd_sc_hd__mux2_1 _0842_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ),
    .A1(i_slave_addr_reg[1]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0194_));
 sky130_fd_sc_hd__mux2_1 _0843_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[3] ),
    .A1(i_slave_addr_reg[2]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0195_));
 sky130_fd_sc_hd__mux2_1 _0844_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[4] ),
    .A1(i_slave_addr_reg[3]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0196_));
 sky130_fd_sc_hd__mux2_1 _0845_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[5] ),
    .A1(i_slave_addr_reg[4]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0197_));
 sky130_fd_sc_hd__mux2_1 _0846_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ),
    .A1(i_slave_addr_reg[5]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0198_));
 sky130_fd_sc_hd__mux2_1 _0847_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ),
    .A1(i_slave_addr_reg[6]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0199_));
 sky130_fd_sc_hd__or3b_2 _0848_ (.A(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg ),
    .B(i_config_reg[1]),
    .C_N(i_rst_n),
    .X(_0470_));
 sky130_fd_sc_hd__nor3_2 _0849_ (.A(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg2 ),
    .C(_0470_),
    .Y(_0101_));
 sky130_fd_sc_hd__mux2_1 _0850_ (.A0(\u_i2c_master_controller.bps_mode[0] ),
    .A1(i_mode_reg[6]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0201_));
 sky130_fd_sc_hd__mux2_1 _0851_ (.A0(\u_i2c_master_controller.bps_mode[1] ),
    .A1(i_mode_reg[7]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0202_));
 sky130_fd_sc_hd__mux2_1 _0852_ (.A0(\u_i2c_master_controller.cntrl_fsm.adr_mode ),
    .A1(i_mode_reg[5]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0203_));
 sky130_fd_sc_hd__mux2_1 _0853_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .A1(i_mode_reg[3]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0204_));
 sky130_fd_sc_hd__mux2_1 _0854_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[0] ),
    .A1(i_byte_cnt_reg[0]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0205_));
 sky130_fd_sc_hd__mux2_1 _0855_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[1] ),
    .A1(i_byte_cnt_reg[1]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0206_));
 sky130_fd_sc_hd__mux2_1 _0856_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[2] ),
    .A1(i_byte_cnt_reg[2]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0207_));
 sky130_fd_sc_hd__mux2_1 _0857_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[3] ),
    .A1(i_byte_cnt_reg[3]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0208_));
 sky130_fd_sc_hd__mux2_1 _0858_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[4] ),
    .A1(i_byte_cnt_reg[4]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0209_));
 sky130_fd_sc_hd__mux2_1 _0859_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[5] ),
    .A1(i_byte_cnt_reg[5]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0210_));
 sky130_fd_sc_hd__mux2_1 _0860_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[6] ),
    .A1(i_byte_cnt_reg[6]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0211_));
 sky130_fd_sc_hd__mux2_1 _0861_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_cnt[7] ),
    .A1(i_byte_cnt_reg[7]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0212_));
 sky130_fd_sc_hd__nand2b_2 _0862_ (.A_N(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg2 ),
    .B(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg1 ),
    .Y(_0471_));
 sky130_fd_sc_hd__and2b_2 _0863_ (.A_N(\u_i2c_master_controller.cntrl_fsm.abort_ack_d1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.abort_ack ),
    .X(_0472_));
 sky130_fd_sc_hd__o21a_2 _0864_ (.A1(\u_i2c_master_controller.cntrl_fsm.abort_ack_reg ),
    .A2(_0472_),
    .B1(_0471_),
    .X(_0213_));
 sky130_fd_sc_hd__and2b_2 _0865_ (.A_N(\u_i2c_master_controller.cntrl_fsm.rx_err_d1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.rx_err ),
    .X(_0473_));
 sky130_fd_sc_hd__o21a_2 _0866_ (.A1(\u_i2c_master_controller.cntrl_fsm.rx_err_reg ),
    .A2(_0473_),
    .B1(_0471_),
    .X(_0214_));
 sky130_fd_sc_hd__and2b_2 _0867_ (.A_N(\u_i2c_master_controller.cntrl_fsm.tx_err_d1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.tx_err ),
    .X(_0474_));
 sky130_fd_sc_hd__o21a_2 _0868_ (.A1(\u_i2c_master_controller.cntrl_fsm.tx_err_reg ),
    .A2(_0474_),
    .B1(_0471_),
    .X(_0215_));
 sky130_fd_sc_hd__and2b_2 _0869_ (.A_N(\u_i2c_master_controller.cntrl_fsm.rx_done_d1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_rx_done ),
    .X(_0475_));
 sky130_fd_sc_hd__o21a_2 _0870_ (.A1(\u_i2c_master_controller.cntrl_fsm.rx_done_reg ),
    .A2(_0475_),
    .B1(_0471_),
    .X(_0216_));
 sky130_fd_sc_hd__and2b_2 _0871_ (.A_N(\u_i2c_master_controller.cntrl_fsm.tx_done_d1 ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_tx_done ),
    .X(_0476_));
 sky130_fd_sc_hd__o21a_2 _0872_ (.A1(\u_i2c_master_controller.cntrl_fsm.tx_done_reg ),
    .A2(_0476_),
    .B1(_0471_),
    .X(_0217_));
 sky130_fd_sc_hd__mux2_1 _0873_ (.A0(\u_i2c_master_controller.cntrl_fsm.txintr_en ),
    .A1(i_config_reg[3]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0218_));
 sky130_fd_sc_hd__mux2_1 _0874_ (.A0(\u_i2c_master_controller.cntrl_fsm.rxintr_en ),
    .A1(i_config_reg[2]),
    .S(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ),
    .X(_0219_));
 sky130_fd_sc_hd__a21bo_2 _0875_ (.A1(\u_i2c_master_controller.filter_scl.out_n ),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ),
    .B1_N(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[6] ),
    .X(_0477_));
 sky130_fd_sc_hd__a21o_2 _0876_ (.A1(_0288_),
    .A2(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.o_rx_ack_sda ),
    .B1(_0477_),
    .X(_0220_));
 sky130_fd_sc_hd__nand2_2 _0877_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[5] ),
    .Y(_0478_));
 sky130_fd_sc_hd__mux2_1 _0878_ (.A0(_0287_),
    .A1(o_receive_data[0]),
    .S(_0478_),
    .X(_0221_));
 sky130_fd_sc_hd__nand2_2 _0879_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[3] ),
    .Y(_0479_));
 sky130_fd_sc_hd__mux2_1 _0880_ (.A0(_0287_),
    .A1(o_receive_data[1]),
    .S(_0479_),
    .X(_0222_));
 sky130_fd_sc_hd__nand2_2 _0881_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[8] ),
    .Y(_0480_));
 sky130_fd_sc_hd__mux2_1 _0882_ (.A0(_0287_),
    .A1(o_receive_data[2]),
    .S(_0480_),
    .X(_0223_));
 sky130_fd_sc_hd__nand2_2 _0883_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[2] ),
    .Y(_0481_));
 sky130_fd_sc_hd__mux2_1 _0884_ (.A0(_0287_),
    .A1(o_receive_data[3]),
    .S(_0481_),
    .X(_0224_));
 sky130_fd_sc_hd__nand2_2 _0885_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[7] ),
    .Y(_0482_));
 sky130_fd_sc_hd__mux2_1 _0886_ (.A0(_0287_),
    .A1(o_receive_data[4]),
    .S(_0482_),
    .X(_0225_));
 sky130_fd_sc_hd__nand2_2 _0887_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[4] ),
    .Y(_0483_));
 sky130_fd_sc_hd__mux2_1 _0888_ (.A0(_0287_),
    .A1(o_receive_data[5]),
    .S(_0483_),
    .X(_0226_));
 sky130_fd_sc_hd__nand2_2 _0889_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[9] ),
    .Y(_0484_));
 sky130_fd_sc_hd__mux2_1 _0890_ (.A0(_0287_),
    .A1(o_receive_data[6]),
    .S(_0484_),
    .X(_0227_));
 sky130_fd_sc_hd__nand2_2 _0891_ (.A(_0288_),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[1] ),
    .Y(_0485_));
 sky130_fd_sc_hd__mux2_1 _0892_ (.A0(_0287_),
    .A1(o_receive_data[7]),
    .S(_0485_),
    .X(_0228_));
 sky130_fd_sc_hd__a22o_2 _0893_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_err ),
    .A2(_0292_),
    .B1(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ),
    .B2(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[6] ),
    .X(_0229_));
 sky130_fd_sc_hd__a2bb2o_2 _0894_ (.A1_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_i2c_busy ),
    .A2_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[6] ),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_stop_detect ),
    .X(_0486_));
 sky130_fd_sc_hd__nor2_2 _0895_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ),
    .B(_0486_),
    .Y(_0230_));
 sky130_fd_sc_hd__a21oi_2 _0896_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ),
    .Y(_0487_));
 sky130_fd_sc_hd__and3b_2 _0897_ (.A_N(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ),
    .B(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ),
    .C(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .X(_0488_));
 sky130_fd_sc_hd__a22o_2 _0898_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_tx_done ),
    .A2(_0487_),
    .B1(_0488_),
    .B2(_0291_),
    .X(_0231_));
 sky130_fd_sc_hd__a22o_2 _0899_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_rx_done ),
    .A2(_0487_),
    .B1(_0488_),
    .B2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .X(_0232_));
 sky130_fd_sc_hd__a21o_2 _0900_ (.A1(_0293_),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i2cbus_busy_i ),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_start_detect ),
    .X(_0233_));
 sky130_fd_sc_hd__a221o_2 _0901_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ),
    .B1(i_transmit_data[0]),
    .B2(_0355_),
    .C1(_0362_),
    .X(_0489_));
 sky130_fd_sc_hd__o21a_2 _0902_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[0] ),
    .A2(_0363_),
    .B1(_0489_),
    .X(_0234_));
 sky130_fd_sc_hd__a21oi_2 _0903_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.adr_mode ),
    .B1(_0362_),
    .Y(_0490_));
 sky130_fd_sc_hd__a21o_2 _0904_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ),
    .A2(\u_i2c_master_controller.cntrl_fsm.adr_mode ),
    .B1(_0362_),
    .X(_0491_));
 sky130_fd_sc_hd__mux2_1 _0905_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ),
    .A1(i_transmit_data[1]),
    .S(_0355_),
    .X(_0492_));
 sky130_fd_sc_hd__a22o_2 _0906_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[1] ),
    .A2(_0362_),
    .B1(_0490_),
    .B2(_0492_),
    .X(_0235_));
 sky130_fd_sc_hd__mux2_1 _0907_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ),
    .A1(i_transmit_data[2]),
    .S(_0355_),
    .X(_0493_));
 sky130_fd_sc_hd__a22o_2 _0908_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[2] ),
    .A2(_0362_),
    .B1(_0490_),
    .B2(_0493_),
    .X(_0236_));
 sky130_fd_sc_hd__mux2_1 _0909_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[3] ),
    .A1(i_transmit_data[3]),
    .S(_0355_),
    .X(_0494_));
 sky130_fd_sc_hd__a22o_2 _0910_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[3] ),
    .A2(_0362_),
    .B1(_0490_),
    .B2(_0494_),
    .X(_0237_));
 sky130_fd_sc_hd__mux2_1 _0911_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[4] ),
    .A1(i_transmit_data[4]),
    .S(_0355_),
    .X(_0495_));
 sky130_fd_sc_hd__o22a_2 _0912_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[4] ),
    .A2(_0363_),
    .B1(_0491_),
    .B2(_0495_),
    .X(_0238_));
 sky130_fd_sc_hd__mux2_1 _0913_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[5] ),
    .A1(i_transmit_data[5]),
    .S(_0355_),
    .X(_0496_));
 sky130_fd_sc_hd__o22a_2 _0914_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[5] ),
    .A2(_0363_),
    .B1(_0491_),
    .B2(_0496_),
    .X(_0239_));
 sky130_fd_sc_hd__mux2_1 _0915_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ),
    .A1(i_transmit_data[6]),
    .S(_0355_),
    .X(_0497_));
 sky130_fd_sc_hd__o22a_2 _0916_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[6] ),
    .A2(_0363_),
    .B1(_0491_),
    .B2(_0497_),
    .X(_0240_));
 sky130_fd_sc_hd__mux2_1 _0917_ (.A0(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ),
    .A1(i_transmit_data[7]),
    .S(_0355_),
    .X(_0498_));
 sky130_fd_sc_hd__o22a_2 _0918_ (.A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[7] ),
    .A2(_0363_),
    .B1(_0491_),
    .B2(_0498_),
    .X(_0241_));
 sky130_fd_sc_hd__xnor2_2 _0919_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[4] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ),
    .Y(_0499_));
 sky130_fd_sc_hd__xnor2_2 _0920_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[6] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ),
    .Y(_0500_));
 sky130_fd_sc_hd__xnor2_2 _0921_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[3] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .Y(_0501_));
 sky130_fd_sc_hd__xnor2_2 _0922_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[2] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[2] ),
    .Y(_0502_));
 sky130_fd_sc_hd__xnor2_2 _0923_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[5] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[5] ),
    .Y(_0503_));
 sky130_fd_sc_hd__xnor2_2 _0924_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[0] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .Y(_0504_));
 sky130_fd_sc_hd__xnor2_2 _0925_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[7] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[7] ),
    .Y(_0505_));
 sky130_fd_sc_hd__xnor2_2 _0926_ (.A(\u_i2c_master_controller.cntrl_fsm.byte_cnt[1] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ),
    .Y(_0506_));
 sky130_fd_sc_hd__and4_2 _0927_ (.A(_0501_),
    .B(_0503_),
    .C(_0505_),
    .D(_0506_),
    .X(_0507_));
 sky130_fd_sc_hd__and4_2 _0928_ (.A(_0499_),
    .B(_0500_),
    .C(_0502_),
    .D(_0504_),
    .X(_0508_));
 sky130_fd_sc_hd__a21oi_2 _0929_ (.A1(_0507_),
    .A2(_0508_),
    .B1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ),
    .Y(_0509_));
 sky130_fd_sc_hd__nor2_2 _0930_ (.A(_0282_),
    .B(_0509_),
    .Y(_0242_));
 sky130_fd_sc_hd__a21oi_2 _0931_ (.A1(_0507_),
    .A2(_0508_),
    .B1(_0282_),
    .Y(_0510_));
 sky130_fd_sc_hd__or2_2 _0932_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.rx_en ),
    .B(o_transmit_data_request),
    .X(_0511_));
 sky130_fd_sc_hd__or2_2 _0933_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .B(_0511_),
    .X(_0512_));
 sky130_fd_sc_hd__nand2_2 _0934_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .B(_0511_),
    .Y(_0513_));
 sky130_fd_sc_hd__and3_2 _0935_ (.A(_0510_),
    .B(_0512_),
    .C(_0513_),
    .X(_0243_));
 sky130_fd_sc_hd__a21o_2 _0936_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .A2(_0511_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ),
    .X(_0514_));
 sky130_fd_sc_hd__and3_2 _0937_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ),
    .C(_0511_),
    .X(_0515_));
 sky130_fd_sc_hd__and3b_2 _0938_ (.A_N(_0515_),
    .B(_0510_),
    .C(_0514_),
    .X(_0244_));
 sky130_fd_sc_hd__o2111a_2 _0939_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.rx_en ),
    .A2(o_transmit_data_request),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ),
    .C1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ),
    .D1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[2] ),
    .X(_0516_));
 sky130_fd_sc_hd__or2_2 _0940_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[2] ),
    .B(_0515_),
    .X(_0517_));
 sky130_fd_sc_hd__and3b_2 _0941_ (.A_N(_0516_),
    .B(_0517_),
    .C(_0510_),
    .X(_0245_));
 sky130_fd_sc_hd__nand2_2 _0942_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .B(_0516_),
    .Y(_0518_));
 sky130_fd_sc_hd__or2_2 _0943_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .B(_0516_),
    .X(_0519_));
 sky130_fd_sc_hd__and3_2 _0944_ (.A(_0510_),
    .B(_0518_),
    .C(_0519_),
    .X(_0246_));
 sky130_fd_sc_hd__a21o_2 _0945_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .A2(_0516_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ),
    .X(_0520_));
 sky130_fd_sc_hd__and3_2 _0946_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ),
    .C(_0516_),
    .X(_0521_));
 sky130_fd_sc_hd__and3b_2 _0947_ (.A_N(_0521_),
    .B(_0510_),
    .C(_0520_),
    .X(_0247_));
 sky130_fd_sc_hd__or2_2 _0948_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[5] ),
    .B(_0521_),
    .X(_0522_));
 sky130_fd_sc_hd__and4_2 _0949_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ),
    .C(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[5] ),
    .D(_0516_),
    .X(_0523_));
 sky130_fd_sc_hd__and3b_2 _0950_ (.A_N(_0523_),
    .B(_0510_),
    .C(_0522_),
    .X(_0248_));
 sky130_fd_sc_hd__or2_2 _0951_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ),
    .B(_0523_),
    .X(_0524_));
 sky130_fd_sc_hd__nand2_2 _0952_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ),
    .B(_0523_),
    .Y(_0525_));
 sky130_fd_sc_hd__and3_2 _0953_ (.A(_0510_),
    .B(_0524_),
    .C(_0525_),
    .X(_0249_));
 sky130_fd_sc_hd__a21o_2 _0954_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ),
    .A2(_0523_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[7] ),
    .X(_0526_));
 sky130_fd_sc_hd__nand3_2 _0955_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[7] ),
    .C(_0523_),
    .Y(_0527_));
 sky130_fd_sc_hd__and3_2 _0956_ (.A(_0510_),
    .B(_0526_),
    .C(_0527_),
    .X(_0250_));
 sky130_fd_sc_hd__nor2_2 _0957_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ),
    .B(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ),
    .Y(_0528_));
 sky130_fd_sc_hd__a21o_2 _0958_ (.A1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ),
    .A2(_0528_),
    .B1(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ),
    .X(_0251_));
 sky130_fd_sc_hd__mux2_1 _0959_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[9] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[1] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0265_));
 sky130_fd_sc_hd__mux2_1 _0960_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[8] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[2] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0266_));
 sky130_fd_sc_hd__mux2_1 _0961_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[7] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[4] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0267_));
 sky130_fd_sc_hd__mux2_1 _0962_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[6] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[5] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0268_));
 sky130_fd_sc_hd__mux2_1 _0963_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[5] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[3] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0269_));
 sky130_fd_sc_hd__mux2_1 _0964_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[4] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[9] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0270_));
 sky130_fd_sc_hd__mux2_1 _0965_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[3] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[8] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0271_));
 sky130_fd_sc_hd__mux2_1 _0966_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[2] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[7] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0272_));
 sky130_fd_sc_hd__mux2_1 _0967_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0273_));
 sky130_fd_sc_hd__mux2_1 _0968_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0274_));
 sky130_fd_sc_hd__mux2_1 _0969_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0275_));
 sky130_fd_sc_hd__mux2_1 _0970_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[6] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0276_));
 sky130_fd_sc_hd__mux2_1 _0971_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0277_));
 sky130_fd_sc_hd__mux2_1 _0972_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0278_));
 sky130_fd_sc_hd__mux2_1 _0973_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0279_));
 sky130_fd_sc_hd__mux2_1 _0974_ (.A0(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ),
    .A1(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ),
    .S(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ),
    .X(_0280_));
 sky130_fd_sc_hd__buf_1 _0975_ (.A(\u_i2c_master_controller.i2cbus_cntrl_fsm.o_i2c_master_scl ),
    .X(_0529_));
 sky130_fd_sc_hd__o21a_2 _0976_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0100_));
 sky130_fd_sc_hd__o21a_2 _0977_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0102_));
 sky130_fd_sc_hd__o21a_2 _0978_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0103_));
 sky130_fd_sc_hd__o21a_2 _0979_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0104_));
 sky130_fd_sc_hd__o21a_2 _0980_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0105_));
 sky130_fd_sc_hd__o21a_2 _0981_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0106_));
 sky130_fd_sc_hd__o21a_2 _0982_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0107_));
 sky130_fd_sc_hd__o21a_2 _0983_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0108_));
 sky130_fd_sc_hd__o21a_2 _0984_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0109_));
 sky130_fd_sc_hd__o21a_2 _0985_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0110_));
 sky130_fd_sc_hd__o21a_2 _0986_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0111_));
 sky130_fd_sc_hd__o21a_2 _0987_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0112_));
 sky130_fd_sc_hd__o21a_2 _0988_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0113_));
 sky130_fd_sc_hd__o21a_2 _0989_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0114_));
 sky130_fd_sc_hd__o21a_2 _0990_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0115_));
 sky130_fd_sc_hd__o21a_2 _0991_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0116_));
 sky130_fd_sc_hd__o21a_2 _0992_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0117_));
 sky130_fd_sc_hd__o21a_2 _0993_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0118_));
 sky130_fd_sc_hd__o21a_2 _0994_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0119_));
 sky130_fd_sc_hd__o21a_2 _0995_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0120_));
 sky130_fd_sc_hd__o21a_2 _0996_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0121_));
 sky130_fd_sc_hd__o21a_2 _0997_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0122_));
 sky130_fd_sc_hd__o21a_2 _0998_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0123_));
 sky130_fd_sc_hd__o21a_2 _0999_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0124_));
 sky130_fd_sc_hd__o21a_2 _1000_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0125_));
 sky130_fd_sc_hd__o21a_2 _1001_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0126_));
 sky130_fd_sc_hd__o21a_2 _1002_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0127_));
 sky130_fd_sc_hd__o21a_2 _1003_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0128_));
 sky130_fd_sc_hd__o21a_2 _1004_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0129_));
 sky130_fd_sc_hd__o21a_2 _1005_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0130_));
 sky130_fd_sc_hd__o21a_2 _1006_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0131_));
 sky130_fd_sc_hd__o21a_2 _1007_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0132_));
 sky130_fd_sc_hd__o21a_2 _1008_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0133_));
 sky130_fd_sc_hd__o21a_2 _1009_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0134_));
 sky130_fd_sc_hd__o21a_2 _1010_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0135_));
 sky130_fd_sc_hd__o21a_2 _1011_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0136_));
 sky130_fd_sc_hd__o21a_2 _1012_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0137_));
 sky130_fd_sc_hd__o21a_2 _1013_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0138_));
 sky130_fd_sc_hd__o21a_2 _1014_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0139_));
 sky130_fd_sc_hd__o21a_2 _1015_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0140_));
 sky130_fd_sc_hd__o21a_2 _1016_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0141_));
 sky130_fd_sc_hd__o21a_2 _1017_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0142_));
 sky130_fd_sc_hd__o21a_2 _1018_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0143_));
 sky130_fd_sc_hd__o21a_2 _1019_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0144_));
 sky130_fd_sc_hd__o21a_2 _1020_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0145_));
 sky130_fd_sc_hd__o21a_2 _1021_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0146_));
 sky130_fd_sc_hd__o21a_2 _1022_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0147_));
 sky130_fd_sc_hd__o21a_2 _1023_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0148_));
 sky130_fd_sc_hd__o21a_2 _1024_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0149_));
 sky130_fd_sc_hd__o21a_2 _1025_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0150_));
 sky130_fd_sc_hd__o21a_2 _1026_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0151_));
 sky130_fd_sc_hd__o21a_2 _1027_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0152_));
 sky130_fd_sc_hd__o21a_2 _1028_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0153_));
 sky130_fd_sc_hd__o21a_2 _1029_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0154_));
 sky130_fd_sc_hd__o21a_2 _1030_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0155_));
 sky130_fd_sc_hd__o21a_2 _1031_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0156_));
 sky130_fd_sc_hd__o21a_2 _1032_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0157_));
 sky130_fd_sc_hd__o21a_2 _1033_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0158_));
 sky130_fd_sc_hd__o21a_2 _1034_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0159_));
 sky130_fd_sc_hd__o21a_2 _1035_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0160_));
 sky130_fd_sc_hd__o21a_2 _1036_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0161_));
 sky130_fd_sc_hd__o21a_2 _1037_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0162_));
 sky130_fd_sc_hd__o21a_2 _1038_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0163_));
 sky130_fd_sc_hd__o21a_2 _1039_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0164_));
 sky130_fd_sc_hd__o21a_2 _1040_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0165_));
 sky130_fd_sc_hd__o21a_2 _1041_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0166_));
 sky130_fd_sc_hd__o21a_2 _1042_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0167_));
 sky130_fd_sc_hd__o21a_2 _1043_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0168_));
 sky130_fd_sc_hd__o21a_2 _1044_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0169_));
 sky130_fd_sc_hd__o21a_2 _1045_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0170_));
 sky130_fd_sc_hd__o21a_2 _1046_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0171_));
 sky130_fd_sc_hd__o21a_2 _1047_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0172_));
 sky130_fd_sc_hd__o21a_2 _1048_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0173_));
 sky130_fd_sc_hd__o21a_2 _1049_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0174_));
 sky130_fd_sc_hd__o21a_2 _1050_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0175_));
 sky130_fd_sc_hd__o21a_2 _1051_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0176_));
 sky130_fd_sc_hd__o21a_2 _1052_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0177_));
 sky130_fd_sc_hd__o21a_2 _1053_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0178_));
 sky130_fd_sc_hd__o21a_2 _1054_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0179_));
 sky130_fd_sc_hd__o21a_2 _1055_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0180_));
 sky130_fd_sc_hd__o21a_2 _1056_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0181_));
 sky130_fd_sc_hd__o21a_2 _1057_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0182_));
 sky130_fd_sc_hd__o21a_2 _1058_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0183_));
 sky130_fd_sc_hd__o21a_2 _1059_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0184_));
 sky130_fd_sc_hd__o21a_2 _1060_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0185_));
 sky130_fd_sc_hd__o21a_2 _1061_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0186_));
 sky130_fd_sc_hd__o21a_2 _1062_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0187_));
 sky130_fd_sc_hd__o21a_2 _1063_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0188_));
 sky130_fd_sc_hd__o21a_2 _1064_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0189_));
 sky130_fd_sc_hd__o21a_2 _1065_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0190_));
 sky130_fd_sc_hd__o21a_2 _1066_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0191_));
 sky130_fd_sc_hd__o21a_2 _1067_ (.A1(_0316_),
    .A2(\u_i2c_master_controller.soft_reset_d3 ),
    .B1(i_rst_n),
    .X(_0192_));
 sky130_fd_sc_hd__dfstp_2 _1068_ (.CLK(i_clk),
    .D(_0049_),
    .SET_B(_0099_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[4] ));
 sky130_fd_sc_hd__dfstp_2 _1069_ (.CLK(i_clk),
    .D(_0050_),
    .SET_B(_0100_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.count_threshold[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1070_ (.CLK(i_clk),
    .D(_0193_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1071_ (.CLK(i_clk),
    .D(_0194_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1072_ (.CLK(i_clk),
    .D(_0195_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1073_ (.CLK(i_clk),
    .D(_0196_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1074_ (.CLK(i_clk),
    .D(_0197_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1075_ (.CLK(i_clk),
    .D(_0198_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1076_ (.CLK(i_clk),
    .D(_0199_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_addr[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1077_ (.CLK(i_clk),
    .D(_0200_),
    .RESET_B(_0101_),
    .Q(\u_i2c_master_controller.cntrl_fsm.o_int_out ));
 sky130_fd_sc_hd__dfrtp_2 _1078_ (.CLK(i_clk),
    .D(_0201_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.bps_mode[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1079_ (.CLK(i_clk),
    .D(_0202_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.bps_mode[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1080_ (.CLK(i_clk),
    .D(_0203_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.adr_mode ));
 sky130_fd_sc_hd__dfrtp_2 _1081_ (.CLK(i_clk),
    .D(_0204_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_rw_mode ));
 sky130_fd_sc_hd__dfrtp_2 _1082_ (.CLK(i_clk),
    .D(_0205_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1083_ (.CLK(i_clk),
    .D(_0206_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1084_ (.CLK(i_clk),
    .D(_0207_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1085_ (.CLK(i_clk),
    .D(_0208_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1086_ (.CLK(i_clk),
    .D(_0209_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1087_ (.CLK(i_clk),
    .D(_0210_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1088_ (.CLK(i_clk),
    .D(_0211_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1089_ (.CLK(i_clk),
    .D(_0212_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1090_ (.CLK(i_clk),
    .D(_0213_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.abort_ack_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1091_ (.CLK(i_clk),
    .D(_0214_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.rx_err_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1092_ (.CLK(i_clk),
    .D(_0215_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.tx_err_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1093_ (.CLK(i_clk),
    .D(_0216_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.rx_done_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1094_ (.CLK(i_clk),
    .D(_0217_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.tx_done_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1095_ (.CLK(i_clk),
    .D(_0218_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.txintr_en ));
 sky130_fd_sc_hd__dfrtp_2 _1096_ (.CLK(i_clk),
    .D(_0219_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.rxintr_en ));
 sky130_fd_sc_hd__dfstp_2 _1097_ (.CLK(i_clk),
    .D(_0220_),
    .SET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.o_rx_ack_sda ));
 sky130_fd_sc_hd__dfxtp_2 _1098_ (.CLK(i_clk),
    .D(_0221_),
    .Q(o_receive_data[0]));
 sky130_fd_sc_hd__dfxtp_2 _1099_ (.CLK(i_clk),
    .D(_0222_),
    .Q(o_receive_data[1]));
 sky130_fd_sc_hd__dfxtp_2 _1100_ (.CLK(i_clk),
    .D(_0223_),
    .Q(o_receive_data[2]));
 sky130_fd_sc_hd__dfxtp_2 _1101_ (.CLK(i_clk),
    .D(_0224_),
    .Q(o_receive_data[3]));
 sky130_fd_sc_hd__dfxtp_2 _1102_ (.CLK(i_clk),
    .D(_0225_),
    .Q(o_receive_data[4]));
 sky130_fd_sc_hd__dfxtp_2 _1103_ (.CLK(i_clk),
    .D(_0226_),
    .Q(o_receive_data[5]));
 sky130_fd_sc_hd__dfxtp_2 _1104_ (.CLK(i_clk),
    .D(_0227_),
    .Q(o_receive_data[6]));
 sky130_fd_sc_hd__dfxtp_2 _1105_ (.CLK(i_clk),
    .D(_0228_),
    .Q(o_receive_data[7]));
 sky130_fd_sc_hd__dfrtp_2 _1106_ (.CLK(i_clk),
    .D(_0229_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_err ));
 sky130_fd_sc_hd__dfrtp_2 _1107_ (.CLK(i_clk),
    .D(_0230_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_i2c_busy ));
 sky130_fd_sc_hd__dfrtp_2 _1108_ (.CLK(i_clk),
    .D(_0231_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_tx_done ));
 sky130_fd_sc_hd__dfrtp_2 _1109_ (.CLK(i_clk),
    .D(_0232_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_rx_done ));
 sky130_fd_sc_hd__dfrtp_2 _1110_ (.CLK(i_clk),
    .D(_0233_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i2cbus_busy_i ));
 sky130_fd_sc_hd__dfrtp_2 _1111_ (.CLK(i_clk),
    .D(_0234_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1112_ (.CLK(i_clk),
    .D(_0235_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1113_ (.CLK(i_clk),
    .D(_0236_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1114_ (.CLK(i_clk),
    .D(_0237_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1115_ (.CLK(i_clk),
    .D(_0238_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1116_ (.CLK(i_clk),
    .D(_0239_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1117_ (.CLK(i_clk),
    .D(_0240_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1118_ (.CLK(i_clk),
    .D(_0241_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_data[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1119_ (.CLK(i_clk),
    .D(_0242_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_transaction_complete ));
 sky130_fd_sc_hd__dfrtp_2 _1120_ (.CLK(i_clk),
    .D(_0243_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1121_ (.CLK(i_clk),
    .D(_0244_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1122_ (.CLK(i_clk),
    .D(_0245_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1123_ (.CLK(i_clk),
    .D(_0246_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1124_ (.CLK(i_clk),
    .D(_0247_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1125_ (.CLK(i_clk),
    .D(_0248_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1126_ (.CLK(i_clk),
    .D(_0249_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1127_ (.CLK(i_clk),
    .D(_0250_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.byte_count_i[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1128_ (.CLK(i_clk),
    .D(_0251_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_enable_scl ));
 sky130_fd_sc_hd__dfrtp_2 _1129_ (.CLK(i_clk),
    .D(_0252_),
    .RESET_B(_0102_),
    .Q(\u_i2c_master_controller.filter_scl.out_n ));
 sky130_fd_sc_hd__dfrtp_2 _1130_ (.CLK(i_clk),
    .D(_0253_),
    .RESET_B(_0103_),
    .Q(\u_i2c_master_controller.filter_sda.out_n ));
 sky130_fd_sc_hd__dfrtp_2 _1131_ (.CLK(i_clk),
    .D(_0254_),
    .RESET_B(_0104_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1132_ (.CLK(i_clk),
    .D(_0255_),
    .RESET_B(_0105_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1133_ (.CLK(i_clk),
    .D(_0256_),
    .RESET_B(_0106_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1134_ (.CLK(i_clk),
    .D(_0257_),
    .RESET_B(_0107_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1135_ (.CLK(i_clk),
    .D(_0258_),
    .RESET_B(_0108_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1136_ (.CLK(i_clk),
    .D(_0259_),
    .RESET_B(_0109_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1137_ (.CLK(i_clk),
    .D(_0260_),
    .RESET_B(_0110_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1138_ (.CLK(i_clk),
    .D(_0261_),
    .RESET_B(_0111_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1139_ (.CLK(i_clk),
    .D(_0262_),
    .RESET_B(_0112_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1140_ (.CLK(i_clk),
    .D(_0263_),
    .RESET_B(_0113_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_en ));
 sky130_fd_sc_hd__dfrtp_2 _1141_ (.CLK(i_clk),
    .D(_0264_),
    .RESET_B(_0114_),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_start_detect ));
 sky130_fd_sc_hd__dfstp_2 _1142_ (.CLK(i_clk),
    .D(_0030_),
    .SET_B(_0115_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1143_ (.CLK(i_clk),
    .D(_0031_),
    .RESET_B(_0116_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1144_ (.CLK(i_clk),
    .D(_0032_),
    .RESET_B(_0117_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.state[2] ));
 sky130_fd_sc_hd__dfstp_2 _1145_ (.CLK(i_clk),
    .D(_0024_),
    .SET_B(_0118_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1146_ (.CLK(i_clk),
    .D(_0002_),
    .RESET_B(_0119_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1147_ (.CLK(i_clk),
    .D(_0025_),
    .RESET_B(_0120_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1148_ (.CLK(i_clk),
    .D(_0026_),
    .RESET_B(_0121_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1149_ (.CLK(i_clk),
    .D(_0027_),
    .RESET_B(_0122_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1150_ (.CLK(i_clk),
    .D(_0028_),
    .RESET_B(_0123_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1151_ (.CLK(i_clk),
    .D(_0029_),
    .RESET_B(_0124_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.state[6] ));
 sky130_fd_sc_hd__dfstp_2 _1152_ (.CLK(i_clk),
    .D(_0020_),
    .SET_B(_0125_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1153_ (.CLK(i_clk),
    .D(_0021_),
    .RESET_B(_0126_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1154_ (.CLK(i_clk),
    .D(_0022_),
    .RESET_B(_0127_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1155_ (.CLK(i_clk),
    .D(_0023_),
    .RESET_B(_0128_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.state[3] ));
 sky130_fd_sc_hd__dfstp_2 _1156_ (.CLK(i_clk),
    .D(_0017_),
    .SET_B(_0129_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1157_ (.CLK(i_clk),
    .D(_0018_),
    .RESET_B(_0130_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1158_ (.CLK(i_clk),
    .D(_0019_),
    .RESET_B(_0131_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[2] ));
 sky130_fd_sc_hd__dfstp_2 _1159_ (.CLK(i_clk),
    .D(_0007_),
    .SET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1160_ (.CLK(i_clk),
    .D(_0008_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1161_ (.CLK(i_clk),
    .D(_0009_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1162_ (.CLK(i_clk),
    .D(_0010_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1163_ (.CLK(i_clk),
    .D(_0011_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1164_ (.CLK(i_clk),
    .D(_0012_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1165_ (.CLK(i_clk),
    .D(_0013_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1166_ (.CLK(i_clk),
    .D(_0014_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1167_ (.CLK(i_clk),
    .D(_0015_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1168_ (.CLK(i_clk),
    .D(_0016_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[9] ));
 sky130_fd_sc_hd__dfstp_2 _1169_ (.CLK(i_clk),
    .D(_0005_),
    .SET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1170_ (.CLK(i_clk),
    .D(_0006_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[1] ));
 sky130_fd_sc_hd__dfstp_2 _1171_ (.CLK(i_clk),
    .D(_0003_),
    .SET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1172_ (.CLK(i_clk),
    .D(_0004_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1173_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_tx_done ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.tx_done_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1174_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.abort_reg1 ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.abort_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1175_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_rx_done ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.rx_done_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1176_ (.CLK(i_clk),
    .D(i_config_reg[4]),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.abort_reg1 ));
 sky130_fd_sc_hd__dfrtp_2 _1177_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.tx_err ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.tx_err_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1178_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg1 ));
 sky130_fd_sc_hd__dfrtp_2 _1179_ (.CLK(i_clk),
    .D(_0034_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_slave_changed ));
 sky130_fd_sc_hd__dfrtp_2 _1180_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.rx_err ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.rx_err_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1181_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.abort_ack ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.abort_ack_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1182_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg1 ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg2 ));
 sky130_fd_sc_hd__dfrtp_2 _1183_ (.CLK(i_clk),
    .D(i_config_reg[1]),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.intr_clr_reg ));
 sky130_fd_sc_hd__dfrtp_2 _1184_ (.CLK(i_clk),
    .D(i_config_reg[0]),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.start_reg1 ));
 sky130_fd_sc_hd__dfrtp_2 _1185_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.start_reg1 ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start ));
 sky130_fd_sc_hd__dfrtp_2 _1186_ (.CLK(i_clk),
    .D(_0041_),
    .RESET_B(i_rst_n),
    .Q(o_transmit_data_request));
 sky130_fd_sc_hd__dfrtp_2 _1187_ (.CLK(i_clk),
    .D(_0035_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.abort_ack ));
 sky130_fd_sc_hd__dfrtp_2 _1188_ (.CLK(i_clk),
    .D(_0040_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.i_tx_en ));
 sky130_fd_sc_hd__dfrtp_2 _1189_ (.CLK(i_clk),
    .D(_0039_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_stop_gen_en ));
 sky130_fd_sc_hd__dfrtp_2 _1190_ (.CLK(i_clk),
    .D(_0036_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_config_latch_en ));
 sky130_fd_sc_hd__dfrtp_2 _1191_ (.CLK(i_clk),
    .D(_0037_),
    .RESET_B(i_rst_n),
    .Q(o_received_data_valid));
 sky130_fd_sc_hd__dfrtp_2 _1192_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.state[8] ),
    .RESET_B(i_rst_n),
    .Q(o_start_ack));
 sky130_fd_sc_hd__dfrtp_2 _1193_ (.CLK(i_clk),
    .D(_0042_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.rx_en ));
 sky130_fd_sc_hd__dfrtp_2 _1194_ (.CLK(i_clk),
    .D(_0038_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_start_gen_en ));
 sky130_fd_sc_hd__dfrtp_2 _1195_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.rx_en ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_rx_en ));
 sky130_fd_sc_hd__dfstp_2 _1196_ (.CLK(i_clk),
    .D(_0281_),
    .SET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.o_byte_tx_sda ));
 sky130_fd_sc_hd__dfrtp_2 _1197_ (.CLK(i_clk),
    .D(_0001_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_done ));
 sky130_fd_sc_hd__dfrtp_2 _1198_ (.CLK(i_clk),
    .D(_0000_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_done ));
 sky130_fd_sc_hd__dfrtp_2 _1199_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.falling_scl_detect.state[2] ),
    .RESET_B(_0132_),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.i_i2c_master_falling_scl_detect ));
 sky130_fd_sc_hd__dfrtp_2 _1200_ (.CLK(i_clk),
    .D(_0046_),
    .RESET_B(_0133_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_reset ));
 sky130_fd_sc_hd__dfrtp_2 _1201_ (.CLK(i_clk),
    .D(_0090_),
    .RESET_B(_0134_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1202_ (.CLK(i_clk),
    .D(_0091_),
    .RESET_B(_0135_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1203_ (.CLK(i_clk),
    .D(_0092_),
    .RESET_B(_0136_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1204_ (.CLK(i_clk),
    .D(_0093_),
    .RESET_B(_0137_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1205_ (.CLK(i_clk),
    .D(_0094_),
    .RESET_B(_0138_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1206_ (.CLK(i_clk),
    .D(_0095_),
    .RESET_B(_0139_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1207_ (.CLK(i_clk),
    .D(_0096_),
    .RESET_B(_0140_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1208_ (.CLK(i_clk),
    .D(_0097_),
    .RESET_B(_0141_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1209_ (.CLK(i_clk),
    .D(_0098_),
    .RESET_B(_0142_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.modulus[8] ));
 sky130_fd_sc_hd__dfstp_2 _1210_ (.CLK(i_clk),
    .D(_0047_),
    .SET_B(_0143_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.o_i2c_master_scl ));
 sky130_fd_sc_hd__dfrtp_2 _1211_ (.CLK(i_clk),
    .D(_0045_),
    .RESET_B(_0144_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.scl_gen.count_eq_modby2 ));
 sky130_fd_sc_hd__dfrtp_2 _1212_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state_next ),
    .RESET_B(_0145_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_detect.state ));
 sky130_fd_sc_hd__dfrtp_2 _1213_ (.CLK(i_clk),
    .D(_0054_),
    .RESET_B(_0146_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1214_ (.CLK(i_clk),
    .D(_0061_),
    .RESET_B(_0147_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1215_ (.CLK(i_clk),
    .D(_0062_),
    .RESET_B(_0148_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1216_ (.CLK(i_clk),
    .D(_0063_),
    .RESET_B(_0149_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1217_ (.CLK(i_clk),
    .D(_0064_),
    .RESET_B(_0150_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1218_ (.CLK(i_clk),
    .D(_0065_),
    .RESET_B(_0151_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1219_ (.CLK(i_clk),
    .D(_0066_),
    .RESET_B(_0152_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1220_ (.CLK(i_clk),
    .D(_0067_),
    .RESET_B(_0153_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1221_ (.CLK(i_clk),
    .D(_0068_),
    .RESET_B(_0154_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1222_ (.CLK(i_clk),
    .D(_0069_),
    .RESET_B(_0155_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1223_ (.CLK(i_clk),
    .D(_0055_),
    .RESET_B(_0156_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1224_ (.CLK(i_clk),
    .D(_0056_),
    .RESET_B(_0157_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1225_ (.CLK(i_clk),
    .D(_0057_),
    .RESET_B(_0158_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1226_ (.CLK(i_clk),
    .D(_0058_),
    .RESET_B(_0159_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1227_ (.CLK(i_clk),
    .D(_0059_),
    .RESET_B(_0160_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1228_ (.CLK(i_clk),
    .D(_0060_),
    .RESET_B(_0161_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.count[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1229_ (.CLK(i_clk),
    .D(_0070_),
    .RESET_B(_0162_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_done ));
 sky130_fd_sc_hd__dfstp_2 _1230_ (.CLK(i_clk),
    .D(_0052_),
    .SET_B(_0163_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_start_sda_i ));
 sky130_fd_sc_hd__dfrtp_2 _1231_ (.CLK(i_clk),
    .D(_0051_),
    .RESET_B(_0164_),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_start_gen_ack ));
 sky130_fd_sc_hd__dfrtp_2 _1232_ (.CLK(i_clk),
    .D(_0053_),
    .RESET_B(_0165_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.start_gen.delay_gen.start_delay ));
 sky130_fd_sc_hd__dfrtp_2 _1233_ (.CLK(i_clk),
    .D(_0048_),
    .RESET_B(_0166_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_detect.state ));
 sky130_fd_sc_hd__dfrtp_2 _1234_ (.CLK(i_clk),
    .D(_0071_),
    .RESET_B(_0167_),
    .Q(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.i_i2c_master_stop_detect ));
 sky130_fd_sc_hd__dfrtp_2 _1235_ (.CLK(i_clk),
    .D(_0073_),
    .RESET_B(_0168_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[0] ));
 sky130_fd_sc_hd__dfrtp_2 _1236_ (.CLK(i_clk),
    .D(_0080_),
    .RESET_B(_0169_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[1] ));
 sky130_fd_sc_hd__dfrtp_2 _1237_ (.CLK(i_clk),
    .D(_0081_),
    .RESET_B(_0170_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1238_ (.CLK(i_clk),
    .D(_0082_),
    .RESET_B(_0171_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1239_ (.CLK(i_clk),
    .D(_0083_),
    .RESET_B(_0172_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1240_ (.CLK(i_clk),
    .D(_0084_),
    .RESET_B(_0173_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1241_ (.CLK(i_clk),
    .D(_0085_),
    .RESET_B(_0174_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1242_ (.CLK(i_clk),
    .D(_0086_),
    .RESET_B(_0175_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1243_ (.CLK(i_clk),
    .D(_0087_),
    .RESET_B(_0176_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1244_ (.CLK(i_clk),
    .D(_0088_),
    .RESET_B(_0177_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1245_ (.CLK(i_clk),
    .D(_0074_),
    .RESET_B(_0178_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[10] ));
 sky130_fd_sc_hd__dfrtp_2 _1246_ (.CLK(i_clk),
    .D(_0075_),
    .RESET_B(_0179_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[11] ));
 sky130_fd_sc_hd__dfrtp_2 _1247_ (.CLK(i_clk),
    .D(_0076_),
    .RESET_B(_0180_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[12] ));
 sky130_fd_sc_hd__dfrtp_2 _1248_ (.CLK(i_clk),
    .D(_0077_),
    .RESET_B(_0181_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[13] ));
 sky130_fd_sc_hd__dfrtp_2 _1249_ (.CLK(i_clk),
    .D(_0078_),
    .RESET_B(_0182_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[14] ));
 sky130_fd_sc_hd__dfrtp_2 _1250_ (.CLK(i_clk),
    .D(_0079_),
    .RESET_B(_0183_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.count[15] ));
 sky130_fd_sc_hd__dfrtp_2 _1251_ (.CLK(i_clk),
    .D(_0089_),
    .RESET_B(_0184_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_done ));
 sky130_fd_sc_hd__dfstp_2 _1252_ (.CLK(i_clk),
    .D(_0072_),
    .SET_B(_0185_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.i2c_master_stop_sda_i ));
 sky130_fd_sc_hd__dfrtp_2 _1253_ (.CLK(i_clk),
    .D(_0033_),
    .RESET_B(_0186_),
    .Q(\u_i2c_master_controller.i2cbus_cntrl_fsm.stop_gen.delay_gen.start_delay ));
 sky130_fd_sc_hd__dfrtp_2 _1254_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.filter_sda.in_d2 ),
    .RESET_B(_0187_),
    .Q(\u_i2c_master_controller.filter_sda.in_d3 ));
 sky130_fd_sc_hd__dfrtp_2 _1255_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.filter_sda.in_d1 ),
    .RESET_B(_0188_),
    .Q(\u_i2c_master_controller.filter_sda.in_d2 ));
 sky130_fd_sc_hd__dfrtp_2 _1256_ (.CLK(i_clk),
    .D(_0044_),
    .RESET_B(_0189_),
    .Q(\u_i2c_master_controller.filter_sda.in_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1257_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.filter_scl.in_d2 ),
    .RESET_B(_0190_),
    .Q(\u_i2c_master_controller.filter_scl.in_d3 ));
 sky130_fd_sc_hd__dfrtp_2 _1258_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.filter_scl.in_d1 ),
    .RESET_B(_0191_),
    .Q(\u_i2c_master_controller.filter_scl.in_d2 ));
 sky130_fd_sc_hd__dfrtp_2 _1259_ (.CLK(i_clk),
    .D(_0043_),
    .RESET_B(_0192_),
    .Q(\u_i2c_master_controller.filter_scl.in_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1260_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.soft_reset_d2 ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.soft_reset_d3 ));
 sky130_fd_sc_hd__dfrtp_2 _1261_ (.CLK(i_clk),
    .D(i_config_reg[5]),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.soft_reset_d1 ));
 sky130_fd_sc_hd__dfrtp_2 _1262_ (.CLK(i_clk),
    .D(\u_i2c_master_controller.soft_reset_d1 ),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.soft_reset_d2 ));
 sky130_fd_sc_hd__dfrtp_2 _1263_ (.CLK(i_clk),
    .D(_0265_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1264_ (.CLK(i_clk),
    .D(_0266_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1265_ (.CLK(i_clk),
    .D(_0267_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1266_ (.CLK(i_clk),
    .D(_0268_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1267_ (.CLK(i_clk),
    .D(_0269_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1268_ (.CLK(i_clk),
    .D(_0270_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1269_ (.CLK(i_clk),
    .D(_0271_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1270_ (.CLK(i_clk),
    .D(_0272_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_rx_fsm.state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _1271_ (.CLK(i_clk),
    .D(_0273_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[9] ));
 sky130_fd_sc_hd__dfrtp_2 _1272_ (.CLK(i_clk),
    .D(_0274_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[8] ));
 sky130_fd_sc_hd__dfrtp_2 _1273_ (.CLK(i_clk),
    .D(_0275_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[7] ));
 sky130_fd_sc_hd__dfrtp_2 _1274_ (.CLK(i_clk),
    .D(_0276_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[6] ));
 sky130_fd_sc_hd__dfrtp_2 _1275_ (.CLK(i_clk),
    .D(_0277_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[5] ));
 sky130_fd_sc_hd__dfrtp_2 _1276_ (.CLK(i_clk),
    .D(_0278_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[4] ));
 sky130_fd_sc_hd__dfrtp_2 _1277_ (.CLK(i_clk),
    .D(_0279_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[3] ));
 sky130_fd_sc_hd__dfrtp_2 _1278_ (.CLK(i_clk),
    .D(_0280_),
    .RESET_B(i_rst_n),
    .Q(\u_i2c_master_controller.cntrl_fsm.byte_tx_fsm.state[2] ));
 sky130_fd_sc_hd__conb_1 _1279_ (.LO(_0531_));
 sky130_fd_sc_hd__conb_1 _1280_ (.LO(_0532_));
 sky130_fd_sc_hd__conb_1 _1281_ (.LO(o_cmd_status_reg[0]));
 sky130_fd_sc_hd__conb_1 _1282_ (.LO(o_cmd_status_reg[1]));
 sky130_fd_sc_hd__buf_2 _1283_ (.A(\u_i2c_master_controller.cntrl_fsm.abort_ack_reg ),
    .X(o_cmd_status_reg[2]));
 sky130_fd_sc_hd__buf_2 _1284_ (.A(\u_i2c_master_controller.cntrl_fsm.rx_err_reg ),
    .X(o_cmd_status_reg[3]));
 sky130_fd_sc_hd__buf_2 _1285_ (.A(\u_i2c_master_controller.cntrl_fsm.tx_err_reg ),
    .X(o_cmd_status_reg[4]));
 sky130_fd_sc_hd__buf_2 _1286_ (.A(\u_i2c_master_controller.cntrl_fsm.rx_done_reg ),
    .X(o_cmd_status_reg[5]));
 sky130_fd_sc_hd__buf_2 _1287_ (.A(\u_i2c_master_controller.cntrl_fsm.tx_done_reg ),
    .X(o_cmd_status_reg[6]));
 sky130_fd_sc_hd__buf_2 _1288_ (.A(\u_i2c_master_controller.cntrl_fsm.cntrl_fsm.o_i2c_busy ),
    .X(o_cmd_status_reg[7]));
 sky130_fd_sc_hd__ebufn_2 _1289_ (.A(_0531_),
    .TE_B(_0529_),
    .Z(io_scl));
 sky130_fd_sc_hd__ebufn_2 _1290_ (.A(_0532_),
    .TE_B(_0530_),
    .Z(io_sda));
endmodule
