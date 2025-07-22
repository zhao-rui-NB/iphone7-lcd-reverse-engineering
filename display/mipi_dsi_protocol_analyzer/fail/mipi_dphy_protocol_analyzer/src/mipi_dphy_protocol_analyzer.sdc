//Copyright (C)2014-2025 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2025-06-09 00:56:53
create_clock -name sys_clk_27 -period 20 -waveform {0 18.518} [get_ports {sys_clk_27}]
create_clock -name hs_clk -period 2.381 -waveform {0 1.19} [get_ports {mc20901_hs_c_p}]
set_input_delay -clock hs_clk 0.595 [get_ports {mc20901_hs_c_p mc20901_hs_d_p mc20901_hs_e_p}]
