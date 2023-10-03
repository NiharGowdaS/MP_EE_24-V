module mux3 (a0, a1, a2, sel,y);
 input [31:0] a0, a1, a2;
 input [1:0] sel;
 output [31:0] y;
 
	assign y = sel[1] ? a2 : (sel[0] ? a1 : a0);
	
	
//	00 y = a0;
//	01 y = a1;
//	1x y =  a2;
endmodule