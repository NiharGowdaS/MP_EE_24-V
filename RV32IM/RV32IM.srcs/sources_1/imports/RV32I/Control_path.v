
module Control_path(input  clk, reset,
//						input   [6:0] opcodeF,
//						input   [2:0] funct3F,
//						input   [6:0]funct7F,
input [31:0]InstrF,
						input   ZeroE,
						//input   SignE,
						//input   FlushE,
						//output   ResultSrcE0,
						output   [1:0] ResultSrcW,
						output   MemWriteM,
						output   PCJalSrcE, PCSrcE, ALUSrcAE, 
						output   [1:0] ALUSrcBE,
						output    RegWriteW,
						output   [2:0] ImmSrcD,
						output [4:0] ALUControlE,
						output RegWriteM);
wire PCJalSrcD;
 //wire [1:0] ALUOpD;
 wire [1:0] ResultSrcD, ResultSrcE, ResultSrcM;
 wire  [4:0] ALUControlD, ALUControlX;
 wire BranchD, BranchE, MemWriteD, MemWriteE, JumpD, JumpE;
 wire ZeroOp, ALUSrcAD, RegWriteD, RegWriteE;
 wire [1:0] ALUSrcBD;
 //wire SignOp;
 wire BranchOp;
 //wire [2:0] ImmSrcD;
// wire [6:0] opcodeD;
// wire [2:0] funct3D;
// wire  [6:0]funct7D;
wire [31:0] InstrD;
//wire  RegWriteF, MemWriteF, JumpF, BranchF, ALUSrcAF;
//wire [2:0] ImmSrcF;
//		wire  [1:0] ALUSrcBF;
//        wire  [1:0] ResultSrcF;
//        wire  [3:0] ALUControlF; 
// main decoder


assign ALUControlE = ALUControlX;

Instr_Decode decoder(InstrD[6:0],InstrD[14:12],InstrD[31:25],ALUControlD, MemWriteD, BranchD, RegWriteD, JumpD, ImmSrcD, ALUSrcAD, ALUSrcBD, ResultSrcD);
  
C_IF_ID c_pipregi(clk, reset,InstrD,InstrF );
C_ID_EX c_pipreg0(clk, reset,  RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcAD, ALUSrcBD, ResultSrcD, RegWriteE, 
MemWriteE, JumpE, BranchE, ALUSrcAE, ALUSrcBE, ResultSrcE,ALUControlD,
ALUControlX, PCJalSrcD,PCJalSrcE);
//,ImmSrcD,ImmSrcE);
//assign ResultSrcE0 = ResultSrcE[0];

C_EX_MEM c_pipreg1(clk, reset, RegWriteE, MemWriteE, ResultSrcE, RegWriteM,  MemWriteM, ResultSrcM);

C_MEM_WB c_pipreg2 (clk, reset, RegWriteM, ResultSrcM, RegWriteW, ResultSrcW);


assign BranchOp = ZeroE ^ InstrD[12]; // Complements Zero flag for BNE Instruction
//assign SignOp = (SignE ^ funct3[0]) ; //Complements Sign for BGE

//mux2 BranchSrc (ZeroOp, SignOp, funct3[2], BranchOp); // fix this later
//assign BranchOp = funct3[2] ? (SignOp) : (ZeroOp); 
assign PCSrcE = (BranchE & BranchOp) | JumpE;
assign PCJalSrcD = (InstrD[6:0] == 7'b1101111) ? 1 : 0; // jal


endmodule