/*
	Name: RISC V RV32I
	Descrption: Implements 27 instructions
					5 stage pipeline
					Hazard Unit is present for handling both control and data hazards

*/
module riscv( clk, reset, PCF, InstrF, MemWriteM, ALUResultM, WriteDataM, ReadDataM);


input clk, reset;
	output  [31:0] PCF;
	input  [31:0] InstrF;
	output MemWriteM;
	output  [31:0] ALUResultM, WriteDataM;
	input [31:0] ReadDataM;
	
wire ALUSrcAE, RegWriteM, RegWriteW, ZeroE, SignE, PCJalSrcE, PCSrcE;
wire [1:0] ALUSrcBE;
wire StallD, StallF, FlushD, FlushE, ResultSrcE0;
wire [1:0] ResultSrcW; 
wire [2:0] ImmSrcD;
wire [3:0] ALUControlE;
wire [31:0] InstrD;
wire [4:0] Rs1D, Rs2D, Rs1E, Rs2E;
wire [4:0] RdE, RdM, RdW;
wire [1:0] ForwardAE, ForwardBE;
wire ExtensionE;

wire Exception,Overflow,Underflow;

controller CONTROL_PATH(clk, reset, InstrD[6:0], InstrD[14:12], InstrD[30], ZeroE, SignE, FlushE, ResultSrcE0, ResultSrcW, MemWriteM, PCJalSrcE, PCSrcE, ALUSrcAE, ALUSrcBE, RegWriteM, RegWriteW, ImmSrcD, ALUControlE, ExtensionE);

hazardunit HAZARD_UNIT (Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW, RegWriteM, RegWriteW, ResultSrcE0, PCSrcE, ForwardAE, ForwardBE, StallD, StallF, FlushD, FlushE);

datapath DATA_PATH(clk, reset, ResultSrcW, PCJalSrcE, PCSrcE,ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, ZeroE, SignE, PCF, InstrF, InstrD, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE, Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW, StallD, StallF, FlushD, FlushE,ExtensionE,Exception,Overflow,Underflow);

endmodule