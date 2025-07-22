//Verilog instantiation template

fifo _inst (.dphy_raw_fifo_Data(), .dphy_raw_fifo_Q(), .dphy_raw_fifo_RCNT(), 
     .dphy_raw_fifo_WCNT(), .dphy_raw_fifo_Empty(), .dphy_raw_fifo_Full(), 
     .dphy_raw_fifo_RPReset(), .dphy_raw_fifo_RdClock(), .dphy_raw_fifo_RdEn(), 
     .dphy_raw_fifo_Reset(), .dphy_raw_fifo_WrClock(), .dphy_raw_fifo_WrEn());