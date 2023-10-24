module mux3 (d0, d1, d2, s,y);

input  [31:0] d0, d1, d2;
input  [1:0] s;
output [31:0] y;

assign y = s[1] ? d2 : (s[0] ? d1 : d0);
endmodule