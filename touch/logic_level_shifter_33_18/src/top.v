module top(
    input clk, // 45
    // input rst_n,

    input [7:0] I,
    output [7:0] O,

    output led

);
    

assign O = I;
reg [7:0] led_counter;
assign led = led_counter[4];
always @(posedge clk) begin
    led_counter <= led_counter + 1;
end

endmodule