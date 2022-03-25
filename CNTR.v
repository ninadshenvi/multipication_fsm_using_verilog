module CNTR (
    input [15:0] din,
    input ld,
    input dec,
    input clk,
    output reg [15:0] dout
    );

always@(posedge clk)
        
        if(ld)              // if load is active, load data into register of B //
            dout<= din;
                
        else if(dec)       // If decrement signal is active, then decrement value of B //
            dout <= dout-1;
            
endmodule
