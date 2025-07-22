/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module fifo
//
module fifo (dphy_raw_fifo_Data, dphy_raw_fifo_Q, dphy_raw_fifo_RCNT, 
            dphy_raw_fifo_WCNT, dphy_raw_fifo_Empty, dphy_raw_fifo_Full, 
            dphy_raw_fifo_RPReset, dphy_raw_fifo_RdClock, dphy_raw_fifo_RdEn, 
            dphy_raw_fifo_Reset, dphy_raw_fifo_WrClock, dphy_raw_fifo_WrEn) /* synthesis sbp_module=true */ ;
    input [31:0]dphy_raw_fifo_Data;
    output [31:0]dphy_raw_fifo_Q;
    output [5:0]dphy_raw_fifo_RCNT;
    output [5:0]dphy_raw_fifo_WCNT;
    output dphy_raw_fifo_Empty;
    output dphy_raw_fifo_Full;
    input dphy_raw_fifo_RPReset;
    input dphy_raw_fifo_RdClock;
    input dphy_raw_fifo_RdEn;
    input dphy_raw_fifo_Reset;
    input dphy_raw_fifo_WrClock;
    input dphy_raw_fifo_WrEn;
    
    
    dphy_raw_fifo dphy_raw_fifo_inst (.Data({dphy_raw_fifo_Data}), .Q({dphy_raw_fifo_Q}), 
            .RCNT({dphy_raw_fifo_RCNT}), .WCNT({dphy_raw_fifo_WCNT}), .Empty(dphy_raw_fifo_Empty), 
            .Full(dphy_raw_fifo_Full), .RPReset(dphy_raw_fifo_RPReset), 
            .RdClock(dphy_raw_fifo_RdClock), .RdEn(dphy_raw_fifo_RdEn), 
            .Reset(dphy_raw_fifo_Reset), .WrClock(dphy_raw_fifo_WrClock), 
            .WrEn(dphy_raw_fifo_WrEn));
    
endmodule

