module gw_gao(
    \data_storage_controller_inst/output_fifo_reset ,
    \data_storage_controller_inst/output_fifo_write_en ,
    \data_storage_controller_inst/output_fifo_almost_full ,
    \data_storage_controller_inst/output_fifo_write_data[63] ,
    \data_storage_controller_inst/output_fifo_write_data[62] ,
    \data_storage_controller_inst/output_fifo_write_data[61] ,
    \data_storage_controller_inst/output_fifo_write_data[60] ,
    \data_storage_controller_inst/output_fifo_write_data[59] ,
    \data_storage_controller_inst/output_fifo_write_data[58] ,
    \data_storage_controller_inst/output_fifo_write_data[57] ,
    \data_storage_controller_inst/output_fifo_write_data[56] ,
    \data_storage_controller_inst/output_fifo_write_data[55] ,
    \data_storage_controller_inst/output_fifo_write_data[54] ,
    \data_storage_controller_inst/output_fifo_write_data[53] ,
    \data_storage_controller_inst/output_fifo_write_data[52] ,
    \data_storage_controller_inst/output_fifo_write_data[51] ,
    \data_storage_controller_inst/output_fifo_write_data[50] ,
    \data_storage_controller_inst/output_fifo_write_data[49] ,
    \data_storage_controller_inst/output_fifo_write_data[48] ,
    \data_storage_controller_inst/output_fifo_write_data[47] ,
    \data_storage_controller_inst/output_fifo_write_data[46] ,
    \data_storage_controller_inst/output_fifo_write_data[45] ,
    \data_storage_controller_inst/output_fifo_write_data[44] ,
    \data_storage_controller_inst/output_fifo_write_data[43] ,
    \data_storage_controller_inst/output_fifo_write_data[42] ,
    \data_storage_controller_inst/output_fifo_write_data[41] ,
    \data_storage_controller_inst/output_fifo_write_data[40] ,
    \data_storage_controller_inst/output_fifo_write_data[39] ,
    \data_storage_controller_inst/output_fifo_write_data[38] ,
    \data_storage_controller_inst/output_fifo_write_data[37] ,
    \data_storage_controller_inst/output_fifo_write_data[36] ,
    \data_storage_controller_inst/output_fifo_write_data[35] ,
    \data_storage_controller_inst/output_fifo_write_data[34] ,
    \data_storage_controller_inst/output_fifo_write_data[33] ,
    \data_storage_controller_inst/output_fifo_write_data[32] ,
    \data_storage_controller_inst/output_fifo_write_data[31] ,
    \data_storage_controller_inst/output_fifo_write_data[30] ,
    \data_storage_controller_inst/output_fifo_write_data[29] ,
    \data_storage_controller_inst/output_fifo_write_data[28] ,
    \data_storage_controller_inst/output_fifo_write_data[27] ,
    \data_storage_controller_inst/output_fifo_write_data[26] ,
    \data_storage_controller_inst/output_fifo_write_data[25] ,
    \data_storage_controller_inst/output_fifo_write_data[24] ,
    \data_storage_controller_inst/output_fifo_write_data[23] ,
    \data_storage_controller_inst/output_fifo_write_data[22] ,
    \data_storage_controller_inst/output_fifo_write_data[21] ,
    \data_storage_controller_inst/output_fifo_write_data[20] ,
    \data_storage_controller_inst/output_fifo_write_data[19] ,
    \data_storage_controller_inst/output_fifo_write_data[18] ,
    \data_storage_controller_inst/output_fifo_write_data[17] ,
    \data_storage_controller_inst/output_fifo_write_data[16] ,
    \data_storage_controller_inst/output_fifo_write_data[15] ,
    \data_storage_controller_inst/output_fifo_write_data[14] ,
    \data_storage_controller_inst/output_fifo_write_data[13] ,
    \data_storage_controller_inst/output_fifo_write_data[12] ,
    \data_storage_controller_inst/output_fifo_write_data[11] ,
    \data_storage_controller_inst/output_fifo_write_data[10] ,
    \data_storage_controller_inst/output_fifo_write_data[9] ,
    \data_storage_controller_inst/output_fifo_write_data[8] ,
    \data_storage_controller_inst/output_fifo_write_data[7] ,
    \data_storage_controller_inst/output_fifo_write_data[6] ,
    \data_storage_controller_inst/output_fifo_write_data[5] ,
    \data_storage_controller_inst/output_fifo_write_data[4] ,
    \data_storage_controller_inst/output_fifo_write_data[3] ,
    \data_storage_controller_inst/output_fifo_write_data[2] ,
    \data_storage_controller_inst/output_fifo_write_data[1] ,
    \data_storage_controller_inst/output_fifo_write_data[0] ,
    \data_storage_controller_inst/input_fifo_reset ,
    \data_storage_controller_inst/input_fifo_read_en ,
    \data_storage_controller_inst/input_fifo_almost_empty ,
    \data_storage_controller_inst/input_fifo_read_data[63] ,
    \data_storage_controller_inst/input_fifo_read_data[62] ,
    \data_storage_controller_inst/input_fifo_read_data[61] ,
    \data_storage_controller_inst/input_fifo_read_data[60] ,
    \data_storage_controller_inst/input_fifo_read_data[59] ,
    \data_storage_controller_inst/input_fifo_read_data[58] ,
    \data_storage_controller_inst/input_fifo_read_data[57] ,
    \data_storage_controller_inst/input_fifo_read_data[56] ,
    \data_storage_controller_inst/input_fifo_read_data[55] ,
    \data_storage_controller_inst/input_fifo_read_data[54] ,
    \data_storage_controller_inst/input_fifo_read_data[53] ,
    \data_storage_controller_inst/input_fifo_read_data[52] ,
    \data_storage_controller_inst/input_fifo_read_data[51] ,
    \data_storage_controller_inst/input_fifo_read_data[50] ,
    \data_storage_controller_inst/input_fifo_read_data[49] ,
    \data_storage_controller_inst/input_fifo_read_data[48] ,
    \data_storage_controller_inst/input_fifo_read_data[47] ,
    \data_storage_controller_inst/input_fifo_read_data[46] ,
    \data_storage_controller_inst/input_fifo_read_data[45] ,
    \data_storage_controller_inst/input_fifo_read_data[44] ,
    \data_storage_controller_inst/input_fifo_read_data[43] ,
    \data_storage_controller_inst/input_fifo_read_data[42] ,
    \data_storage_controller_inst/input_fifo_read_data[41] ,
    \data_storage_controller_inst/input_fifo_read_data[40] ,
    \data_storage_controller_inst/input_fifo_read_data[39] ,
    \data_storage_controller_inst/input_fifo_read_data[38] ,
    \data_storage_controller_inst/input_fifo_read_data[37] ,
    \data_storage_controller_inst/input_fifo_read_data[36] ,
    \data_storage_controller_inst/input_fifo_read_data[35] ,
    \data_storage_controller_inst/input_fifo_read_data[34] ,
    \data_storage_controller_inst/input_fifo_read_data[33] ,
    \data_storage_controller_inst/input_fifo_read_data[32] ,
    \data_storage_controller_inst/input_fifo_read_data[31] ,
    \data_storage_controller_inst/input_fifo_read_data[30] ,
    \data_storage_controller_inst/input_fifo_read_data[29] ,
    \data_storage_controller_inst/input_fifo_read_data[28] ,
    \data_storage_controller_inst/input_fifo_read_data[27] ,
    \data_storage_controller_inst/input_fifo_read_data[26] ,
    \data_storage_controller_inst/input_fifo_read_data[25] ,
    \data_storage_controller_inst/input_fifo_read_data[24] ,
    \data_storage_controller_inst/input_fifo_read_data[23] ,
    \data_storage_controller_inst/input_fifo_read_data[22] ,
    \data_storage_controller_inst/input_fifo_read_data[21] ,
    \data_storage_controller_inst/input_fifo_read_data[20] ,
    \data_storage_controller_inst/input_fifo_read_data[19] ,
    \data_storage_controller_inst/input_fifo_read_data[18] ,
    \data_storage_controller_inst/input_fifo_read_data[17] ,
    \data_storage_controller_inst/input_fifo_read_data[16] ,
    \data_storage_controller_inst/input_fifo_read_data[15] ,
    \data_storage_controller_inst/input_fifo_read_data[14] ,
    \data_storage_controller_inst/input_fifo_read_data[13] ,
    \data_storage_controller_inst/input_fifo_read_data[12] ,
    \data_storage_controller_inst/input_fifo_read_data[11] ,
    \data_storage_controller_inst/input_fifo_read_data[10] ,
    \data_storage_controller_inst/input_fifo_read_data[9] ,
    \data_storage_controller_inst/input_fifo_read_data[8] ,
    \data_storage_controller_inst/input_fifo_read_data[7] ,
    \data_storage_controller_inst/input_fifo_read_data[6] ,
    \data_storage_controller_inst/input_fifo_read_data[5] ,
    \data_storage_controller_inst/input_fifo_read_data[4] ,
    \data_storage_controller_inst/input_fifo_read_data[3] ,
    \data_storage_controller_inst/input_fifo_read_data[2] ,
    \data_storage_controller_inst/input_fifo_read_data[1] ,
    \data_storage_controller_inst/input_fifo_read_data[0] ,
    \fifo_hs_input_inst/Empty ,
    \fifo_hs_input_inst/Full ,
    \data_storage_controller_inst/psram_write_data[63] ,
    \data_storage_controller_inst/psram_write_data[62] ,
    \data_storage_controller_inst/psram_write_data[61] ,
    \data_storage_controller_inst/psram_write_data[60] ,
    \data_storage_controller_inst/psram_write_data[59] ,
    \data_storage_controller_inst/psram_write_data[58] ,
    \data_storage_controller_inst/psram_write_data[57] ,
    \data_storage_controller_inst/psram_write_data[56] ,
    \data_storage_controller_inst/psram_write_data[55] ,
    \data_storage_controller_inst/psram_write_data[54] ,
    \data_storage_controller_inst/psram_write_data[53] ,
    \data_storage_controller_inst/psram_write_data[52] ,
    \data_storage_controller_inst/psram_write_data[51] ,
    \data_storage_controller_inst/psram_write_data[50] ,
    \data_storage_controller_inst/psram_write_data[49] ,
    \data_storage_controller_inst/psram_write_data[48] ,
    \data_storage_controller_inst/psram_write_data[47] ,
    \data_storage_controller_inst/psram_write_data[46] ,
    \data_storage_controller_inst/psram_write_data[45] ,
    \data_storage_controller_inst/psram_write_data[44] ,
    \data_storage_controller_inst/psram_write_data[43] ,
    \data_storage_controller_inst/psram_write_data[42] ,
    \data_storage_controller_inst/psram_write_data[41] ,
    \data_storage_controller_inst/psram_write_data[40] ,
    \data_storage_controller_inst/psram_write_data[39] ,
    \data_storage_controller_inst/psram_write_data[38] ,
    \data_storage_controller_inst/psram_write_data[37] ,
    \data_storage_controller_inst/psram_write_data[36] ,
    \data_storage_controller_inst/psram_write_data[35] ,
    \data_storage_controller_inst/psram_write_data[34] ,
    \data_storage_controller_inst/psram_write_data[33] ,
    \data_storage_controller_inst/psram_write_data[32] ,
    \data_storage_controller_inst/psram_write_data[31] ,
    \data_storage_controller_inst/psram_write_data[30] ,
    \data_storage_controller_inst/psram_write_data[29] ,
    \data_storage_controller_inst/psram_write_data[28] ,
    \data_storage_controller_inst/psram_write_data[27] ,
    \data_storage_controller_inst/psram_write_data[26] ,
    \data_storage_controller_inst/psram_write_data[25] ,
    \data_storage_controller_inst/psram_write_data[24] ,
    \data_storage_controller_inst/psram_write_data[23] ,
    \data_storage_controller_inst/psram_write_data[22] ,
    \data_storage_controller_inst/psram_write_data[21] ,
    \data_storage_controller_inst/psram_write_data[20] ,
    \data_storage_controller_inst/psram_write_data[19] ,
    \data_storage_controller_inst/psram_write_data[18] ,
    \data_storage_controller_inst/psram_write_data[17] ,
    \data_storage_controller_inst/psram_write_data[16] ,
    \data_storage_controller_inst/psram_write_data[15] ,
    \data_storage_controller_inst/psram_write_data[14] ,
    \data_storage_controller_inst/psram_write_data[13] ,
    \data_storage_controller_inst/psram_write_data[12] ,
    \data_storage_controller_inst/psram_write_data[11] ,
    \data_storage_controller_inst/psram_write_data[10] ,
    \data_storage_controller_inst/psram_write_data[9] ,
    \data_storage_controller_inst/psram_write_data[8] ,
    \data_storage_controller_inst/psram_write_data[7] ,
    \data_storage_controller_inst/psram_write_data[6] ,
    \data_storage_controller_inst/psram_write_data[5] ,
    \data_storage_controller_inst/psram_write_data[4] ,
    \data_storage_controller_inst/psram_write_data[3] ,
    \data_storage_controller_inst/psram_write_data[2] ,
    \data_storage_controller_inst/psram_write_data[1] ,
    \data_storage_controller_inst/psram_write_data[0] ,
    \data_storage_controller_inst/psram_read_data[63] ,
    \data_storage_controller_inst/psram_read_data[62] ,
    \data_storage_controller_inst/psram_read_data[61] ,
    \data_storage_controller_inst/psram_read_data[60] ,
    \data_storage_controller_inst/psram_read_data[59] ,
    \data_storage_controller_inst/psram_read_data[58] ,
    \data_storage_controller_inst/psram_read_data[57] ,
    \data_storage_controller_inst/psram_read_data[56] ,
    \data_storage_controller_inst/psram_read_data[55] ,
    \data_storage_controller_inst/psram_read_data[54] ,
    \data_storage_controller_inst/psram_read_data[53] ,
    \data_storage_controller_inst/psram_read_data[52] ,
    \data_storage_controller_inst/psram_read_data[51] ,
    \data_storage_controller_inst/psram_read_data[50] ,
    \data_storage_controller_inst/psram_read_data[49] ,
    \data_storage_controller_inst/psram_read_data[48] ,
    \data_storage_controller_inst/psram_read_data[47] ,
    \data_storage_controller_inst/psram_read_data[46] ,
    \data_storage_controller_inst/psram_read_data[45] ,
    \data_storage_controller_inst/psram_read_data[44] ,
    \data_storage_controller_inst/psram_read_data[43] ,
    \data_storage_controller_inst/psram_read_data[42] ,
    \data_storage_controller_inst/psram_read_data[41] ,
    \data_storage_controller_inst/psram_read_data[40] ,
    \data_storage_controller_inst/psram_read_data[39] ,
    \data_storage_controller_inst/psram_read_data[38] ,
    \data_storage_controller_inst/psram_read_data[37] ,
    \data_storage_controller_inst/psram_read_data[36] ,
    \data_storage_controller_inst/psram_read_data[35] ,
    \data_storage_controller_inst/psram_read_data[34] ,
    \data_storage_controller_inst/psram_read_data[33] ,
    \data_storage_controller_inst/psram_read_data[32] ,
    \data_storage_controller_inst/psram_read_data[31] ,
    \data_storage_controller_inst/psram_read_data[30] ,
    \data_storage_controller_inst/psram_read_data[29] ,
    \data_storage_controller_inst/psram_read_data[28] ,
    \data_storage_controller_inst/psram_read_data[27] ,
    \data_storage_controller_inst/psram_read_data[26] ,
    \data_storage_controller_inst/psram_read_data[25] ,
    \data_storage_controller_inst/psram_read_data[24] ,
    \data_storage_controller_inst/psram_read_data[23] ,
    \data_storage_controller_inst/psram_read_data[22] ,
    \data_storage_controller_inst/psram_read_data[21] ,
    \data_storage_controller_inst/psram_read_data[20] ,
    \data_storage_controller_inst/psram_read_data[19] ,
    \data_storage_controller_inst/psram_read_data[18] ,
    \data_storage_controller_inst/psram_read_data[17] ,
    \data_storage_controller_inst/psram_read_data[16] ,
    \data_storage_controller_inst/psram_read_data[15] ,
    \data_storage_controller_inst/psram_read_data[14] ,
    \data_storage_controller_inst/psram_read_data[13] ,
    \data_storage_controller_inst/psram_read_data[12] ,
    \data_storage_controller_inst/psram_read_data[11] ,
    \data_storage_controller_inst/psram_read_data[10] ,
    \data_storage_controller_inst/psram_read_data[9] ,
    \data_storage_controller_inst/psram_read_data[8] ,
    \data_storage_controller_inst/psram_read_data[7] ,
    \data_storage_controller_inst/psram_read_data[6] ,
    \data_storage_controller_inst/psram_read_data[5] ,
    \data_storage_controller_inst/psram_read_data[4] ,
    \data_storage_controller_inst/psram_read_data[3] ,
    \data_storage_controller_inst/psram_read_data[2] ,
    \data_storage_controller_inst/psram_read_data[1] ,
    \data_storage_controller_inst/psram_read_data[0] ,
    \data_storage_controller_inst/psram_cmd ,
    \data_storage_controller_inst/psram_cmd_en ,
    \data_storage_controller_inst/psram_read_data_valid ,
    input_fifo_reset,
    \data_storage_controller_inst/state[3] ,
    \data_storage_controller_inst/state[2] ,
    \data_storage_controller_inst/state[1] ,
    \data_storage_controller_inst/state[0] ,
    sys_clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \data_storage_controller_inst/output_fifo_reset ;
input \data_storage_controller_inst/output_fifo_write_en ;
input \data_storage_controller_inst/output_fifo_almost_full ;
input \data_storage_controller_inst/output_fifo_write_data[63] ;
input \data_storage_controller_inst/output_fifo_write_data[62] ;
input \data_storage_controller_inst/output_fifo_write_data[61] ;
input \data_storage_controller_inst/output_fifo_write_data[60] ;
input \data_storage_controller_inst/output_fifo_write_data[59] ;
input \data_storage_controller_inst/output_fifo_write_data[58] ;
input \data_storage_controller_inst/output_fifo_write_data[57] ;
input \data_storage_controller_inst/output_fifo_write_data[56] ;
input \data_storage_controller_inst/output_fifo_write_data[55] ;
input \data_storage_controller_inst/output_fifo_write_data[54] ;
input \data_storage_controller_inst/output_fifo_write_data[53] ;
input \data_storage_controller_inst/output_fifo_write_data[52] ;
input \data_storage_controller_inst/output_fifo_write_data[51] ;
input \data_storage_controller_inst/output_fifo_write_data[50] ;
input \data_storage_controller_inst/output_fifo_write_data[49] ;
input \data_storage_controller_inst/output_fifo_write_data[48] ;
input \data_storage_controller_inst/output_fifo_write_data[47] ;
input \data_storage_controller_inst/output_fifo_write_data[46] ;
input \data_storage_controller_inst/output_fifo_write_data[45] ;
input \data_storage_controller_inst/output_fifo_write_data[44] ;
input \data_storage_controller_inst/output_fifo_write_data[43] ;
input \data_storage_controller_inst/output_fifo_write_data[42] ;
input \data_storage_controller_inst/output_fifo_write_data[41] ;
input \data_storage_controller_inst/output_fifo_write_data[40] ;
input \data_storage_controller_inst/output_fifo_write_data[39] ;
input \data_storage_controller_inst/output_fifo_write_data[38] ;
input \data_storage_controller_inst/output_fifo_write_data[37] ;
input \data_storage_controller_inst/output_fifo_write_data[36] ;
input \data_storage_controller_inst/output_fifo_write_data[35] ;
input \data_storage_controller_inst/output_fifo_write_data[34] ;
input \data_storage_controller_inst/output_fifo_write_data[33] ;
input \data_storage_controller_inst/output_fifo_write_data[32] ;
input \data_storage_controller_inst/output_fifo_write_data[31] ;
input \data_storage_controller_inst/output_fifo_write_data[30] ;
input \data_storage_controller_inst/output_fifo_write_data[29] ;
input \data_storage_controller_inst/output_fifo_write_data[28] ;
input \data_storage_controller_inst/output_fifo_write_data[27] ;
input \data_storage_controller_inst/output_fifo_write_data[26] ;
input \data_storage_controller_inst/output_fifo_write_data[25] ;
input \data_storage_controller_inst/output_fifo_write_data[24] ;
input \data_storage_controller_inst/output_fifo_write_data[23] ;
input \data_storage_controller_inst/output_fifo_write_data[22] ;
input \data_storage_controller_inst/output_fifo_write_data[21] ;
input \data_storage_controller_inst/output_fifo_write_data[20] ;
input \data_storage_controller_inst/output_fifo_write_data[19] ;
input \data_storage_controller_inst/output_fifo_write_data[18] ;
input \data_storage_controller_inst/output_fifo_write_data[17] ;
input \data_storage_controller_inst/output_fifo_write_data[16] ;
input \data_storage_controller_inst/output_fifo_write_data[15] ;
input \data_storage_controller_inst/output_fifo_write_data[14] ;
input \data_storage_controller_inst/output_fifo_write_data[13] ;
input \data_storage_controller_inst/output_fifo_write_data[12] ;
input \data_storage_controller_inst/output_fifo_write_data[11] ;
input \data_storage_controller_inst/output_fifo_write_data[10] ;
input \data_storage_controller_inst/output_fifo_write_data[9] ;
input \data_storage_controller_inst/output_fifo_write_data[8] ;
input \data_storage_controller_inst/output_fifo_write_data[7] ;
input \data_storage_controller_inst/output_fifo_write_data[6] ;
input \data_storage_controller_inst/output_fifo_write_data[5] ;
input \data_storage_controller_inst/output_fifo_write_data[4] ;
input \data_storage_controller_inst/output_fifo_write_data[3] ;
input \data_storage_controller_inst/output_fifo_write_data[2] ;
input \data_storage_controller_inst/output_fifo_write_data[1] ;
input \data_storage_controller_inst/output_fifo_write_data[0] ;
input \data_storage_controller_inst/input_fifo_reset ;
input \data_storage_controller_inst/input_fifo_read_en ;
input \data_storage_controller_inst/input_fifo_almost_empty ;
input \data_storage_controller_inst/input_fifo_read_data[63] ;
input \data_storage_controller_inst/input_fifo_read_data[62] ;
input \data_storage_controller_inst/input_fifo_read_data[61] ;
input \data_storage_controller_inst/input_fifo_read_data[60] ;
input \data_storage_controller_inst/input_fifo_read_data[59] ;
input \data_storage_controller_inst/input_fifo_read_data[58] ;
input \data_storage_controller_inst/input_fifo_read_data[57] ;
input \data_storage_controller_inst/input_fifo_read_data[56] ;
input \data_storage_controller_inst/input_fifo_read_data[55] ;
input \data_storage_controller_inst/input_fifo_read_data[54] ;
input \data_storage_controller_inst/input_fifo_read_data[53] ;
input \data_storage_controller_inst/input_fifo_read_data[52] ;
input \data_storage_controller_inst/input_fifo_read_data[51] ;
input \data_storage_controller_inst/input_fifo_read_data[50] ;
input \data_storage_controller_inst/input_fifo_read_data[49] ;
input \data_storage_controller_inst/input_fifo_read_data[48] ;
input \data_storage_controller_inst/input_fifo_read_data[47] ;
input \data_storage_controller_inst/input_fifo_read_data[46] ;
input \data_storage_controller_inst/input_fifo_read_data[45] ;
input \data_storage_controller_inst/input_fifo_read_data[44] ;
input \data_storage_controller_inst/input_fifo_read_data[43] ;
input \data_storage_controller_inst/input_fifo_read_data[42] ;
input \data_storage_controller_inst/input_fifo_read_data[41] ;
input \data_storage_controller_inst/input_fifo_read_data[40] ;
input \data_storage_controller_inst/input_fifo_read_data[39] ;
input \data_storage_controller_inst/input_fifo_read_data[38] ;
input \data_storage_controller_inst/input_fifo_read_data[37] ;
input \data_storage_controller_inst/input_fifo_read_data[36] ;
input \data_storage_controller_inst/input_fifo_read_data[35] ;
input \data_storage_controller_inst/input_fifo_read_data[34] ;
input \data_storage_controller_inst/input_fifo_read_data[33] ;
input \data_storage_controller_inst/input_fifo_read_data[32] ;
input \data_storage_controller_inst/input_fifo_read_data[31] ;
input \data_storage_controller_inst/input_fifo_read_data[30] ;
input \data_storage_controller_inst/input_fifo_read_data[29] ;
input \data_storage_controller_inst/input_fifo_read_data[28] ;
input \data_storage_controller_inst/input_fifo_read_data[27] ;
input \data_storage_controller_inst/input_fifo_read_data[26] ;
input \data_storage_controller_inst/input_fifo_read_data[25] ;
input \data_storage_controller_inst/input_fifo_read_data[24] ;
input \data_storage_controller_inst/input_fifo_read_data[23] ;
input \data_storage_controller_inst/input_fifo_read_data[22] ;
input \data_storage_controller_inst/input_fifo_read_data[21] ;
input \data_storage_controller_inst/input_fifo_read_data[20] ;
input \data_storage_controller_inst/input_fifo_read_data[19] ;
input \data_storage_controller_inst/input_fifo_read_data[18] ;
input \data_storage_controller_inst/input_fifo_read_data[17] ;
input \data_storage_controller_inst/input_fifo_read_data[16] ;
input \data_storage_controller_inst/input_fifo_read_data[15] ;
input \data_storage_controller_inst/input_fifo_read_data[14] ;
input \data_storage_controller_inst/input_fifo_read_data[13] ;
input \data_storage_controller_inst/input_fifo_read_data[12] ;
input \data_storage_controller_inst/input_fifo_read_data[11] ;
input \data_storage_controller_inst/input_fifo_read_data[10] ;
input \data_storage_controller_inst/input_fifo_read_data[9] ;
input \data_storage_controller_inst/input_fifo_read_data[8] ;
input \data_storage_controller_inst/input_fifo_read_data[7] ;
input \data_storage_controller_inst/input_fifo_read_data[6] ;
input \data_storage_controller_inst/input_fifo_read_data[5] ;
input \data_storage_controller_inst/input_fifo_read_data[4] ;
input \data_storage_controller_inst/input_fifo_read_data[3] ;
input \data_storage_controller_inst/input_fifo_read_data[2] ;
input \data_storage_controller_inst/input_fifo_read_data[1] ;
input \data_storage_controller_inst/input_fifo_read_data[0] ;
input \fifo_hs_input_inst/Empty ;
input \fifo_hs_input_inst/Full ;
input \data_storage_controller_inst/psram_write_data[63] ;
input \data_storage_controller_inst/psram_write_data[62] ;
input \data_storage_controller_inst/psram_write_data[61] ;
input \data_storage_controller_inst/psram_write_data[60] ;
input \data_storage_controller_inst/psram_write_data[59] ;
input \data_storage_controller_inst/psram_write_data[58] ;
input \data_storage_controller_inst/psram_write_data[57] ;
input \data_storage_controller_inst/psram_write_data[56] ;
input \data_storage_controller_inst/psram_write_data[55] ;
input \data_storage_controller_inst/psram_write_data[54] ;
input \data_storage_controller_inst/psram_write_data[53] ;
input \data_storage_controller_inst/psram_write_data[52] ;
input \data_storage_controller_inst/psram_write_data[51] ;
input \data_storage_controller_inst/psram_write_data[50] ;
input \data_storage_controller_inst/psram_write_data[49] ;
input \data_storage_controller_inst/psram_write_data[48] ;
input \data_storage_controller_inst/psram_write_data[47] ;
input \data_storage_controller_inst/psram_write_data[46] ;
input \data_storage_controller_inst/psram_write_data[45] ;
input \data_storage_controller_inst/psram_write_data[44] ;
input \data_storage_controller_inst/psram_write_data[43] ;
input \data_storage_controller_inst/psram_write_data[42] ;
input \data_storage_controller_inst/psram_write_data[41] ;
input \data_storage_controller_inst/psram_write_data[40] ;
input \data_storage_controller_inst/psram_write_data[39] ;
input \data_storage_controller_inst/psram_write_data[38] ;
input \data_storage_controller_inst/psram_write_data[37] ;
input \data_storage_controller_inst/psram_write_data[36] ;
input \data_storage_controller_inst/psram_write_data[35] ;
input \data_storage_controller_inst/psram_write_data[34] ;
input \data_storage_controller_inst/psram_write_data[33] ;
input \data_storage_controller_inst/psram_write_data[32] ;
input \data_storage_controller_inst/psram_write_data[31] ;
input \data_storage_controller_inst/psram_write_data[30] ;
input \data_storage_controller_inst/psram_write_data[29] ;
input \data_storage_controller_inst/psram_write_data[28] ;
input \data_storage_controller_inst/psram_write_data[27] ;
input \data_storage_controller_inst/psram_write_data[26] ;
input \data_storage_controller_inst/psram_write_data[25] ;
input \data_storage_controller_inst/psram_write_data[24] ;
input \data_storage_controller_inst/psram_write_data[23] ;
input \data_storage_controller_inst/psram_write_data[22] ;
input \data_storage_controller_inst/psram_write_data[21] ;
input \data_storage_controller_inst/psram_write_data[20] ;
input \data_storage_controller_inst/psram_write_data[19] ;
input \data_storage_controller_inst/psram_write_data[18] ;
input \data_storage_controller_inst/psram_write_data[17] ;
input \data_storage_controller_inst/psram_write_data[16] ;
input \data_storage_controller_inst/psram_write_data[15] ;
input \data_storage_controller_inst/psram_write_data[14] ;
input \data_storage_controller_inst/psram_write_data[13] ;
input \data_storage_controller_inst/psram_write_data[12] ;
input \data_storage_controller_inst/psram_write_data[11] ;
input \data_storage_controller_inst/psram_write_data[10] ;
input \data_storage_controller_inst/psram_write_data[9] ;
input \data_storage_controller_inst/psram_write_data[8] ;
input \data_storage_controller_inst/psram_write_data[7] ;
input \data_storage_controller_inst/psram_write_data[6] ;
input \data_storage_controller_inst/psram_write_data[5] ;
input \data_storage_controller_inst/psram_write_data[4] ;
input \data_storage_controller_inst/psram_write_data[3] ;
input \data_storage_controller_inst/psram_write_data[2] ;
input \data_storage_controller_inst/psram_write_data[1] ;
input \data_storage_controller_inst/psram_write_data[0] ;
input \data_storage_controller_inst/psram_read_data[63] ;
input \data_storage_controller_inst/psram_read_data[62] ;
input \data_storage_controller_inst/psram_read_data[61] ;
input \data_storage_controller_inst/psram_read_data[60] ;
input \data_storage_controller_inst/psram_read_data[59] ;
input \data_storage_controller_inst/psram_read_data[58] ;
input \data_storage_controller_inst/psram_read_data[57] ;
input \data_storage_controller_inst/psram_read_data[56] ;
input \data_storage_controller_inst/psram_read_data[55] ;
input \data_storage_controller_inst/psram_read_data[54] ;
input \data_storage_controller_inst/psram_read_data[53] ;
input \data_storage_controller_inst/psram_read_data[52] ;
input \data_storage_controller_inst/psram_read_data[51] ;
input \data_storage_controller_inst/psram_read_data[50] ;
input \data_storage_controller_inst/psram_read_data[49] ;
input \data_storage_controller_inst/psram_read_data[48] ;
input \data_storage_controller_inst/psram_read_data[47] ;
input \data_storage_controller_inst/psram_read_data[46] ;
input \data_storage_controller_inst/psram_read_data[45] ;
input \data_storage_controller_inst/psram_read_data[44] ;
input \data_storage_controller_inst/psram_read_data[43] ;
input \data_storage_controller_inst/psram_read_data[42] ;
input \data_storage_controller_inst/psram_read_data[41] ;
input \data_storage_controller_inst/psram_read_data[40] ;
input \data_storage_controller_inst/psram_read_data[39] ;
input \data_storage_controller_inst/psram_read_data[38] ;
input \data_storage_controller_inst/psram_read_data[37] ;
input \data_storage_controller_inst/psram_read_data[36] ;
input \data_storage_controller_inst/psram_read_data[35] ;
input \data_storage_controller_inst/psram_read_data[34] ;
input \data_storage_controller_inst/psram_read_data[33] ;
input \data_storage_controller_inst/psram_read_data[32] ;
input \data_storage_controller_inst/psram_read_data[31] ;
input \data_storage_controller_inst/psram_read_data[30] ;
input \data_storage_controller_inst/psram_read_data[29] ;
input \data_storage_controller_inst/psram_read_data[28] ;
input \data_storage_controller_inst/psram_read_data[27] ;
input \data_storage_controller_inst/psram_read_data[26] ;
input \data_storage_controller_inst/psram_read_data[25] ;
input \data_storage_controller_inst/psram_read_data[24] ;
input \data_storage_controller_inst/psram_read_data[23] ;
input \data_storage_controller_inst/psram_read_data[22] ;
input \data_storage_controller_inst/psram_read_data[21] ;
input \data_storage_controller_inst/psram_read_data[20] ;
input \data_storage_controller_inst/psram_read_data[19] ;
input \data_storage_controller_inst/psram_read_data[18] ;
input \data_storage_controller_inst/psram_read_data[17] ;
input \data_storage_controller_inst/psram_read_data[16] ;
input \data_storage_controller_inst/psram_read_data[15] ;
input \data_storage_controller_inst/psram_read_data[14] ;
input \data_storage_controller_inst/psram_read_data[13] ;
input \data_storage_controller_inst/psram_read_data[12] ;
input \data_storage_controller_inst/psram_read_data[11] ;
input \data_storage_controller_inst/psram_read_data[10] ;
input \data_storage_controller_inst/psram_read_data[9] ;
input \data_storage_controller_inst/psram_read_data[8] ;
input \data_storage_controller_inst/psram_read_data[7] ;
input \data_storage_controller_inst/psram_read_data[6] ;
input \data_storage_controller_inst/psram_read_data[5] ;
input \data_storage_controller_inst/psram_read_data[4] ;
input \data_storage_controller_inst/psram_read_data[3] ;
input \data_storage_controller_inst/psram_read_data[2] ;
input \data_storage_controller_inst/psram_read_data[1] ;
input \data_storage_controller_inst/psram_read_data[0] ;
input \data_storage_controller_inst/psram_cmd ;
input \data_storage_controller_inst/psram_cmd_en ;
input \data_storage_controller_inst/psram_read_data_valid ;
input input_fifo_reset;
input \data_storage_controller_inst/state[3] ;
input \data_storage_controller_inst/state[2] ;
input \data_storage_controller_inst/state[1] ;
input \data_storage_controller_inst/state[0] ;
input sys_clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \data_storage_controller_inst/output_fifo_reset ;
wire \data_storage_controller_inst/output_fifo_write_en ;
wire \data_storage_controller_inst/output_fifo_almost_full ;
wire \data_storage_controller_inst/output_fifo_write_data[63] ;
wire \data_storage_controller_inst/output_fifo_write_data[62] ;
wire \data_storage_controller_inst/output_fifo_write_data[61] ;
wire \data_storage_controller_inst/output_fifo_write_data[60] ;
wire \data_storage_controller_inst/output_fifo_write_data[59] ;
wire \data_storage_controller_inst/output_fifo_write_data[58] ;
wire \data_storage_controller_inst/output_fifo_write_data[57] ;
wire \data_storage_controller_inst/output_fifo_write_data[56] ;
wire \data_storage_controller_inst/output_fifo_write_data[55] ;
wire \data_storage_controller_inst/output_fifo_write_data[54] ;
wire \data_storage_controller_inst/output_fifo_write_data[53] ;
wire \data_storage_controller_inst/output_fifo_write_data[52] ;
wire \data_storage_controller_inst/output_fifo_write_data[51] ;
wire \data_storage_controller_inst/output_fifo_write_data[50] ;
wire \data_storage_controller_inst/output_fifo_write_data[49] ;
wire \data_storage_controller_inst/output_fifo_write_data[48] ;
wire \data_storage_controller_inst/output_fifo_write_data[47] ;
wire \data_storage_controller_inst/output_fifo_write_data[46] ;
wire \data_storage_controller_inst/output_fifo_write_data[45] ;
wire \data_storage_controller_inst/output_fifo_write_data[44] ;
wire \data_storage_controller_inst/output_fifo_write_data[43] ;
wire \data_storage_controller_inst/output_fifo_write_data[42] ;
wire \data_storage_controller_inst/output_fifo_write_data[41] ;
wire \data_storage_controller_inst/output_fifo_write_data[40] ;
wire \data_storage_controller_inst/output_fifo_write_data[39] ;
wire \data_storage_controller_inst/output_fifo_write_data[38] ;
wire \data_storage_controller_inst/output_fifo_write_data[37] ;
wire \data_storage_controller_inst/output_fifo_write_data[36] ;
wire \data_storage_controller_inst/output_fifo_write_data[35] ;
wire \data_storage_controller_inst/output_fifo_write_data[34] ;
wire \data_storage_controller_inst/output_fifo_write_data[33] ;
wire \data_storage_controller_inst/output_fifo_write_data[32] ;
wire \data_storage_controller_inst/output_fifo_write_data[31] ;
wire \data_storage_controller_inst/output_fifo_write_data[30] ;
wire \data_storage_controller_inst/output_fifo_write_data[29] ;
wire \data_storage_controller_inst/output_fifo_write_data[28] ;
wire \data_storage_controller_inst/output_fifo_write_data[27] ;
wire \data_storage_controller_inst/output_fifo_write_data[26] ;
wire \data_storage_controller_inst/output_fifo_write_data[25] ;
wire \data_storage_controller_inst/output_fifo_write_data[24] ;
wire \data_storage_controller_inst/output_fifo_write_data[23] ;
wire \data_storage_controller_inst/output_fifo_write_data[22] ;
wire \data_storage_controller_inst/output_fifo_write_data[21] ;
wire \data_storage_controller_inst/output_fifo_write_data[20] ;
wire \data_storage_controller_inst/output_fifo_write_data[19] ;
wire \data_storage_controller_inst/output_fifo_write_data[18] ;
wire \data_storage_controller_inst/output_fifo_write_data[17] ;
wire \data_storage_controller_inst/output_fifo_write_data[16] ;
wire \data_storage_controller_inst/output_fifo_write_data[15] ;
wire \data_storage_controller_inst/output_fifo_write_data[14] ;
wire \data_storage_controller_inst/output_fifo_write_data[13] ;
wire \data_storage_controller_inst/output_fifo_write_data[12] ;
wire \data_storage_controller_inst/output_fifo_write_data[11] ;
wire \data_storage_controller_inst/output_fifo_write_data[10] ;
wire \data_storage_controller_inst/output_fifo_write_data[9] ;
wire \data_storage_controller_inst/output_fifo_write_data[8] ;
wire \data_storage_controller_inst/output_fifo_write_data[7] ;
wire \data_storage_controller_inst/output_fifo_write_data[6] ;
wire \data_storage_controller_inst/output_fifo_write_data[5] ;
wire \data_storage_controller_inst/output_fifo_write_data[4] ;
wire \data_storage_controller_inst/output_fifo_write_data[3] ;
wire \data_storage_controller_inst/output_fifo_write_data[2] ;
wire \data_storage_controller_inst/output_fifo_write_data[1] ;
wire \data_storage_controller_inst/output_fifo_write_data[0] ;
wire \data_storage_controller_inst/input_fifo_reset ;
wire \data_storage_controller_inst/input_fifo_read_en ;
wire \data_storage_controller_inst/input_fifo_almost_empty ;
wire \data_storage_controller_inst/input_fifo_read_data[63] ;
wire \data_storage_controller_inst/input_fifo_read_data[62] ;
wire \data_storage_controller_inst/input_fifo_read_data[61] ;
wire \data_storage_controller_inst/input_fifo_read_data[60] ;
wire \data_storage_controller_inst/input_fifo_read_data[59] ;
wire \data_storage_controller_inst/input_fifo_read_data[58] ;
wire \data_storage_controller_inst/input_fifo_read_data[57] ;
wire \data_storage_controller_inst/input_fifo_read_data[56] ;
wire \data_storage_controller_inst/input_fifo_read_data[55] ;
wire \data_storage_controller_inst/input_fifo_read_data[54] ;
wire \data_storage_controller_inst/input_fifo_read_data[53] ;
wire \data_storage_controller_inst/input_fifo_read_data[52] ;
wire \data_storage_controller_inst/input_fifo_read_data[51] ;
wire \data_storage_controller_inst/input_fifo_read_data[50] ;
wire \data_storage_controller_inst/input_fifo_read_data[49] ;
wire \data_storage_controller_inst/input_fifo_read_data[48] ;
wire \data_storage_controller_inst/input_fifo_read_data[47] ;
wire \data_storage_controller_inst/input_fifo_read_data[46] ;
wire \data_storage_controller_inst/input_fifo_read_data[45] ;
wire \data_storage_controller_inst/input_fifo_read_data[44] ;
wire \data_storage_controller_inst/input_fifo_read_data[43] ;
wire \data_storage_controller_inst/input_fifo_read_data[42] ;
wire \data_storage_controller_inst/input_fifo_read_data[41] ;
wire \data_storage_controller_inst/input_fifo_read_data[40] ;
wire \data_storage_controller_inst/input_fifo_read_data[39] ;
wire \data_storage_controller_inst/input_fifo_read_data[38] ;
wire \data_storage_controller_inst/input_fifo_read_data[37] ;
wire \data_storage_controller_inst/input_fifo_read_data[36] ;
wire \data_storage_controller_inst/input_fifo_read_data[35] ;
wire \data_storage_controller_inst/input_fifo_read_data[34] ;
wire \data_storage_controller_inst/input_fifo_read_data[33] ;
wire \data_storage_controller_inst/input_fifo_read_data[32] ;
wire \data_storage_controller_inst/input_fifo_read_data[31] ;
wire \data_storage_controller_inst/input_fifo_read_data[30] ;
wire \data_storage_controller_inst/input_fifo_read_data[29] ;
wire \data_storage_controller_inst/input_fifo_read_data[28] ;
wire \data_storage_controller_inst/input_fifo_read_data[27] ;
wire \data_storage_controller_inst/input_fifo_read_data[26] ;
wire \data_storage_controller_inst/input_fifo_read_data[25] ;
wire \data_storage_controller_inst/input_fifo_read_data[24] ;
wire \data_storage_controller_inst/input_fifo_read_data[23] ;
wire \data_storage_controller_inst/input_fifo_read_data[22] ;
wire \data_storage_controller_inst/input_fifo_read_data[21] ;
wire \data_storage_controller_inst/input_fifo_read_data[20] ;
wire \data_storage_controller_inst/input_fifo_read_data[19] ;
wire \data_storage_controller_inst/input_fifo_read_data[18] ;
wire \data_storage_controller_inst/input_fifo_read_data[17] ;
wire \data_storage_controller_inst/input_fifo_read_data[16] ;
wire \data_storage_controller_inst/input_fifo_read_data[15] ;
wire \data_storage_controller_inst/input_fifo_read_data[14] ;
wire \data_storage_controller_inst/input_fifo_read_data[13] ;
wire \data_storage_controller_inst/input_fifo_read_data[12] ;
wire \data_storage_controller_inst/input_fifo_read_data[11] ;
wire \data_storage_controller_inst/input_fifo_read_data[10] ;
wire \data_storage_controller_inst/input_fifo_read_data[9] ;
wire \data_storage_controller_inst/input_fifo_read_data[8] ;
wire \data_storage_controller_inst/input_fifo_read_data[7] ;
wire \data_storage_controller_inst/input_fifo_read_data[6] ;
wire \data_storage_controller_inst/input_fifo_read_data[5] ;
wire \data_storage_controller_inst/input_fifo_read_data[4] ;
wire \data_storage_controller_inst/input_fifo_read_data[3] ;
wire \data_storage_controller_inst/input_fifo_read_data[2] ;
wire \data_storage_controller_inst/input_fifo_read_data[1] ;
wire \data_storage_controller_inst/input_fifo_read_data[0] ;
wire \fifo_hs_input_inst/Empty ;
wire \fifo_hs_input_inst/Full ;
wire \data_storage_controller_inst/psram_write_data[63] ;
wire \data_storage_controller_inst/psram_write_data[62] ;
wire \data_storage_controller_inst/psram_write_data[61] ;
wire \data_storage_controller_inst/psram_write_data[60] ;
wire \data_storage_controller_inst/psram_write_data[59] ;
wire \data_storage_controller_inst/psram_write_data[58] ;
wire \data_storage_controller_inst/psram_write_data[57] ;
wire \data_storage_controller_inst/psram_write_data[56] ;
wire \data_storage_controller_inst/psram_write_data[55] ;
wire \data_storage_controller_inst/psram_write_data[54] ;
wire \data_storage_controller_inst/psram_write_data[53] ;
wire \data_storage_controller_inst/psram_write_data[52] ;
wire \data_storage_controller_inst/psram_write_data[51] ;
wire \data_storage_controller_inst/psram_write_data[50] ;
wire \data_storage_controller_inst/psram_write_data[49] ;
wire \data_storage_controller_inst/psram_write_data[48] ;
wire \data_storage_controller_inst/psram_write_data[47] ;
wire \data_storage_controller_inst/psram_write_data[46] ;
wire \data_storage_controller_inst/psram_write_data[45] ;
wire \data_storage_controller_inst/psram_write_data[44] ;
wire \data_storage_controller_inst/psram_write_data[43] ;
wire \data_storage_controller_inst/psram_write_data[42] ;
wire \data_storage_controller_inst/psram_write_data[41] ;
wire \data_storage_controller_inst/psram_write_data[40] ;
wire \data_storage_controller_inst/psram_write_data[39] ;
wire \data_storage_controller_inst/psram_write_data[38] ;
wire \data_storage_controller_inst/psram_write_data[37] ;
wire \data_storage_controller_inst/psram_write_data[36] ;
wire \data_storage_controller_inst/psram_write_data[35] ;
wire \data_storage_controller_inst/psram_write_data[34] ;
wire \data_storage_controller_inst/psram_write_data[33] ;
wire \data_storage_controller_inst/psram_write_data[32] ;
wire \data_storage_controller_inst/psram_write_data[31] ;
wire \data_storage_controller_inst/psram_write_data[30] ;
wire \data_storage_controller_inst/psram_write_data[29] ;
wire \data_storage_controller_inst/psram_write_data[28] ;
wire \data_storage_controller_inst/psram_write_data[27] ;
wire \data_storage_controller_inst/psram_write_data[26] ;
wire \data_storage_controller_inst/psram_write_data[25] ;
wire \data_storage_controller_inst/psram_write_data[24] ;
wire \data_storage_controller_inst/psram_write_data[23] ;
wire \data_storage_controller_inst/psram_write_data[22] ;
wire \data_storage_controller_inst/psram_write_data[21] ;
wire \data_storage_controller_inst/psram_write_data[20] ;
wire \data_storage_controller_inst/psram_write_data[19] ;
wire \data_storage_controller_inst/psram_write_data[18] ;
wire \data_storage_controller_inst/psram_write_data[17] ;
wire \data_storage_controller_inst/psram_write_data[16] ;
wire \data_storage_controller_inst/psram_write_data[15] ;
wire \data_storage_controller_inst/psram_write_data[14] ;
wire \data_storage_controller_inst/psram_write_data[13] ;
wire \data_storage_controller_inst/psram_write_data[12] ;
wire \data_storage_controller_inst/psram_write_data[11] ;
wire \data_storage_controller_inst/psram_write_data[10] ;
wire \data_storage_controller_inst/psram_write_data[9] ;
wire \data_storage_controller_inst/psram_write_data[8] ;
wire \data_storage_controller_inst/psram_write_data[7] ;
wire \data_storage_controller_inst/psram_write_data[6] ;
wire \data_storage_controller_inst/psram_write_data[5] ;
wire \data_storage_controller_inst/psram_write_data[4] ;
wire \data_storage_controller_inst/psram_write_data[3] ;
wire \data_storage_controller_inst/psram_write_data[2] ;
wire \data_storage_controller_inst/psram_write_data[1] ;
wire \data_storage_controller_inst/psram_write_data[0] ;
wire \data_storage_controller_inst/psram_read_data[63] ;
wire \data_storage_controller_inst/psram_read_data[62] ;
wire \data_storage_controller_inst/psram_read_data[61] ;
wire \data_storage_controller_inst/psram_read_data[60] ;
wire \data_storage_controller_inst/psram_read_data[59] ;
wire \data_storage_controller_inst/psram_read_data[58] ;
wire \data_storage_controller_inst/psram_read_data[57] ;
wire \data_storage_controller_inst/psram_read_data[56] ;
wire \data_storage_controller_inst/psram_read_data[55] ;
wire \data_storage_controller_inst/psram_read_data[54] ;
wire \data_storage_controller_inst/psram_read_data[53] ;
wire \data_storage_controller_inst/psram_read_data[52] ;
wire \data_storage_controller_inst/psram_read_data[51] ;
wire \data_storage_controller_inst/psram_read_data[50] ;
wire \data_storage_controller_inst/psram_read_data[49] ;
wire \data_storage_controller_inst/psram_read_data[48] ;
wire \data_storage_controller_inst/psram_read_data[47] ;
wire \data_storage_controller_inst/psram_read_data[46] ;
wire \data_storage_controller_inst/psram_read_data[45] ;
wire \data_storage_controller_inst/psram_read_data[44] ;
wire \data_storage_controller_inst/psram_read_data[43] ;
wire \data_storage_controller_inst/psram_read_data[42] ;
wire \data_storage_controller_inst/psram_read_data[41] ;
wire \data_storage_controller_inst/psram_read_data[40] ;
wire \data_storage_controller_inst/psram_read_data[39] ;
wire \data_storage_controller_inst/psram_read_data[38] ;
wire \data_storage_controller_inst/psram_read_data[37] ;
wire \data_storage_controller_inst/psram_read_data[36] ;
wire \data_storage_controller_inst/psram_read_data[35] ;
wire \data_storage_controller_inst/psram_read_data[34] ;
wire \data_storage_controller_inst/psram_read_data[33] ;
wire \data_storage_controller_inst/psram_read_data[32] ;
wire \data_storage_controller_inst/psram_read_data[31] ;
wire \data_storage_controller_inst/psram_read_data[30] ;
wire \data_storage_controller_inst/psram_read_data[29] ;
wire \data_storage_controller_inst/psram_read_data[28] ;
wire \data_storage_controller_inst/psram_read_data[27] ;
wire \data_storage_controller_inst/psram_read_data[26] ;
wire \data_storage_controller_inst/psram_read_data[25] ;
wire \data_storage_controller_inst/psram_read_data[24] ;
wire \data_storage_controller_inst/psram_read_data[23] ;
wire \data_storage_controller_inst/psram_read_data[22] ;
wire \data_storage_controller_inst/psram_read_data[21] ;
wire \data_storage_controller_inst/psram_read_data[20] ;
wire \data_storage_controller_inst/psram_read_data[19] ;
wire \data_storage_controller_inst/psram_read_data[18] ;
wire \data_storage_controller_inst/psram_read_data[17] ;
wire \data_storage_controller_inst/psram_read_data[16] ;
wire \data_storage_controller_inst/psram_read_data[15] ;
wire \data_storage_controller_inst/psram_read_data[14] ;
wire \data_storage_controller_inst/psram_read_data[13] ;
wire \data_storage_controller_inst/psram_read_data[12] ;
wire \data_storage_controller_inst/psram_read_data[11] ;
wire \data_storage_controller_inst/psram_read_data[10] ;
wire \data_storage_controller_inst/psram_read_data[9] ;
wire \data_storage_controller_inst/psram_read_data[8] ;
wire \data_storage_controller_inst/psram_read_data[7] ;
wire \data_storage_controller_inst/psram_read_data[6] ;
wire \data_storage_controller_inst/psram_read_data[5] ;
wire \data_storage_controller_inst/psram_read_data[4] ;
wire \data_storage_controller_inst/psram_read_data[3] ;
wire \data_storage_controller_inst/psram_read_data[2] ;
wire \data_storage_controller_inst/psram_read_data[1] ;
wire \data_storage_controller_inst/psram_read_data[0] ;
wire \data_storage_controller_inst/psram_cmd ;
wire \data_storage_controller_inst/psram_cmd_en ;
wire \data_storage_controller_inst/psram_read_data_valid ;
wire input_fifo_reset;
wire \data_storage_controller_inst/state[3] ;
wire \data_storage_controller_inst/state[2] ;
wire \data_storage_controller_inst/state[1] ;
wire \data_storage_controller_inst/state[0] ;
wire sys_clk;
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
    .trig0_i(\data_storage_controller_inst/output_fifo_reset ),
    .trig1_i({input_fifo_reset,\data_storage_controller_inst/input_fifo_read_en }),
    .trig2_i({\data_storage_controller_inst/state[3] ,\data_storage_controller_inst/state[2] ,\data_storage_controller_inst/state[1] ,\data_storage_controller_inst/state[0] }),
    .data_i({\data_storage_controller_inst/output_fifo_reset ,\data_storage_controller_inst/output_fifo_write_en ,\data_storage_controller_inst/output_fifo_almost_full ,\data_storage_controller_inst/output_fifo_write_data[63] ,\data_storage_controller_inst/output_fifo_write_data[62] ,\data_storage_controller_inst/output_fifo_write_data[61] ,\data_storage_controller_inst/output_fifo_write_data[60] ,\data_storage_controller_inst/output_fifo_write_data[59] ,\data_storage_controller_inst/output_fifo_write_data[58] ,\data_storage_controller_inst/output_fifo_write_data[57] ,\data_storage_controller_inst/output_fifo_write_data[56] ,\data_storage_controller_inst/output_fifo_write_data[55] ,\data_storage_controller_inst/output_fifo_write_data[54] ,\data_storage_controller_inst/output_fifo_write_data[53] ,\data_storage_controller_inst/output_fifo_write_data[52] ,\data_storage_controller_inst/output_fifo_write_data[51] ,\data_storage_controller_inst/output_fifo_write_data[50] ,\data_storage_controller_inst/output_fifo_write_data[49] ,\data_storage_controller_inst/output_fifo_write_data[48] ,\data_storage_controller_inst/output_fifo_write_data[47] ,\data_storage_controller_inst/output_fifo_write_data[46] ,\data_storage_controller_inst/output_fifo_write_data[45] ,\data_storage_controller_inst/output_fifo_write_data[44] ,\data_storage_controller_inst/output_fifo_write_data[43] ,\data_storage_controller_inst/output_fifo_write_data[42] ,\data_storage_controller_inst/output_fifo_write_data[41] ,\data_storage_controller_inst/output_fifo_write_data[40] ,\data_storage_controller_inst/output_fifo_write_data[39] ,\data_storage_controller_inst/output_fifo_write_data[38] ,\data_storage_controller_inst/output_fifo_write_data[37] ,\data_storage_controller_inst/output_fifo_write_data[36] ,\data_storage_controller_inst/output_fifo_write_data[35] ,\data_storage_controller_inst/output_fifo_write_data[34] ,\data_storage_controller_inst/output_fifo_write_data[33] ,\data_storage_controller_inst/output_fifo_write_data[32] ,\data_storage_controller_inst/output_fifo_write_data[31] ,\data_storage_controller_inst/output_fifo_write_data[30] ,\data_storage_controller_inst/output_fifo_write_data[29] ,\data_storage_controller_inst/output_fifo_write_data[28] ,\data_storage_controller_inst/output_fifo_write_data[27] ,\data_storage_controller_inst/output_fifo_write_data[26] ,\data_storage_controller_inst/output_fifo_write_data[25] ,\data_storage_controller_inst/output_fifo_write_data[24] ,\data_storage_controller_inst/output_fifo_write_data[23] ,\data_storage_controller_inst/output_fifo_write_data[22] ,\data_storage_controller_inst/output_fifo_write_data[21] ,\data_storage_controller_inst/output_fifo_write_data[20] ,\data_storage_controller_inst/output_fifo_write_data[19] ,\data_storage_controller_inst/output_fifo_write_data[18] ,\data_storage_controller_inst/output_fifo_write_data[17] ,\data_storage_controller_inst/output_fifo_write_data[16] ,\data_storage_controller_inst/output_fifo_write_data[15] ,\data_storage_controller_inst/output_fifo_write_data[14] ,\data_storage_controller_inst/output_fifo_write_data[13] ,\data_storage_controller_inst/output_fifo_write_data[12] ,\data_storage_controller_inst/output_fifo_write_data[11] ,\data_storage_controller_inst/output_fifo_write_data[10] ,\data_storage_controller_inst/output_fifo_write_data[9] ,\data_storage_controller_inst/output_fifo_write_data[8] ,\data_storage_controller_inst/output_fifo_write_data[7] ,\data_storage_controller_inst/output_fifo_write_data[6] ,\data_storage_controller_inst/output_fifo_write_data[5] ,\data_storage_controller_inst/output_fifo_write_data[4] ,\data_storage_controller_inst/output_fifo_write_data[3] ,\data_storage_controller_inst/output_fifo_write_data[2] ,\data_storage_controller_inst/output_fifo_write_data[1] ,\data_storage_controller_inst/output_fifo_write_data[0] ,\data_storage_controller_inst/input_fifo_reset ,\data_storage_controller_inst/input_fifo_read_en ,\data_storage_controller_inst/input_fifo_almost_empty ,\data_storage_controller_inst/input_fifo_read_data[63] ,\data_storage_controller_inst/input_fifo_read_data[62] ,\data_storage_controller_inst/input_fifo_read_data[61] ,\data_storage_controller_inst/input_fifo_read_data[60] ,\data_storage_controller_inst/input_fifo_read_data[59] ,\data_storage_controller_inst/input_fifo_read_data[58] ,\data_storage_controller_inst/input_fifo_read_data[57] ,\data_storage_controller_inst/input_fifo_read_data[56] ,\data_storage_controller_inst/input_fifo_read_data[55] ,\data_storage_controller_inst/input_fifo_read_data[54] ,\data_storage_controller_inst/input_fifo_read_data[53] ,\data_storage_controller_inst/input_fifo_read_data[52] ,\data_storage_controller_inst/input_fifo_read_data[51] ,\data_storage_controller_inst/input_fifo_read_data[50] ,\data_storage_controller_inst/input_fifo_read_data[49] ,\data_storage_controller_inst/input_fifo_read_data[48] ,\data_storage_controller_inst/input_fifo_read_data[47] ,\data_storage_controller_inst/input_fifo_read_data[46] ,\data_storage_controller_inst/input_fifo_read_data[45] ,\data_storage_controller_inst/input_fifo_read_data[44] ,\data_storage_controller_inst/input_fifo_read_data[43] ,\data_storage_controller_inst/input_fifo_read_data[42] ,\data_storage_controller_inst/input_fifo_read_data[41] ,\data_storage_controller_inst/input_fifo_read_data[40] ,\data_storage_controller_inst/input_fifo_read_data[39] ,\data_storage_controller_inst/input_fifo_read_data[38] ,\data_storage_controller_inst/input_fifo_read_data[37] ,\data_storage_controller_inst/input_fifo_read_data[36] ,\data_storage_controller_inst/input_fifo_read_data[35] ,\data_storage_controller_inst/input_fifo_read_data[34] ,\data_storage_controller_inst/input_fifo_read_data[33] ,\data_storage_controller_inst/input_fifo_read_data[32] ,\data_storage_controller_inst/input_fifo_read_data[31] ,\data_storage_controller_inst/input_fifo_read_data[30] ,\data_storage_controller_inst/input_fifo_read_data[29] ,\data_storage_controller_inst/input_fifo_read_data[28] ,\data_storage_controller_inst/input_fifo_read_data[27] ,\data_storage_controller_inst/input_fifo_read_data[26] ,\data_storage_controller_inst/input_fifo_read_data[25] ,\data_storage_controller_inst/input_fifo_read_data[24] ,\data_storage_controller_inst/input_fifo_read_data[23] ,\data_storage_controller_inst/input_fifo_read_data[22] ,\data_storage_controller_inst/input_fifo_read_data[21] ,\data_storage_controller_inst/input_fifo_read_data[20] ,\data_storage_controller_inst/input_fifo_read_data[19] ,\data_storage_controller_inst/input_fifo_read_data[18] ,\data_storage_controller_inst/input_fifo_read_data[17] ,\data_storage_controller_inst/input_fifo_read_data[16] ,\data_storage_controller_inst/input_fifo_read_data[15] ,\data_storage_controller_inst/input_fifo_read_data[14] ,\data_storage_controller_inst/input_fifo_read_data[13] ,\data_storage_controller_inst/input_fifo_read_data[12] ,\data_storage_controller_inst/input_fifo_read_data[11] ,\data_storage_controller_inst/input_fifo_read_data[10] ,\data_storage_controller_inst/input_fifo_read_data[9] ,\data_storage_controller_inst/input_fifo_read_data[8] ,\data_storage_controller_inst/input_fifo_read_data[7] ,\data_storage_controller_inst/input_fifo_read_data[6] ,\data_storage_controller_inst/input_fifo_read_data[5] ,\data_storage_controller_inst/input_fifo_read_data[4] ,\data_storage_controller_inst/input_fifo_read_data[3] ,\data_storage_controller_inst/input_fifo_read_data[2] ,\data_storage_controller_inst/input_fifo_read_data[1] ,\data_storage_controller_inst/input_fifo_read_data[0] ,\fifo_hs_input_inst/Empty ,\fifo_hs_input_inst/Full ,\data_storage_controller_inst/psram_write_data[63] ,\data_storage_controller_inst/psram_write_data[62] ,\data_storage_controller_inst/psram_write_data[61] ,\data_storage_controller_inst/psram_write_data[60] ,\data_storage_controller_inst/psram_write_data[59] ,\data_storage_controller_inst/psram_write_data[58] ,\data_storage_controller_inst/psram_write_data[57] ,\data_storage_controller_inst/psram_write_data[56] ,\data_storage_controller_inst/psram_write_data[55] ,\data_storage_controller_inst/psram_write_data[54] ,\data_storage_controller_inst/psram_write_data[53] ,\data_storage_controller_inst/psram_write_data[52] ,\data_storage_controller_inst/psram_write_data[51] ,\data_storage_controller_inst/psram_write_data[50] ,\data_storage_controller_inst/psram_write_data[49] ,\data_storage_controller_inst/psram_write_data[48] ,\data_storage_controller_inst/psram_write_data[47] ,\data_storage_controller_inst/psram_write_data[46] ,\data_storage_controller_inst/psram_write_data[45] ,\data_storage_controller_inst/psram_write_data[44] ,\data_storage_controller_inst/psram_write_data[43] ,\data_storage_controller_inst/psram_write_data[42] ,\data_storage_controller_inst/psram_write_data[41] ,\data_storage_controller_inst/psram_write_data[40] ,\data_storage_controller_inst/psram_write_data[39] ,\data_storage_controller_inst/psram_write_data[38] ,\data_storage_controller_inst/psram_write_data[37] ,\data_storage_controller_inst/psram_write_data[36] ,\data_storage_controller_inst/psram_write_data[35] ,\data_storage_controller_inst/psram_write_data[34] ,\data_storage_controller_inst/psram_write_data[33] ,\data_storage_controller_inst/psram_write_data[32] ,\data_storage_controller_inst/psram_write_data[31] ,\data_storage_controller_inst/psram_write_data[30] ,\data_storage_controller_inst/psram_write_data[29] ,\data_storage_controller_inst/psram_write_data[28] ,\data_storage_controller_inst/psram_write_data[27] ,\data_storage_controller_inst/psram_write_data[26] ,\data_storage_controller_inst/psram_write_data[25] ,\data_storage_controller_inst/psram_write_data[24] ,\data_storage_controller_inst/psram_write_data[23] ,\data_storage_controller_inst/psram_write_data[22] ,\data_storage_controller_inst/psram_write_data[21] ,\data_storage_controller_inst/psram_write_data[20] ,\data_storage_controller_inst/psram_write_data[19] ,\data_storage_controller_inst/psram_write_data[18] ,\data_storage_controller_inst/psram_write_data[17] ,\data_storage_controller_inst/psram_write_data[16] ,\data_storage_controller_inst/psram_write_data[15] ,\data_storage_controller_inst/psram_write_data[14] ,\data_storage_controller_inst/psram_write_data[13] ,\data_storage_controller_inst/psram_write_data[12] ,\data_storage_controller_inst/psram_write_data[11] ,\data_storage_controller_inst/psram_write_data[10] ,\data_storage_controller_inst/psram_write_data[9] ,\data_storage_controller_inst/psram_write_data[8] ,\data_storage_controller_inst/psram_write_data[7] ,\data_storage_controller_inst/psram_write_data[6] ,\data_storage_controller_inst/psram_write_data[5] ,\data_storage_controller_inst/psram_write_data[4] ,\data_storage_controller_inst/psram_write_data[3] ,\data_storage_controller_inst/psram_write_data[2] ,\data_storage_controller_inst/psram_write_data[1] ,\data_storage_controller_inst/psram_write_data[0] ,\data_storage_controller_inst/psram_read_data[63] ,\data_storage_controller_inst/psram_read_data[62] ,\data_storage_controller_inst/psram_read_data[61] ,\data_storage_controller_inst/psram_read_data[60] ,\data_storage_controller_inst/psram_read_data[59] ,\data_storage_controller_inst/psram_read_data[58] ,\data_storage_controller_inst/psram_read_data[57] ,\data_storage_controller_inst/psram_read_data[56] ,\data_storage_controller_inst/psram_read_data[55] ,\data_storage_controller_inst/psram_read_data[54] ,\data_storage_controller_inst/psram_read_data[53] ,\data_storage_controller_inst/psram_read_data[52] ,\data_storage_controller_inst/psram_read_data[51] ,\data_storage_controller_inst/psram_read_data[50] ,\data_storage_controller_inst/psram_read_data[49] ,\data_storage_controller_inst/psram_read_data[48] ,\data_storage_controller_inst/psram_read_data[47] ,\data_storage_controller_inst/psram_read_data[46] ,\data_storage_controller_inst/psram_read_data[45] ,\data_storage_controller_inst/psram_read_data[44] ,\data_storage_controller_inst/psram_read_data[43] ,\data_storage_controller_inst/psram_read_data[42] ,\data_storage_controller_inst/psram_read_data[41] ,\data_storage_controller_inst/psram_read_data[40] ,\data_storage_controller_inst/psram_read_data[39] ,\data_storage_controller_inst/psram_read_data[38] ,\data_storage_controller_inst/psram_read_data[37] ,\data_storage_controller_inst/psram_read_data[36] ,\data_storage_controller_inst/psram_read_data[35] ,\data_storage_controller_inst/psram_read_data[34] ,\data_storage_controller_inst/psram_read_data[33] ,\data_storage_controller_inst/psram_read_data[32] ,\data_storage_controller_inst/psram_read_data[31] ,\data_storage_controller_inst/psram_read_data[30] ,\data_storage_controller_inst/psram_read_data[29] ,\data_storage_controller_inst/psram_read_data[28] ,\data_storage_controller_inst/psram_read_data[27] ,\data_storage_controller_inst/psram_read_data[26] ,\data_storage_controller_inst/psram_read_data[25] ,\data_storage_controller_inst/psram_read_data[24] ,\data_storage_controller_inst/psram_read_data[23] ,\data_storage_controller_inst/psram_read_data[22] ,\data_storage_controller_inst/psram_read_data[21] ,\data_storage_controller_inst/psram_read_data[20] ,\data_storage_controller_inst/psram_read_data[19] ,\data_storage_controller_inst/psram_read_data[18] ,\data_storage_controller_inst/psram_read_data[17] ,\data_storage_controller_inst/psram_read_data[16] ,\data_storage_controller_inst/psram_read_data[15] ,\data_storage_controller_inst/psram_read_data[14] ,\data_storage_controller_inst/psram_read_data[13] ,\data_storage_controller_inst/psram_read_data[12] ,\data_storage_controller_inst/psram_read_data[11] ,\data_storage_controller_inst/psram_read_data[10] ,\data_storage_controller_inst/psram_read_data[9] ,\data_storage_controller_inst/psram_read_data[8] ,\data_storage_controller_inst/psram_read_data[7] ,\data_storage_controller_inst/psram_read_data[6] ,\data_storage_controller_inst/psram_read_data[5] ,\data_storage_controller_inst/psram_read_data[4] ,\data_storage_controller_inst/psram_read_data[3] ,\data_storage_controller_inst/psram_read_data[2] ,\data_storage_controller_inst/psram_read_data[1] ,\data_storage_controller_inst/psram_read_data[0] ,\data_storage_controller_inst/psram_cmd ,\data_storage_controller_inst/psram_cmd_en ,\data_storage_controller_inst/psram_read_data_valid }),
    .clk_i(sys_clk)
);

endmodule
