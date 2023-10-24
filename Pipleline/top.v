module top (clk, reset,WriteDataM,  DataAdrM,MemWriteM);
				
				input clk, reset;
			output  [31:0] 	WriteDataM,  DataAdrM; 
			output MemWriteM;
				
	wire [31:0] PCF, InstrF, ReadDataM;
	
// instantiate processor and memories

	riscv CORE( clk, reset, PCF, InstrF, MemWriteM, DataAdrM, WriteDataM, ReadDataM);
	imem INSTRUCTION_MEM(PCF, InstrF);
	dmem DATA_MEM(clk, MemWriteM, DataAdrM, WriteDataM, ReadDataM);
endmodule