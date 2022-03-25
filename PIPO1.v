module PIPO1(
    input [15:0] din,
    input ld,
    input clk,
    output reg [15:0] dout
    );

always@(posedge clk)

    if(ld)
            dout<= din;

endmodule
