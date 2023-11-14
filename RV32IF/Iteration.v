`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 11:20:46
// Design Name: 
// Module Name: Iteration
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Iteration(
	input [31:0] operand_1,
	input [31:0] operand_2,
	output [31:0] solution
	);

wire [31:0] Intermediate_Value1,Intermediate_Value2;

Multiplication M1(operand_1,operand_2,,,,Intermediate_Value1);

//32'h4000_0000 -> 2.
Addition_Subtraction A1(32'h4000_0000,{1'b1,Intermediate_Value1[30:0]},1'b0,,Intermediate_Value2);

Multiplication M2(operand_1,Intermediate_Value2,,,,solution);

endmodule
