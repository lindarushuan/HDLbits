module top_module(
    input [7:0] in,
    output reg [2:0] pos
);
    always@(in)begin
        casez(in)
            8'bzzzz_zzz1: pos=3'd0;
            8'bzzzz_zz10: pos=3'd1;
            8'bzzzz_z100: pos=3'd2;
            8'bzzzz_1000: pos=3'd3;
            8'bzzz1_0000: pos=3'd4;
            8'bzz1z_0000: pos=3'd5;
            8'bz1zz_0000: pos=3'd6;
            8'b1zzz_0000: pos=3'd7;
            default:pos=1'b0;
        endcase
    end

endmodule