//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1NR-LV9LQ144PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Tue Jun 10 00:43:56 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	MIPI_RX_Advance_Top your_instance_name(
		.reset_n(reset_n), //input reset_n
		.HS_CLK_P(HS_CLK_P), //input HS_CLK_P
		.HS_CLK_N(HS_CLK_N), //input HS_CLK_N
		.clk_byte_out(clk_byte_out), //output clk_byte_out
		.HS_DATA2_P(HS_DATA2_P), //input HS_DATA2_P
		.HS_DATA2_N(HS_DATA2_N), //input HS_DATA2_N
		.data_out2(data_out2), //output [7:0] data_out2
		.HS_DATA1_P(HS_DATA1_P), //input HS_DATA1_P
		.HS_DATA1_N(HS_DATA1_N), //input HS_DATA1_N
		.data_out1(data_out1), //output [7:0] data_out1
		.HS_DATA0_P(HS_DATA0_P), //input HS_DATA0_P
		.HS_DATA0_N(HS_DATA0_N), //input HS_DATA0_N
		.data_out0(data_out0), //output [7:0] data_out0
		.hs_en(hs_en), //input hs_en
		.clk_term_en(clk_term_en), //input clk_term_en
		.data_term_en(data_term_en), //input data_term_en
		.ready(ready) //output ready
	);

//--------Copy end-------------------
