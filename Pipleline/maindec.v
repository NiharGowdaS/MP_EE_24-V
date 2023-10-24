/***
	Name: Main Decoder
	Description: This unit generates the control signals from the 7 bit opcode.
	Determines the type of instruction


***/

module maindec(op, ResultSrc, MemWrite, Branch, ALUSrcA, ALUSrcB, RegWrite, Jump, ImmSrc, ALUOp,Extension);
input [6:0] op;
output[1:0] ResultSrc;
output   MemWrite;
output   Branch, ALUSrcA;
output   [1:0] ALUSrcB;
output   RegWrite;
output   Jump,Extension;
output   [2:0] ImmSrc;
output   [1:0] ALUOp;
	

reg[14:0] controls;

assign {Extension,RegWrite, ImmSrc, ALUSrcA, ALUSrcB, MemWrite, ResultSrc, Branch, ALUOp, Jump} = controls;

always @(*)
	case(op)
	//Extension_RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump
		7'b0000011: controls = 15'b0_1_000_0_01_0_01_0_00_0; // lw
		7'b0100011: controls = 15'b0_0_001_0_01_1_00_0_00_0; // sw
		7'b0110011: controls = 15'b0_1_xxx_0_00_0_00_0_10_0; // R–type
		7'b1100011: controls = 15'b0_0_010_0_00_0_00_1_01_0; // B-type
		7'b0010011: controls = 15'b0_1_000_0_01_0_00_0_10_0; // I–type ALU
		7'b1101111: controls = 15'b0_1_011_0_00_0_10_0_00_1; // jal
		7'b0010111: controls = 15'b0_1_100_1_10_0_00_0_00_0; // auipc // PC Target for SrcB
		7'b0110111: controls = 15'b0_1_100_1_01_0_00_0_00_0; // lui
		7'b1100111: controls = 15'b0_1_000_0_01_0_10_0_00_1; // jalr
		7'b0000000: controls = 15'b0_0_000_0_00_0_00_0_00_0; // for default values on reset
		
		7'b0000111: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FLW 
		7'b0100111: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FSW
		7'b1000011: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FMADD.S 
		7'b1000111: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FMSUB 
		7'b1001011: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FNMSUB 
		7'b1001111: controls = 15'b1_1_000_0_01_0_01_0_00_0;//FNMADD 
		7'b1010011: controls = 15'b0_1_xxx_0_00_0_00_0_10_0;//FADD FSUB FMUL FDIV FMAX FEQ FLT FLE
	
		default: 	controls = 15'bx_x_xxx_x_xx_x_xx_x_xx_x; // instruction not implemented
	endcase
endmodule