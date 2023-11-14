/*
	Name: RISC V RV32I
	Descrption: Implements 27 instructions
					5 stage pipeline
					Hazard Unit is present for handling both control and data hazards

*/
module riscv( clk, reset, PCF, InstrF, MemWriteM, ALUResultM, WriteDataM, ReadDataM,Exception, Underflow, Overflow);


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
//wire [4:0] Rs1D, Rs2D, Rs1E, Rs2E;
wire  [4:0] Rs1D_i, Rs2D_i, Rs1E_i, Rs2E_i,RdE_i,RdE_f;
wire [4:0] Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f;
wire [4:0] RdM, RdW;
wire [1:0] ForwardAE, ForwardBE;
wire [1:0] ExtensionE;

output Exception,Overflow,Underflow;

controller CONTROL_PATH(clk, reset, InstrD[6:0],InstrD[31:25], InstrD[14:12], InstrD[30],InstrD[29], ZeroE, SignE, FlushE, ResultSrcE0, ResultSrcW, MemWriteM, PCJalSrcE, PCSrcE, ALUSrcAE, ALUSrcBE, RegWriteM, RegWriteW, ImmSrcD, ALUControlE,ExtensionE);

//hazardunit HAZARD_UNIT (Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW, RegWriteM, RegWriteW, ResultSrcE0, PCSrcE, ForwardAE, ForwardBE, StallD, StallF, FlushD, FlushE);
 hazardunit HAZARD_UNIT (Rs1D_i, Rs2D_i, Rs1E_i, Rs2E_i,Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f, RdE_i,RdE_f, RdM, RdW, RegWriteM, RegWriteW, ResultSrcE0, PCSrcE, ForwardAE, ForwardBE, StallD, StallF, FlushD, FlushE);
 
//datapath DATA_PATH(clk, reset, ResultSrcW, PCJalSrcE, PCSrcE,ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, ZeroE, SignE, PCF, InstrF, InstrD, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE, Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW, StallD, StallF, FlushD, FlushE,ExtensionE);
//,ExtensionE,Exception,Overflow,Underflow);
 datapath DATA_PATH(clk, reset, ResultSrcW, PCJalSrcE, PCSrcE,ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, ZeroE, SignE, PCF, InstrF, InstrD, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE, Rs1D_i,Rs1D_f ,Rs2D_i,Rs2D_f, Rs1E_i,Rs1E_f, Rs2E_i,Rs2E_f, RdE, RdM, RdW, StallD, 
StallF, FlushD, FlushE, ExtensionE,Exception, Underflow, Overflow);
//,Exception,Overflow,Underflow);

endmodule