module top (clk, reset,WriteDataM, DataAdrM,Exception, Underflow, Overflow);
				
				input clk, reset;
			output  [31:0] 	WriteDataM,  DataAdrM; 
			output  Exception,Underflow,Overflow ;
			wire  MemWriteM;
				
	wire [31:0] PCF, InstrF, ReadDataM;
	
	
// instantiate processor and memories

	riscv CORE( clk, reset, PCF, InstrF, MemWriteM, DataAdrM, WriteDataM, ReadDataM,Exception, Underflow, Overflow);
		
	dmem DATA_MEM(clk, MemWriteM, DataAdrM, WriteDataM, ReadDataM);
	
	imem INSTR_MEM(PCF, InstrF);
	
	
endmodule