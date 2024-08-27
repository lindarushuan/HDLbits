module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]cout_a,cout;
    wire [15:0]sum0,sum1;
    add16 block_a(a[15:0],b[15:0],0,sum[15:0],cout_a);  
    add16 block_up(a[31:16],b[31:16],0,sum0,cout);
    add16 block_down(a[31:16],b[31:16],1,sum1,cout);

    always@(cout_a,sum0,sum1)begin
        case(cout_a)
            0: sum[31:16] = sum0;
            1: sum[31:16] = sum1;
        endcase
    end
endmodule