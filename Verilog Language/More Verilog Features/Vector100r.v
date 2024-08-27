module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always@(*)begin
        for(i=0;i<=99;i=i+1)begin//限制在99內做反轉
            out[i]=in[99-i];
        end
    end
endmodule