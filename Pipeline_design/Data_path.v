`timescale 1ns / 1ps

module Data_path(clk, reset, ResultSrcW, PCJalSrcE,PCSrcE, ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, 
ZeroE, PCF, InstrF, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE , Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW );
    input  clk, reset;
		input   [1:0] ResultSrcW;
		input   PCJalSrcE, PCSrcE,  ALUSrcAE;
		input   [1:0] ALUSrcBE;
		input   RegWriteW;
		input   [2:0] ImmSrcD;
		input   [3:0] ALUControlE;
		output  ZeroE;
		
		output reg  [31:0] PCF;
		input   [31:0] InstrF;
		wire  [31:0] InstrD;
		output  [31:0] ALUResultM;
		output [31:0] WriteDataM;
		input   [31:0] ReadDataM;
		input [1:0] ForwardAE, ForwardBE;
		input [4:0] Rs1D, Rs2D, Rs1E, Rs2E;
        input  [4:0] RdE, RdM, RdW;
wire	  [31:0] PCD, PCE, ALUResultE, ALUResultW, ReadDataW;
wire  [31:0] PCNextF, PCPlus4F, PCPlus4D, PCPlus4E, PCPlus4M, PCPlus4W, PCTargetE, BranchJumpTargetE;
wire	  [31:0] WriteDataE;
wire	  [31:0] ImmExtD, ImmExtE;
wire	  [31:0] SrcAEfor, SrcAE, SrcBE, RD1D, RD2D, RD1E, RD2E;
wire	  [31:0] ResultW;
	
wire	  [4:0] RdD; // destination register address


always @(posedge clk, posedge reset)
begin
if(reset)
PCF <= 0;
else
PCF <= PCNextF;
end

assign PCPlus4F = PCF + 32'd4;

mux2 jal_r(PCTargetE, ALUResultE, PCJalSrcE, BranchJumpTargetE);
mux2 pcmux( BranchJumpTargetE,PCPlus4F, PCSrcE, PCNextF);

  
    IF_ID pipereg0(clk, reset, InstrF, PCF, PCPlus4F,InstrD, PCD, PCPlus4D);
   
    ID_EX pipreg1(clk, reset, RD1D, RD2D, PCD,Rs1D, Rs2D, RdD,ImmExtD, PCPlus4D, RD1E, RD2E, PCE,RdE,ImmExtE, PCPlus4E, Rs1E, Rs2E);
   	assign Rs1D = InstrD[19:15];
	assign Rs2D = InstrD[24:20];
	assign RdD = InstrD[11:7];
    
    EX_MEM pipereg2(clk, reset, ALUResultE, WriteDataE, RdE, PCPlus4E, ALUResultM, WriteDataM, RdM, PCPlus4M);
    MEM_WB pipereg3(clk, reset, ALUResultM, ReadDataM, RdM, PCPlus4M, ALUResultW, ReadDataW, RdW, PCPlus4W);
    
//    ALU alu_logic(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE);
//mux2 srcamux(RD1E ,32'b0, ALUSrcAE,SrcAE);


mux3 forwardMuxA (RD1E, ResultW, ALUResultM, ForwardAE, SrcAEfor);
mux2 srcamux(32'b0, SrcAEfor, ALUSrcAE, SrcAE); // for lui
	
	
ALU alu_logic(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE);

mux3 forwardMuxB (RD2E, ResultW, ALUResultM, ForwardBE, WriteDataE);
	mux3 srcbmux(WriteDataE, ImmExtE, PCTargetE, ALUSrcBE, SrcBE); 

assign PCTargetE = PCE + ImmExtE ;
//through 2nd port of ALU we can pass the values ImmExtE, 
  
    Registers REG(clk, ResultW, Rs1D, Rs2D, RdW, RegWriteW, RD1D, RD2D);
    
    Extend ext(InstrD[31:0], ImmSrcD, ImmExtD);
    
    mux3 resultmux( ALUResultW, ReadDataW, PCPlus4W, ResultSrcW, ResultW);


//assign WriteDataE = RD2D;          
endmodule
