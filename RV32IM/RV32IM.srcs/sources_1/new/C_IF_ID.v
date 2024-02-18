`timescale 1ns / 1ps
//Control Unit Pipeline Register between Decode and Execution Stage//


module C_IF_ID (clk, reset,InstrD, InstrF);
 
        input clk, reset;
        input [31:0] InstrF;
        output reg [31:0] InstrD;
//        input [6:0]opcodeF;
//        input [2:0] funct3F;
//        input [6:0] funct7F;
//        output reg[6:0] opcodeD;
//        output reg[2:0] funct3D;
//        output reg[6:0] funct7D;
always @( posedge clk, posedge reset ) begin

		if (reset)
		begin 
//			opcodeD<=0;
//			funct3D<=0;
//			funct7D<=0;	
InstrD <= 0;
			end
		else begin
//			opcodeD<= opcodeF;
//			funct3D<= funct3F;
//			funct7D<= funct3F;	
InstrD <= InstrF;
     	end
		 
	 end
  
endmodule


    

