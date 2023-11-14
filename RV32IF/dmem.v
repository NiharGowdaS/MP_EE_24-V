// Name: Data Memory



module dmem(clk, we,a, wd,rd);
		
	input clk, we; 
		input [31:0] a, wd; 
		output [31:0] rd;
		
	reg [31:0] RAM[63:0]; // 64 x 32 bit memory
	assign rd = RAM[a[31:2]];     // read operation
	
	// 6 bit address enough to address the 64 locations in data memory
	
	always @(posedge clk)
		if (we) RAM[a[31:2]] <= wd;
endmodule