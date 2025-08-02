module top(
    input clk_50m,
    input rst_n,

    // uart interface
    output uart_tx,
    
    // sniffer interface
    input mosi,
    input miso,
    input sck,
    input cs,

    output fifo_full_error
);

    // reg uart_tx_fifo_wr_en;
    // reg [7:0] uart_tx_fifo_wr_data;

    // reg uart_tx_fifo_rd_en;
    // wire [7:0] uart_tx_fifo_rd_data;

    // wire uart_tx_fifo_full;
    // wire uart_tx_fifo_empty;
    // wire [13:0] uart_tx_fifo_wnum;

    wire uart_tx_fifo_wr_en;
    wire [7:0] uart_tx_fifo_wr_data;
    wire uart_tx_fifo_full;

    wire uart_tx_fifo_rd_en;
    wire [7:0] uart_tx_fifo_rd_data;
    wire uart_tx_fifo_empty;

    wire [13:0] uart_tx_fifo_wnum;



	uart_tx_fifo uart_tx_fifo_inst(
		.Clk    (clk_50m                ), //input Clk
		.Reset  (~rst_n                 ), //input Reset

		.WrEn   (uart_tx_fifo_wr_en     ), //input WrEn
		.Data   (uart_tx_fifo_wr_data   ), //input [7:0] Data
		.Full   (uart_tx_fifo_full      ), //output Full

		.RdEn   (uart_tx_fifo_rd_en     ), //input RdEn
		.Q      (uart_tx_fifo_rd_data   ), //output [7:0] Q
		.Empty  (uart_tx_fifo_empty     ), //output Empty

		.Wnum   (uart_tx_fifo_wnum      ) //output [13:0] Wnum
	);

    // output declaration of module uart_tx
    wire tx;
    wire tx_busy;
    wire tx_en;
    wire [7:0] tx_data;
    
    uart_tx #(
        .CLK_FREQ  	(50_000_000  ),
        .BAUD_RATE 	(1_000_000   ))
    uart_tx_inst(
        .sys_clk   	(clk_50m     ),
        .sys_rst_n 	(rst_n       ),
        .tx        	(uart_tx     ),
        .tx_en     	(tx_en       ),
        .tx_data   	(tx_data     ),
        .tx_busy   	(tx_busy     )
    );
    

    // // ctrl the uart_tx
    // assign tx_data = tx_en ? uart_tx_fifo_rd_data : 8'b0; // send data from FIFO when tx_en is high
    // always @(posedge clk_50m or negedge rst_n) begin
    //     if (!rst_n) begin
    //         tx_en <= 1'b0;
    //         uart_tx_fifo_rd_en <= 1'b0; // disable read
    //     end else begin
    //         tx_en <= 1'b0;
            
    //         if (!uart_tx_fifo_rd_en) begin // not read req
    //             if (!tx_busy && !uart_tx_fifo_empty) begin // if tx is not busy and fifo is not empty
    //                 uart_tx_fifo_rd_en <= 1'b1;
    //             end
    //         end else begin // req data
    //             tx_en <= 1'b1; // enable tx
    //             uart_tx_fifo_rd_en <= 1'b0; // disable read
    //         end
    //     end
    // end

    // output declaration of module spi
    wire cs_start;
    wire cs_end;
    wire data_valid;
    wire [7:0] mosi_data;
    wire [7:0] miso_data;

    spi u_spi(
        .clk_50m    	(clk_50m     ),
        .rst_n      	(rst_n       ),
        .cs         	(cs          ),
        .sck        	(sck         ),
        .mosi       	(mosi        ),
        .miso       	(miso        ),
        .cs_start   	(cs_start    ),
        .cs_end     	(cs_end      ),
        .data_valid 	(data_valid  ),
        .mosi_data  	(mosi_data   ),
        .miso_data  	(miso_data   )
    );

    data_sender u_data_sender(
        .sys_clk              	(clk_50m               ),
        .rst_n                	(rst_n                 ),
        .tx_en                	(tx_en                 ),
        .tx_data              	(tx_data               ),
        .tx_busy              	(tx_busy               ),
        .uart_tx_fifo_wr_en   	(uart_tx_fifo_wr_en    ),
        .uart_tx_fifo_wr_data 	(uart_tx_fifo_wr_data  ),
        .uart_tx_fifo_full    	(uart_tx_fifo_full     ),
        .uart_tx_fifo_rd_en   	(uart_tx_fifo_rd_en    ),
        .uart_tx_fifo_rd_data 	(uart_tx_fifo_rd_data  ),
        .uart_tx_fifo_empty   	(uart_tx_fifo_empty    ),
        .uart_tx_fifo_wnum    	(uart_tx_fifo_wnum     ),
        .cs_start             	(cs_start              ),
        .cs_end               	(cs_end                ),
        .data_valid           	(data_valid            ),
        .mosi_data            	(mosi_data             ),
        .miso_data            	(miso_data             ),
        .fifo_full_error      	(fifo_full_error       )
    );
    


    // reg [7:0] data_counter;
    // always @(posedge clk_50m or negedge rst_n) begin
    //     if (!rst_n) begin
    //         data_counter <= 8'b0;
    //         uart_tx_fifo_wr_en <= 1'b0; // enable write
    //         uart_tx_fifo_wr_data <= 8'b0; // reset write data

    //     end else begin
    //         if (!uart_tx_fifo_full && data_counter < 8'd255) begin
    //             data_counter <= data_counter + 1;
    //             // Write data to FIFO
    //             uart_tx_fifo_wr_en <= 1'b1; // enable write
    //             uart_tx_fifo_wr_data <= data_counter; // example data, can be replaced with actual data
    //         end else begin
    //             uart_tx_fifo_wr_en <= 1'b0; // disable write
    //             uart_tx_fifo_wr_data <= 8'b0; // reset write data
    //         end
    //     end
    // end

endmodule