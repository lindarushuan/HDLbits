module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] sub_sel,conver_b;
    wire cout_up,cout;
    assign sub_sel ={32{sub}};
    assign conver_b = b^sub_sel;//xor

    add16 module_up(.a(a[15:0]),.b(conver_b[15:0]),.cin(sub),.sum(sum[15:0]),.cout(cout_up));
    add16 module_down(.a(a[31:16]),.b(conver_b[31:16]),.cin(cout_up),.sum(sum[31:16]),.cout(cout));

endmodule