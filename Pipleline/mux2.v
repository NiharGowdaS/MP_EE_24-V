module mux2 (d0, d1, s, y);

input  [31:0] d0, d1;
input  s;
output [31:0] y;

	assign y = s ? d1 : d0;
endmodule