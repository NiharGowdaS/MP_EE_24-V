module flopr (	input logic clk, reset, 
			input logic [31:0] d, 
			output logic [31:0] q);

	always @(posedge clk, posedge reset)

		if (reset) q <= 0;
		
		else q <= d;
	
endmodule