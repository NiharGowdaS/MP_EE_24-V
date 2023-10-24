module flopenr (clk, reset, en,d,q);
			
			input  clk, reset, en;
			input  [31:0] d;
			output reg [31:0] q;
					
	always @(posedge clk, posedge reset)
		begin
		if (reset) q <= 0;
		else if (en) q <= d;
	end
endmodule