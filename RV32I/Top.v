`timescale 1ns / 1ps

module Top (input   			clk, reset); 
//			output   [31:0] 	WriteDataM,  DataAdrM, 
//			output   			MemWriteM);
				
	wire  [31:0] PCF, InstrF, ReadDataM;
	//wire PCF;
//	wire InstrF;
	wire  [31:0] 	WriteDataM,  DataAdrM;

	wire MemWriteM;
//	wire ReadDataM;
	
	
	

	RISC_V_core riscv( clk, reset, PCF, InstrF, ReadDataM, MemWriteM, DataAdrM, WriteDataM);
	
	Instruction_Memory imem(reset, PCF, InstrF);
	
	Data_Memory dmem(clk, reset, DataAdrM,WriteDataM,ReadDataM, MemWriteM );
	
	

endmodule



