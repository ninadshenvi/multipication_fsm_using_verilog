module MUL_datapath(eqz, LdA, LdB, LdP, clrP, decB, data_in,clk);

input  LdA, LdB, LdP, clrP, decB,clk;
input [15:0] data_in;
output eqz;
wire [15:0] X,Y,Z,Bout, Bus;



PIPO1 A (Bus,LdA,clk,X);		
PIPO2 P (Z,LdP,clrP,clk,Y);	      
CNTR B(Bus,LdB,decB,clk,Bout);	    
ADD AD (Z,X,Y);			  
EQZ COMP (eqz,Bout);	         


endmodule
