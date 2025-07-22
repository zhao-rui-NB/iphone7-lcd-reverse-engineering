//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1NR-LV9QN88PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Mon May 22 23:43:47 2023

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	MIPI_RX_Advance_Top your_instance_name(
		.reset_n(reset_n), //input reset_n
		.MIPI_CLK_P(MIPI_CLK_P), //inout MIPI_CLK_P
		.MIPI_CLK_N(MIPI_CLK_N), //inout MIPI_CLK_N
		.lp_clk_out(lp_clk_out), //output [1:0] lp_clk_out
		.lp_clk_in(lp_clk_in), //input [1:0] lp_clk_in
		.lp_clk_dir(lp_clk_dir), //input lp_clk_dir
		.clk_byte_out(clk_byte_out), //output clk_byte_out
		.MIPI_LANE2_P(MIPI_LANE2_P), //inout MIPI_LANE2_P
		.MIPI_LANE2_N(MIPI_LANE2_N), //inout MIPI_LANE2_N
		.data_out2(data_out2), //output [7:0] data_out2
		.lp_data2_out(lp_data2_out), //output [1:0] lp_data2_out
		.lp_data2_in(lp_data2_in), //input [1:0] lp_data2_in
		.lp_data2_dir(lp_data2_dir), //input lp_data2_dir
		.MIPI_LANE1_P(MIPI_LANE1_P), //inout MIPI_LANE1_P
		.MIPI_LANE1_N(MIPI_LANE1_N), //inout MIPI_LANE1_N
		.data_out1(data_out1), //output [7:0] data_out1
		.lp_data1_out(lp_data1_out), //output [1:0] lp_data1_out
		.lp_data1_in(lp_data1_in), //input [1:0] lp_data1_in
		.lp_data1_dir(lp_data1_dir), //input lp_data1_dir
		.MIPI_LANE0_P(MIPI_LANE0_P), //inout MIPI_LANE0_P
		.MIPI_LANE0_N(MIPI_LANE0_N), //inout MIPI_LANE0_N
		.data_out0(data_out0), //output [7:0] data_out0
		.lp_data0_out(lp_data0_out), //output [1:0] lp_data0_out
		.lp_data0_in(lp_data0_in), //input [1:0] lp_data0_in
		.lp_data0_dir(lp_data0_dir), //input lp_data0_dir
		.hs_en(hs_en), //input hs_en
		.clk_term_en(clk_term_en), //input clk_term_en
		.data_term_en(data_term_en), //input data_term_en
		.ready(ready) //output ready
	);

//--------Copy end-------------------
