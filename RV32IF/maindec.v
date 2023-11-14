/***
	Name: Main Decoder
	Description: This unit generates the control signals from the 7 bit opcode.
	Determines the type of instruction


***/

module maindec(op,funct7, ResultSrc, MemWrite, Branch, ALUSrcA, ALUSrcB, RegWrite, Jump, ImmSrc, ALUOp,Extension);
input [6:0] op, funct7;

output[1:0] ResultSrc;
output   MemWrite;
output   Branch, ALUSrcA;
output   [1:0] ALUSrcB;
output   RegWrite;
output   Jump;
output   [2:0] ImmSrc;
output   [1:0] ALUOp,Extension;
	

reg[15:0] controls;

assign {Extension,RegWrite, ImmSrc, ALUSrcA, ALUSrcB, MemWrite, ResultSrc, Branch, ALUOp, Jump} = controls;

always @(*)
	case(op)
	//Extension_RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump
		7'b0000011: controls = 16'b00_1_000_0_01_0_01_0_00_0; // lw
		7'b0100011: controls = 16'b00_0_001_0_01_1_00_0_00_0; // sw
		7'b0110011: controls = 16'b00_1_xxx_0_00_0_00_0_10_0; // R–type
		7'b1100011: controls = 16'b00_0_010_0_00_0_00_1_01_0; // B-type
		7'b0010011: controls = 16'b00_1_000_0_01_0_00_0_10_0; // I–type ALU
		7'b1101111: controls = 16'b00_1_011_0_00_0_10_0_00_1; // jal
		7'b0010111: controls = 16'b00_1_100_1_10_0_00_0_00_0; // auipc // PC Target for SrcB
		7'b0110111: controls = 16'b00_1_100_1_01_0_00_0_00_0; // lui
		7'b1100111: controls = 16'b00_1_000_0_01_0_10_0_00_1; // jalr
		7'b0000000: controls = 16'b00_0_000_0_00_0_00_0_00_0; // for default values on reset

//Extension_RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump		
		7'b0000111: controls = 16'b01_1_000_0_01_0_01_0_00_0;//FLW 
		7'b0100111: controls = 16'b01_0_001_0_00_1_00_0_00_0;//FSW
		
//		7'b1000011: controls = 16'b11_1_000_0_01_0_01_0_00_0;//FMADD.S 
//		7'b1000111: controls = 16'b11_1_000_0_01_0_01_0_00_0;//FMSUB 
//		7'b1001011: controls = 16'b11_1_000_0_01_0_01_0_00_0;//FNMSUB 
//		7'b1001111: controls = 16'b11_1_000_0_01_0_01_0_00_0;//FNMADD 
		7'b1010011: begin
		            case(funct7)
//Extension_RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump
	
		            1010000: controls = 16'b01_1_xxx_0_00_0_00_0_xx_0; //FMIN,FMAX,FEQ
	                0010100: controls = 16'b11_1_000_0_01_0_01_0_xx_0;// FMIN, FMAX

//Extension_RegWrite_ImmSrc_ALUSrcA_ALUSrcB_MemWrite_ResultSrc_Branch_ALUOp_Jump
		               
	                0000000: controls = 16'b11_1_xxx_0_00_0_00_0_00_0;//FADD 
	                0000100: controls = 16'b11_1_xxx_0_00_0_00_0_01_0;//FSUB
	                0001000: controls = 16'b11_1_xxx_0_00_0_00_0_10_0;//FMUL
	                0001100: controls = 16'b11_1_xxx_0_00_0_00_0_11_0;//FDIV
	                endcase
	                end
		default: 	controls = 16'bx_x_xxx_x_xx_x_xx_x_xx_x; // instruction not implemented
	endcase
endmodule