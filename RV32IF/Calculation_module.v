`timescale 1ns / 1ps

module Calculation_module(operandA, operandB, ALUControl,ALUResult,Zero, Sign,Extension,Exception, Underflow, Overflow);
// Zero, Sign,Exception,Overflow,Underflow,

input [31:0] operandA, operandB;
reg [31:0] SrcA_i, SrcB_i, SrcA_f, SrcB_f;
input [3:0] ALUControl;
output  [31:0] ALUResult;

 output  Exception, Underflow, Overflow,Zero, Sign;
input [1:0] Extension;

wire  [31:0] ALU_Result_i,ALU_Result_f;
alu ALU(SrcA_i,SrcB_i, ALUControl , ALU_Result_i, Zero, Sign);

FPU fpu(SrcA_f,SrcB_f, ALUControl,ALU_Result_f,Exception,Overflow,Underflow);

always @(*)
begin
if(Extension == 2'b11)
begin
SrcA_f = operandA;
SrcB_f = operandB;
end
else
begin
SrcA_i = operandA;
SrcB_i = operandB;
end
end

assign ALUResult = (Extension==2'b11)?ALU_Result_i:ALU_Result_f;
	
endmodule
