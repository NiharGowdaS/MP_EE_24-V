`timescale 1ns / 1ps
 //unit is used for extend the immediate value for different intruction foramts


module Extend(instr, imm_ext);

input [31:0] instr;
output reg[31:0] imm_ext;


	always @(*)
	begin
		case(instr[6:0])
		// I_type
7'b0010011: imm_ext = {{20{instr[31]}}, instr[31:20]};
//I_type ALU
7'b0000011: imm_ext = {{20{instr[31]}}, instr[31:20]};
		
		// S_type (stores)
7'b0100011: imm_ext = {{20{instr[31]}}, instr[31:25], instr[11:7]};
		
		// B_type (branches)
7'b1100111: imm_ext = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
		
		// J_type (jal)
7'b1101111: imm_ext = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
		
		// U_type
7'b0110111: imm_ext = {instr[31:12], 12'b0};
		
		default: imm_ext = 32'bx; // undefined
	endcase
	
	end
	
endmodule

