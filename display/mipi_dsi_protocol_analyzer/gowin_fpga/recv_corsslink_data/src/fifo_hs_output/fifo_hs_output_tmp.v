//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.11.02 (64-bit)
//Part Number: GW1NR-LV9LQ144PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Wed Jul  9 13:36:26 2025

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	fifo_hs_output your_instance_name(
		.Data(Data), //input [63:0] Data
		.WrReset(WrReset), //input WrReset
		.RdReset(RdReset), //input RdReset
		.WrClk(WrClk), //input WrClk
		.RdClk(RdClk), //input RdClk
		.WrEn(WrEn), //input WrEn
		.RdEn(RdEn), //input RdEn
		.Almost_Full(Almost_Full), //output Almost_Full
		.Q(Q), //output [31:0] Q
		.Empty(Empty), //output Empty
		.Full(Full) //output Full
	);

//--------Copy end-------------------
