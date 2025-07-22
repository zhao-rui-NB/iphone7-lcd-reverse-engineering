// module hspi_sender(
//     input                   sys_clk,
//     input                   sys_rst_n,


//     // input                   neg_test_key,

//     // hspi interface
//     output                  htclk,
//     output reg              htreq,
//     input                   htrdy,
//     output reg              htvld,
//     output  [31:0]          htd,

//     input                   hspi_cts, // hspi clear to send

//     // fifo interface 
//     output reg              output_fifo_read_en,
//     input [31:0]            output_fifo_read_data,
//     input                   output_fifo_emtpy
// );



module fake_fifo_test_data(
    input                   sys_clk,
    input                   sys_rst_n,

    // fifo interface 
    input                    output_fifo_read_en,
    output reg [31:0]        output_fifo_read_data,
    output reg               output_fifo_emtpy
);

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        output_fifo_read_data <= 0;
        output_fifo_emtpy <= 1;
    end else begin
        output_fifo_emtpy <= 0;
        if (output_fifo_read_en) begin
            output_fifo_read_data <= output_fifo_read_data + 1;
        end
    end

end


// always @ (posedge sys_clk or negedge sys_rst_n) begin
//     if (!sys_rst_n) begin
//         output_fifo_read_data <= 0;
//         output_fifo_emtpy <= 1;
//     end else begin
//         output_fifo_emtpy <= 0;
//         if (output_fifo_read_data == 32'h1FFFFFFF) begin
//             output_fifo_emtpy <= 1;
//         end else if (output_fifo_read_en) begin
//             output_fifo_read_data <= output_fifo_read_data + 1;
//         end
//     end

// end



endmodule