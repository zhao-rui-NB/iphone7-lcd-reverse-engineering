//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1NR-LV9LQ144PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Thu Jul 31 01:19:44 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	uart_tx_fifo your_instance_name(
		.Data(Data), //input [7:0] Data
		.Clk(Clk), //input Clk
		.WrEn(WrEn), //input WrEn
		.RdEn(RdEn), //input RdEn
		.Reset(Reset), //input Reset
		.Wnum(Wnum), //output [13:0] Wnum
		.Q(Q), //output [7:0] Q
		.Empty(Empty), //output Empty
		.Full(Full) //output Full
	);

//--------Copy end-------------------
