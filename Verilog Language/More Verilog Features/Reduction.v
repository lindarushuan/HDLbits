module top_module (
    input [7:0] in,
    output parity); 
    assign parity = ^in[7:0]; //對7bit的in訊號一次性做XOR
endmodule