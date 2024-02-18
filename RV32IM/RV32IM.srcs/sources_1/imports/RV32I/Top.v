`timescale 1ns / 1ps

module Top (clk,reset,out);
input  clk,  reset;
output out;
				
	wire  [31:0] PCF, InstrF, ReadDataM;
	//wire PCF;
//	wire InstrF;
	wire  [31:0] 	WriteDataM,  DataAdrM;
     assign out = MemWriteM;
	wire MemWriteM;
//	wire ReadDataM;
	
	
	

	RISC_V_core riscv( clk, reset, PCF, InstrF, ReadDataM, MemWriteM, DataAdrM, WriteDataM);
	
	//Instruction_Memory imem(PCF, InstrF);
	
	Instruction_mem imem(PCF, InstrF);
	
	Data_Memory dmem(clk, DataAdrM,WriteDataM,ReadDataM, MemWriteM );
	
	

endmodule



