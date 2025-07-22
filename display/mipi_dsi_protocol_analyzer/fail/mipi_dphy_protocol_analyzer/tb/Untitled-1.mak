iverilog -o MIPI_tb ./tb/MIPI_tb.v ./MIPI_RefDesign/src/*.v ./MIPI_RefDesign/src/mipi_rx_advance/*.v ./MIPI_RefDesign/src/mipi_tx_advance/*.v ./sim/modelsim/prim_sim.v


iverilog -o MIPI_tb 
./tb/MIPI_tb.v 
./MIPI_RefDesign/src/DPHY_TOP.v 
./MIPI_RefDesign/src/gw_pll.v 
./MIPI_RefDesign/src/ROM549X17.v 
./MIPI_RefDesign/src/mipi_tx_advance/mipi_tx_advance.vo 
./MIPI_RefDesign/src/mipi_rx_advance/mipi_rx_advance.vo 
./sim/modelsim/prim_sim.v