module testbench();
	reg clk, reset;
	wire Exception, Underflow, Overflow;
	wire [31:0] WriteData, DataAdr;

	top dut(clk, reset, WriteData, DataAdr, Exception, Underflow, Overflow);
	
	initial
		begin
		clk = 0;
			reset <= 1; 
			# 10; 
			reset <= 0;
			
			
//			$display("Simulation starts!");
//			$monitor("Value of ALU = %d", DataAdr);
		end
	


	always
		#5 clk = ~clk;
		 
	

endmodule