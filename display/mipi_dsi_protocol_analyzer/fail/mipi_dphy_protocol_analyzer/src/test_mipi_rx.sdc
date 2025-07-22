//Copyright (C)2014-2023 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2023-05-22 16:56:42
create_clock -name MIPI_CLK -period 2.5 -waveform {0 1.25} [get_ports {MIPI_CLK_P}]
create_clock -name byte_clk -period 20 -waveform {0 10} [get_ports {clk_byte_out}]
