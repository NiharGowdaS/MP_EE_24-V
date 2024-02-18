`timescale 1ns / 1ps

module mux2(a1,a0,sel,y);
    
    input [31:0] a1,a0;
    input sel;
    output [31:0] y;
    
    assign y = sel? a1:a0;
    
endmodule
