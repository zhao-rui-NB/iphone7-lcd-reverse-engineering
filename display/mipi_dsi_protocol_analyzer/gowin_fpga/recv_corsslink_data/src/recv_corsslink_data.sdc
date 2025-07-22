//Copyright (C)2014-2025 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2025-07-21 16:11:11
create_clock -name ddr_clk -period 13.333 -waveform {0 6.667} [get_ports {ddr_clk}]
create_clock -name clk_50m -period 20 -waveform {0 10} [get_ports {clk_50m}]
