//Program Counter updates by 4 (in most of conditions) as each instruction is of 32 bit
 //In RISC-V we can access do byte access , half-word accesss (which I've not implemented here)
`timescale 1ns / 1ps

module Program_Counter(clk, reset, PC, PCSrc, immext,isJump);

input clk;
input reset;
input PCSrc;
input [31:0]immext;
input isJump;
output reg[31:0] PC;


always @(posedge clk)
begin
if(reset)
PC<=0;
else
begin
//for jump and link , branch instructions
if(PCSrc == 1'b1 | isJump==1'b1 )
 PC <= PC + immext;
 else
 PC <= PC+4;
 end
end

endmodule
