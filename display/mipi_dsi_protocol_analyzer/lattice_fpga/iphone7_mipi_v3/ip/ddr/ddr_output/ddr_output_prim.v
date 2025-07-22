// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jul 20 20:55:21 2025
//
// Verilog Description of module ddr_output
//

module ddr_output (clkout, refclk, reset, data, dout) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(8[8:18])
    output clkout /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(12[17:23])
    input refclk;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(9[16:22])
    input reset;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(10[16:21])
    input [33:0]data;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(11[23:27])
    output [16:0]dout;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(13[24:28])
    
    wire refclk /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(9[16:22])
    
    wire scuba_vlo, scuba_vhi, buf_clkout, buf_douto16, buf_douto15, 
        buf_douto14, buf_douto13, buf_douto12, buf_douto11, buf_douto10, 
        buf_douto9, buf_douto8, buf_douto7, buf_douto6, buf_douto5, 
        buf_douto4, buf_douto3, buf_douto2, buf_douto1, buf_douto0;
    
    ODDRX1F Inst4_ODDRX1F15 (.D0(data[15]), .D1(data[32]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto15)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F15.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F14 (.D0(data[14]), .D1(data[31]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto14)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F14.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F13 (.D0(data[13]), .D1(data[30]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto13)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F13.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F12 (.D0(data[12]), .D1(data[29]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto12)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F12.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F11 (.D0(data[11]), .D1(data[28]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto11)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F11.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F10 (.D0(data[10]), .D1(data[27]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto10)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F10.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F9 (.D0(data[9]), .D1(data[26]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto9)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F9.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F8 (.D0(data[8]), .D1(data[25]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto8)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F8.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F7 (.D0(data[7]), .D1(data[24]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto7)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F7.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F6 (.D0(data[6]), .D1(data[23]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto6)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F6.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F5 (.D0(data[5]), .D1(data[22]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto5)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F5.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F4 (.D0(data[4]), .D1(data[21]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto4)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F4.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F3 (.D0(data[3]), .D1(data[20]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto3)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F3.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F2 (.D0(data[2]), .D1(data[19]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto2)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F2.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F1 (.D0(data[1]), .D1(data[18]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto1)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F1.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F0 (.D0(data[0]), .D1(data[17]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto0)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F0.GSR = "ENABLED";
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    ODDRX1F Inst3_ODDRX1F (.D0(scuba_vhi), .D1(scuba_vlo), .SCLK(refclk), 
            .RST(reset), .Q(buf_clkout)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst3_ODDRX1F.GSR = "ENABLED";
    OB Inst2_OB (.I(buf_clkout), .O(clkout)) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(131[8:45])
    OB Inst1_OB16 (.I(buf_douto16), .O(dout[16])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(134[8:50])
    OB Inst1_OB15 (.I(buf_douto15), .O(dout[15])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(137[8:50])
    OB Inst1_OB14 (.I(buf_douto14), .O(dout[14])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(140[8:50])
    OB Inst1_OB13 (.I(buf_douto13), .O(dout[13])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(143[8:50])
    OB Inst1_OB12 (.I(buf_douto12), .O(dout[12])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(146[8:50])
    OB Inst1_OB11 (.I(buf_douto11), .O(dout[11])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(149[8:50])
    OB Inst1_OB10 (.I(buf_douto10), .O(dout[10])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(152[8:50])
    OB Inst1_OB9 (.I(buf_douto9), .O(dout[9])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(155[8:47])
    OB Inst1_OB8 (.I(buf_douto8), .O(dout[8])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(158[8:47])
    OB Inst1_OB7 (.I(buf_douto7), .O(dout[7])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(161[8:47])
    OB Inst1_OB6 (.I(buf_douto6), .O(dout[6])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(164[8:47])
    OB Inst1_OB5 (.I(buf_douto5), .O(dout[5])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(167[8:47])
    OB Inst1_OB4 (.I(buf_douto4), .O(dout[4])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(170[8:47])
    OB Inst1_OB3 (.I(buf_douto3), .O(dout[3])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(173[8:47])
    OB Inst1_OB2 (.I(buf_douto2), .O(dout[2])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(176[8:47])
    OB Inst1_OB1 (.I(buf_douto1), .O(dout[1])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(179[8:47])
    OB Inst1_OB0 (.I(buf_douto0), .O(dout[0])) /* synthesis IO_TYPE="LVCMOS25", syn_instantiated=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/ddr/ddr_output/ddr_output.v(182[8:47])
    GSR GSR_INST (.GSR(scuba_vhi));
    ODDRX1F Inst4_ODDRX1F16 (.D0(data[16]), .D1(data[33]), .SCLK(refclk), 
            .RST(reset), .Q(buf_douto16)) /* synthesis syn_instantiated=1 */ ;
    defparam Inst4_ODDRX1F16.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

