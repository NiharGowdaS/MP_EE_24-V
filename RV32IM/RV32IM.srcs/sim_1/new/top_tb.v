
module top_tb();
	reg clk, reset;
	wire out;

	Top dut(clk, reset, out);
	
	initial
		begin
		clk = 1;
			reset <= 1; 
			# 4; 
			reset <= 0;
			
			
//			$display("Simulation starts!");
//			$monitor("Value of ALU = %d", DataAdr);
		end
	


	always
		#5 clk = ~clk;
		 
	

endmodule