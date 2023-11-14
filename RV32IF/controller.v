
module controller(clk, reset, op,funct7, funct3, funct7b5,funct7b4, ZeroE, SignE, FlushE, ResultSrcE0, ResultSrcW, MemWriteM, PCJalSrcE, PCSrcE, ALUSrcAE, ALUSrcBE, RegWriteM, RegWriteW, ImmSrcD, ALUControlE,ExtensionE);

input   clk, reset;
input   [6:0] op, funct7;
input   [2:0] funct3;
input   funct7b5, funct7b4,  ZeroE,  SignE,  FlushE;
output   ResultSrcE0;
output   [1:0] ResultSrcW;
output   MemWriteM;
output   PCJalSrcE, PCSrcE, ALUSrcAE;
output   [1:0] ALUSrcBE;
output   RegWriteM, RegWriteW;
output   [2:0] ImmSrcD;
output   [3:0] ALUControlE;
output [1:0] ExtensionE;

  wire [1:0] ALUOpD, ResultSrcD, ResultSrcE, ResultSrcM;
  wire [3:0] ALUControlD;
  wire BranchD, BranchE, MemWriteD, MemWriteE, JumpD, JumpE;
  wire ZeroOp, ALUSrcAD, RegWriteD, RegWriteE;
  wire [1:0] ALUSrcBD, ExtensionD;;
  wire SignOp;
  wire BranchOp;

// main decoder
maindec MAIN_DECODER(op,funct7, ResultSrcD, MemWriteD, BranchD, ALUSrcAD, ALUSrcBD, RegWriteD, JumpD, ImmSrcD, ALUOpD,ExtensionD);

// alu decoder
aludec ALU_DECODER(op[5],op[6], funct3, funct7b5,funct7b4, ALUOpD, ALUControlD);


c_ID_IEx c_pipreg0(clk, reset, FlushE, RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcAD, ALUSrcBD, ResultSrcD, ALUControlD, 
										RegWriteE, MemWriteE, JumpE, BranchE, ALUSrcAE, ALUSrcBE, ResultSrcE, ALUControlE,ExtensionD,ExtensionE);
assign ResultSrcE0 = ResultSrcE[0];

c_IEx_IM c_pipreg1(clk, reset, RegWriteE, MemWriteE, ResultSrcE, RegWriteM,  MemWriteM, ResultSrcM);

c_IM_IW c_pipreg2 (clk, reset, RegWriteM, ResultSrcM, RegWriteW, ResultSrcW);


assign ZeroOp = ZeroE ^ funct3[0]; // Complements Zero flag for BNE Instruction
assign SignOp = (SignE ^ funct3[0]) ; //Complements Sign for BGE

//mux2 BranchSrc (ZeroOp, SignOp, funct3[2], BranchOp); // fix this later
assign BranchOp = funct3[2] ? (SignOp) : (ZeroOp); 
assign PCSrcE = (BranchE & BranchOp) | JumpE;
assign PCJalSrcE = (op == 7'b1100111) ? 1 : 0; // jalr


endmodule