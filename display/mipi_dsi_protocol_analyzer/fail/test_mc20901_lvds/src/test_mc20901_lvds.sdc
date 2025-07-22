//Copyright (C)2014-2025 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2025-06-11 00:54:57
create_clock -name lane_ck -period 2.381 -waveform {0 1.19} [get_ports {hs_c_p}]
set_input_delay -clock lane_ck 0.416 -min [get_ports {hs_a_p hs_b_p hs_c_p hs_d_p hs_e_p}]
set_input_delay -clock lane_ck 0.773 -max [get_ports {hs_a_p hs_b_p hs_c_p hs_d_p hs_e_p}]
set_input_delay -clock lane_ck 0.416 -min -fall -add_delay [get_ports {hs_a_p hs_b_p hs_c_p hs_d_p hs_e_p}]
set_input_delay -clock lane_ck 0.773 -max -fall -add_delay [get_ports {hs_a_p hs_b_p hs_c_p hs_d_p hs_e_p}]
