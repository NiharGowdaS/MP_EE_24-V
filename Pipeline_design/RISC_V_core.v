/*
	Name: RISC V RV32I
	Descrption: Implements 27 instructions
					5 stage pipeline
					Hazard Unit is present for handling both control and data hazards

*/
module RISC_V_core(input   clk, reset,
	output   [31:0] PCF,
	input   [31:0] InstrF,
	input   [31:0] ReadDataM, //getting from data memory while load operation
	output   MemWriteM,
	output   [31:0] ALUResultM, WriteDataM //used in store operation
	
	);
	
	
  wire ALUSrcAE, RegWriteW, RegWriteM, PCJalSrcE, PCSrcE;
wire  [1:0] ALUSrcBE;
//wire  StallD, StallF, FlushD, FlushE;
wire  [1:0] ResultSrcW; 
wire  [2:0] ImmSrcD;
wire  [3:0] ALUControlE;
wire  [31:0] InstrD;


wire  [4:0] RdE, RdM, RdW;
wire  [1:0] ForwardAE, ForwardBE;
wire [4:0] Rs1D, Rs2D, Rs1E, Rs2E;

Data_path DATAPATH(clk, reset, ResultSrcW, PCJalSrcE,PCSrcE, ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, 
ZeroE, PCF, InstrF, ALUResultM, WriteDataM, ReadDataM, ForwardAE, ForwardBE, Rs1D, Rs2D, Rs1E, Rs2E, RdE, RdM, RdW );
 
Control_path CONTROLPATH(clk, reset, InstrF[6:0], InstrF[14:12], InstrF[31:25], ZeroE, ResultSrcW, MemWriteM, PCJalSrcE, PCSrcE, 
 ALUSrcAE, ALUSrcBE, RegWriteW, ImmSrcD, ALUControlE, RegWriteM);
 
 Hazard_detection HAZARD_MODULE(Rs1D, Rs2D, Rs1E, Rs2E,RdE, RdM, RdW, RegWriteM, RegWriteW,
 ForwardAE, ForwardBE);

endmodule