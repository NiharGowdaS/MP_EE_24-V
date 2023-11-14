`timescale 1ns/1ps

//`include "ID_IEx.v"
/*
	Name: 5 stage pipelined Datapath
	Description: Datapath with 5 stages
	Refer the microarchitecture in the images folder for reference
	
	
*/


module datapath(clk, reset, ResultSrcW, PCJalSrcE, PCSrcE,ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, ZeroE, SignE, PCF, InstrF, InstrD, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE, Rs1D_i,Rs1D_f ,Rs2D_i,Rs2D_f, Rs1E_i,Rs1E_f, Rs2E_i,Rs2E_f, RdE, RdM, RdW, StallD, 
StallF, FlushD, FlushE, Extension,Exception, Underflow, Overflow);
//,Exception,Overflow,Underflow);
//, Extension,Exception,Overflow,Underflow,Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f,RdE_f,ALUResultM_f);

input   clk,reset;
input   [1:0]ResultSrcW;
input   PCJalSrcE,PCSrcE,ALUSrcAE; 
input   [1:0]ALUSrcBE;
input   RegWriteW;
input   [2:0] ImmSrcD;
input   [3:0] ALUControlE;
output   ZeroE;
output   SignE;
output   [31:0] PCF;
input   [31:0] InstrF;
output   [31:0] InstrD;
output   [31:0] ALUResultM, WriteDataM;
input   [31:0] ReadDataM;
input   [1:0] ForwardAE, ForwardBE;
output   [4:0] Rs1D_i, Rs2D_i, Rs1E_i, Rs2E_i;
output   [4:0] Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f;
output reg RdE;
output  RdM, RdW;
input   StallD, StallF, FlushD, FlushE;
input [1:0] Extension ;
 wire [4:0] RdE_i,RdE_f;
output Exception,Overflow,Underflow;
//output [31:0] ALUResultM_f;

wire	  [31:0] PCD, PCE, ALUResultE, ALUResultW, ReadDataW;
wire	  [31:0] PCNextF, PCPlus4F, PCPlus4D, PCPlus4E, PCPlus4M, PCPlus4W, PCTargetE, BranJumpTargetE;
wire	  [31:0] WriteDataE;
wire	  [31:0] ImmExtD, ImmExtE;
wire	  [31:0] SrcAEfor, SrcAE, SrcBE, RD1D_i, RD2D_i, RD1E_i, RD2E_i,RD1D_f, RD2D_f, RD1E_f, RD2E_f;
wire	  [31:0] ResultW;
	
wire	  [4:0] RdD; // destination register address
reg      [31:0] int_or_float_1,int_or_float_2;
reg     [4:0] RdW_i, RdW_f;	
	// Fetch Stage
	
	mux2 jal_r(PCTargetE, ALUResultE, PCJalSrcE, BranJumpTargetE);
	mux2 pcmux(PCPlus4F, BranJumpTargetE, PCSrcE, PCNextF);
	flopenr IF(clk, reset, ~StallF, PCNextF, PCF);
	adder pcadd4(PCF, 32'd4, PCPlus4F);
	
		
	// Instruction Fetch - Decode Pipeline Register	
	
	IF_ID pipreg0 (clk, reset, FlushD, ~StallD, InstrF, PCF, PCPlus4F, InstrD, PCD, PCPlus4D);
	assign Rs1D_i = InstrD[19:15];
	assign Rs2D_i = InstrD[24:20];		
	regfile i_rf (clk, ResultW, Rs1D_i, Rs2D_i, RdW_i, RegWriteW, RD1D_i, RD2D_i);
	assign RdD_i = InstrD[11:7];
	extend ext(InstrD[31:7], ImmSrcD, ImmExtD);

	assign Rs1D_f = InstrD[19:15];
	assign Rs2D_f = InstrD[24:20]; 
    regfile f_rf (clk, ResultW, Rs1D_f, Rs2D_f, RdW_f, RegWriteW,RD1D_f, RD2D_f);
	assign RdD_f = InstrD[11:7];
	
	
	// Decode - Execute Pipeline Register	
//	assign int_or_float_1 = (Extension==2'b11)?RD1E_i:RD1E_f;
//    assign int_or_float_2 = (Extension==2'b11)?RD2E_i:RD2E_f;   `
//assign int_or_float_1 = 32'bx;
//    assign int_or_float_2 = 32'bx;
always @(*)begin
    if(Extension==2'b11)
    begin
    int_or_float_1 = RD1E_i;
    int_or_float_2 = RD2E_i;
    end
    else
    begin
     int_or_float_1 = RD1E_f;
     int_or_float_2 = RD2E_f;
      end
     end
     
	ID_IEx pipreg1 (clk, reset, FlushE,RD1D_i, RD2D_i, PCD, RD1D_f, RD2D_f,Rs1D_i, Rs2D_i,Rs1D_f,Rs2D_f, RdD_i,RdD_f,ImmExtD, PCPlus4D,RD1E_i,RD1E_f, RD2E_i,RD2E_f, PCE,Rs1E_i, Rs2E_i, RdE_i, Rs1E_f, Rs2E_f, RdE_f,ImmExtE, PCPlus4E);
                
               
	mux3 forwardMuxA (int_or_float_1, ResultW, ALUResultM, ForwardAE, SrcAEfor);
	mux2 srcamux(SrcAEfor, 32'b0, ALUSrcAE, SrcAE); // for lui
	mux3 forwardMuxB (int_or_float_2, ResultW, ALUResultM, ForwardBE, WriteDataE);
	mux3 srcbmux(WriteDataE, ImmExtE, PCTargetE, ALUSrcBE, SrcBE); 
	adder pcaddbranch(PCE, ImmExtE, PCTargetE); // Next PC for jump and branch instructions
//	alu alu(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE, SignE);
Calculation_module CALCULATE (SrcAE, SrcBE, ALUControlE, ALUResultE,ZeroE, SignE,Extension,Exception, Underflow, Overflow);
 //ZeroE, SignE,Exception,Overflow,Underflow,Extension);


	
	//FPU fpu(a_operand,b_operand,ALUControlE,ALUResultE_f	,Exception,Overflow,Underflow);
		
	// Execute - Memory Access Pipeline Register
	//IEx_IMem pipreg2 (clk, reset, ALUResultE, WriteDataE, RdE, PCPlus4E, ALUResultM, WriteDataM, RdM, PCPlus4M);
	//wire [31:0] ALUResultE_f;
	IEx_IMem pipreg2(clk, reset, ALUResultE, WriteDataE, RdE, PCPlus4E, ALUResultM, WriteDataM, RdM, PCPlus4M);
	//,ALUResultE_f,ALUResultM_f);

	always @(*) begin
	if(Extension==2'b10)
		RdW_f = RdW;
		else
		RdW_i = RdW;
		end
		
		always @(*) begin
	if(Extension==2'b10)
		RdE = RdE_f;
		else
		RdE = RdE_i;
		end
	// Memory - Register Write Back Stage
	IMem_IW pipreg3 (clk, reset, ALUResultM, ReadDataM, RdM, PCPlus4M, ALUResultW, ReadDataW, RdW, PCPlus4W);
	mux3 resultmux( ALUResultW, ReadDataW, PCPlus4W, ResultSrcW, ResultW);
	
	//assign ALUResult = Extension?ALUResultM_f:ALUResultM;

endmodule