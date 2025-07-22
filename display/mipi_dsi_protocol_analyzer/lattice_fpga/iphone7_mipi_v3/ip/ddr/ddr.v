/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module ddr
//
module ddr (ddr_output_data, ddr_output_dout, ddr_output_clkout, ddr_output_refclk, 
            ddr_output_reset) /* synthesis sbp_module=true */ ;
    input [33:0]ddr_output_data;
    output [16:0]ddr_output_dout;
    output ddr_output_clkout;
    input ddr_output_refclk;
    input ddr_output_reset;
    
    
    ddr_output ddr_output_inst (.data({ddr_output_data}), .dout({ddr_output_dout}), 
            .clkout(ddr_output_clkout), .refclk(ddr_output_refclk), .reset(ddr_output_reset));
    
endmodule

