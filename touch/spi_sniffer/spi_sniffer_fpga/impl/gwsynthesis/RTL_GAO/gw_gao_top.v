module gw_gao(
    \u_spi/bit_counter[2] ,
    \u_spi/bit_counter[1] ,
    \u_spi/bit_counter[0] ,
    \u_spi/cs ,
    \u_spi/sck ,
    \u_spi/mosi ,
    \u_spi/miso ,
    \u_spi/cs_start ,
    \u_spi/cs_end ,
    \u_spi/data_valid ,
    \u_spi/mosi_data[7] ,
    \u_spi/mosi_data[6] ,
    \u_spi/mosi_data[5] ,
    \u_spi/mosi_data[4] ,
    \u_spi/mosi_data[3] ,
    \u_spi/mosi_data[2] ,
    \u_spi/mosi_data[1] ,
    \u_spi/mosi_data[0] ,
    \u_spi/miso_data[7] ,
    \u_spi/miso_data[6] ,
    \u_spi/miso_data[5] ,
    \u_spi/miso_data[4] ,
    \u_spi/miso_data[3] ,
    \u_spi/miso_data[2] ,
    \u_spi/miso_data[1] ,
    \u_spi/miso_data[0] ,
    \u_data_sender/state[3] ,
    \u_data_sender/state[2] ,
    \u_data_sender/state[1] ,
    \u_data_sender/state[0] ,
    \u_data_sender/uart_tx_fifo_wr_en ,
    \u_data_sender/uart_tx_fifo_wr_data[7] ,
    \u_data_sender/uart_tx_fifo_wr_data[6] ,
    \u_data_sender/uart_tx_fifo_wr_data[5] ,
    \u_data_sender/uart_tx_fifo_wr_data[4] ,
    \u_data_sender/uart_tx_fifo_wr_data[3] ,
    \u_data_sender/uart_tx_fifo_wr_data[2] ,
    \u_data_sender/uart_tx_fifo_wr_data[1] ,
    \u_data_sender/uart_tx_fifo_wr_data[0] ,
    \u_data_sender/uart_tx_fifo_full ,
    \u_data_sender/uart_tx_fifo_empty ,
    \u_data_sender/fifo_full_error ,
    \uart_tx_fifo_wnum[13] ,
    \uart_tx_fifo_wnum[12] ,
    \uart_tx_fifo_wnum[11] ,
    \uart_tx_fifo_wnum[10] ,
    \uart_tx_fifo_wnum[9] ,
    \uart_tx_fifo_wnum[8] ,
    \uart_tx_fifo_wnum[7] ,
    \uart_tx_fifo_wnum[6] ,
    \uart_tx_fifo_wnum[5] ,
    \uart_tx_fifo_wnum[4] ,
    \uart_tx_fifo_wnum[3] ,
    \uart_tx_fifo_wnum[2] ,
    \uart_tx_fifo_wnum[1] ,
    \uart_tx_fifo_wnum[0] ,
    \tx_data[7] ,
    \tx_data[6] ,
    \tx_data[5] ,
    \tx_data[4] ,
    \tx_data[3] ,
    \tx_data[2] ,
    \tx_data[1] ,
    \tx_data[0] ,
    uart_tx_fifo_rd_en,
    tx_en,
    clk_50m,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \u_spi/bit_counter[2] ;
input \u_spi/bit_counter[1] ;
input \u_spi/bit_counter[0] ;
input \u_spi/cs ;
input \u_spi/sck ;
input \u_spi/mosi ;
input \u_spi/miso ;
input \u_spi/cs_start ;
input \u_spi/cs_end ;
input \u_spi/data_valid ;
input \u_spi/mosi_data[7] ;
input \u_spi/mosi_data[6] ;
input \u_spi/mosi_data[5] ;
input \u_spi/mosi_data[4] ;
input \u_spi/mosi_data[3] ;
input \u_spi/mosi_data[2] ;
input \u_spi/mosi_data[1] ;
input \u_spi/mosi_data[0] ;
input \u_spi/miso_data[7] ;
input \u_spi/miso_data[6] ;
input \u_spi/miso_data[5] ;
input \u_spi/miso_data[4] ;
input \u_spi/miso_data[3] ;
input \u_spi/miso_data[2] ;
input \u_spi/miso_data[1] ;
input \u_spi/miso_data[0] ;
input \u_data_sender/state[3] ;
input \u_data_sender/state[2] ;
input \u_data_sender/state[1] ;
input \u_data_sender/state[0] ;
input \u_data_sender/uart_tx_fifo_wr_en ;
input \u_data_sender/uart_tx_fifo_wr_data[7] ;
input \u_data_sender/uart_tx_fifo_wr_data[6] ;
input \u_data_sender/uart_tx_fifo_wr_data[5] ;
input \u_data_sender/uart_tx_fifo_wr_data[4] ;
input \u_data_sender/uart_tx_fifo_wr_data[3] ;
input \u_data_sender/uart_tx_fifo_wr_data[2] ;
input \u_data_sender/uart_tx_fifo_wr_data[1] ;
input \u_data_sender/uart_tx_fifo_wr_data[0] ;
input \u_data_sender/uart_tx_fifo_full ;
input \u_data_sender/uart_tx_fifo_empty ;
input \u_data_sender/fifo_full_error ;
input \uart_tx_fifo_wnum[13] ;
input \uart_tx_fifo_wnum[12] ;
input \uart_tx_fifo_wnum[11] ;
input \uart_tx_fifo_wnum[10] ;
input \uart_tx_fifo_wnum[9] ;
input \uart_tx_fifo_wnum[8] ;
input \uart_tx_fifo_wnum[7] ;
input \uart_tx_fifo_wnum[6] ;
input \uart_tx_fifo_wnum[5] ;
input \uart_tx_fifo_wnum[4] ;
input \uart_tx_fifo_wnum[3] ;
input \uart_tx_fifo_wnum[2] ;
input \uart_tx_fifo_wnum[1] ;
input \uart_tx_fifo_wnum[0] ;
input \tx_data[7] ;
input \tx_data[6] ;
input \tx_data[5] ;
input \tx_data[4] ;
input \tx_data[3] ;
input \tx_data[2] ;
input \tx_data[1] ;
input \tx_data[0] ;
input uart_tx_fifo_rd_en;
input tx_en;
input clk_50m;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \u_spi/bit_counter[2] ;
wire \u_spi/bit_counter[1] ;
wire \u_spi/bit_counter[0] ;
wire \u_spi/cs ;
wire \u_spi/sck ;
wire \u_spi/mosi ;
wire \u_spi/miso ;
wire \u_spi/cs_start ;
wire \u_spi/cs_end ;
wire \u_spi/data_valid ;
wire \u_spi/mosi_data[7] ;
wire \u_spi/mosi_data[6] ;
wire \u_spi/mosi_data[5] ;
wire \u_spi/mosi_data[4] ;
wire \u_spi/mosi_data[3] ;
wire \u_spi/mosi_data[2] ;
wire \u_spi/mosi_data[1] ;
wire \u_spi/mosi_data[0] ;
wire \u_spi/miso_data[7] ;
wire \u_spi/miso_data[6] ;
wire \u_spi/miso_data[5] ;
wire \u_spi/miso_data[4] ;
wire \u_spi/miso_data[3] ;
wire \u_spi/miso_data[2] ;
wire \u_spi/miso_data[1] ;
wire \u_spi/miso_data[0] ;
wire \u_data_sender/state[3] ;
wire \u_data_sender/state[2] ;
wire \u_data_sender/state[1] ;
wire \u_data_sender/state[0] ;
wire \u_data_sender/uart_tx_fifo_wr_en ;
wire \u_data_sender/uart_tx_fifo_wr_data[7] ;
wire \u_data_sender/uart_tx_fifo_wr_data[6] ;
wire \u_data_sender/uart_tx_fifo_wr_data[5] ;
wire \u_data_sender/uart_tx_fifo_wr_data[4] ;
wire \u_data_sender/uart_tx_fifo_wr_data[3] ;
wire \u_data_sender/uart_tx_fifo_wr_data[2] ;
wire \u_data_sender/uart_tx_fifo_wr_data[1] ;
wire \u_data_sender/uart_tx_fifo_wr_data[0] ;
wire \u_data_sender/uart_tx_fifo_full ;
wire \u_data_sender/uart_tx_fifo_empty ;
wire \u_data_sender/fifo_full_error ;
wire \uart_tx_fifo_wnum[13] ;
wire \uart_tx_fifo_wnum[12] ;
wire \uart_tx_fifo_wnum[11] ;
wire \uart_tx_fifo_wnum[10] ;
wire \uart_tx_fifo_wnum[9] ;
wire \uart_tx_fifo_wnum[8] ;
wire \uart_tx_fifo_wnum[7] ;
wire \uart_tx_fifo_wnum[6] ;
wire \uart_tx_fifo_wnum[5] ;
wire \uart_tx_fifo_wnum[4] ;
wire \uart_tx_fifo_wnum[3] ;
wire \uart_tx_fifo_wnum[2] ;
wire \uart_tx_fifo_wnum[1] ;
wire \uart_tx_fifo_wnum[0] ;
wire \tx_data[7] ;
wire \tx_data[6] ;
wire \tx_data[5] ;
wire \tx_data[4] ;
wire \tx_data[3] ;
wire \tx_data[2] ;
wire \tx_data[1] ;
wire \tx_data[0] ;
wire uart_tx_fifo_rd_en;
wire tx_en;
wire clk_50m;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(\u_spi/cs ),
    .data_i({\u_spi/bit_counter[2] ,\u_spi/bit_counter[1] ,\u_spi/bit_counter[0] ,\u_spi/cs ,\u_spi/sck ,\u_spi/mosi ,\u_spi/miso ,\u_spi/cs_start ,\u_spi/cs_end ,\u_spi/data_valid ,\u_spi/mosi_data[7] ,\u_spi/mosi_data[6] ,\u_spi/mosi_data[5] ,\u_spi/mosi_data[4] ,\u_spi/mosi_data[3] ,\u_spi/mosi_data[2] ,\u_spi/mosi_data[1] ,\u_spi/mosi_data[0] ,\u_spi/miso_data[7] ,\u_spi/miso_data[6] ,\u_spi/miso_data[5] ,\u_spi/miso_data[4] ,\u_spi/miso_data[3] ,\u_spi/miso_data[2] ,\u_spi/miso_data[1] ,\u_spi/miso_data[0] ,\u_data_sender/state[3] ,\u_data_sender/state[2] ,\u_data_sender/state[1] ,\u_data_sender/state[0] ,\u_data_sender/uart_tx_fifo_wr_en ,\u_data_sender/uart_tx_fifo_wr_data[7] ,\u_data_sender/uart_tx_fifo_wr_data[6] ,\u_data_sender/uart_tx_fifo_wr_data[5] ,\u_data_sender/uart_tx_fifo_wr_data[4] ,\u_data_sender/uart_tx_fifo_wr_data[3] ,\u_data_sender/uart_tx_fifo_wr_data[2] ,\u_data_sender/uart_tx_fifo_wr_data[1] ,\u_data_sender/uart_tx_fifo_wr_data[0] ,\u_data_sender/uart_tx_fifo_full ,\u_data_sender/uart_tx_fifo_empty ,\u_data_sender/fifo_full_error ,\uart_tx_fifo_wnum[13] ,\uart_tx_fifo_wnum[12] ,\uart_tx_fifo_wnum[11] ,\uart_tx_fifo_wnum[10] ,\uart_tx_fifo_wnum[9] ,\uart_tx_fifo_wnum[8] ,\uart_tx_fifo_wnum[7] ,\uart_tx_fifo_wnum[6] ,\uart_tx_fifo_wnum[5] ,\uart_tx_fifo_wnum[4] ,\uart_tx_fifo_wnum[3] ,\uart_tx_fifo_wnum[2] ,\uart_tx_fifo_wnum[1] ,\uart_tx_fifo_wnum[0] ,\tx_data[7] ,\tx_data[6] ,\tx_data[5] ,\tx_data[4] ,\tx_data[3] ,\tx_data[2] ,\tx_data[1] ,\tx_data[0] ,uart_tx_fifo_rd_en,tx_en}),
    .clk_i(clk_50m)
);

endmodule
