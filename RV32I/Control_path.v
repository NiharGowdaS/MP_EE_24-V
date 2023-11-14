
module Control_path(input  clk, reset,
						input   [6:0] opcode,
						input   [2:0] funct3,
						input   [6:0]funct7,
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
						output   [3:0] ALUControlX,
						output RegWriteM);

 //wire [1:0] ALUOpD;
 wire [1:0] ResultSrcD, ResultSrcE, ResultSrcM;
 wire  [3:0] ALUControlD, ALUControlE;
 wire BranchD, BranchE, MemWriteD, MemWriteE, JumpD, JumpE;
 wire ZeroOp, ALUSrcAD, RegWriteD, RegWriteE;
 wire [1:0] ALUSrcBD;
 //wire SignOp;
 wire BranchOp;

//wire  RegWriteF, MemWriteF, JumpF, BranchF, ALUSrcAF;
//wire [2:0] ImmSrcF;
//		wire  [1:0] ALUSrcBF;
//        wire  [1:0] ResultSrcF;
//        wire  [3:0] ALUControlF; 
// main decoder

always @(posedge clk)
ALUControlX<=ALUControlE;

Instr_Decode decoder(opcode,funct3,funct7,ALUControlD, MemWriteD, BranchD, RegWriteD, JumpD, ImmSrcD, ALUSrcAD, ALUSrcBD, ResultSrcD);


C_ID_EX c_pipreg0(clk, reset,  RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcAD, ALUSrcBD, ResultSrcD, 
										RegWriteE, MemWriteE, JumpE, BranchE, ALUSrcAE, ALUSrcBE, ResultSrcE,ALUControlD,ALUControlE);
//assign ResultSrcE0 = ResultSrcE[0];

C_EX_MEM c_pipreg1(clk, reset, RegWriteE, MemWriteE, ResultSrcE, RegWriteM,  MemWriteM, ResultSrcM);

C_MEM_WB c_pipreg2 (clk, reset, RegWriteM, ResultSrcM, RegWriteW, ResultSrcW);


assign BranchOp = ZeroE ^ funct3[0]; // Complements Zero flag for BNE Instruction
//assign SignOp = (SignE ^ funct3[0]) ; //Complements Sign for BGE

//mux2 BranchSrc (ZeroOp, SignOp, funct3[2], BranchOp); // fix this later
//assign BranchOp = funct3[2] ? (SignOp) : (ZeroOp); 
assign PCSrcE = (BranchE & BranchOp) | JumpE;
assign PCJalSrcE = (opcode == 7'b1100111) ? 1 : 0; // jalr


endmodule