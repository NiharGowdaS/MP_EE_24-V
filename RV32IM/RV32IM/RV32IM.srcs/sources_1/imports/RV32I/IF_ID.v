`timescale 1ns / 1ps

module IF_ID (clk, reset,
             InstrF, PCF, PCPlus4F,
            InstrD, PCD, PCPlus4D);
            
            input clk;
            input reset;

            input [31:0] InstrF, PCF, PCPlus4F;
            output reg [31:0] InstrD, PCD, PCPlus4D;


always @( posedge clk, posedge reset )

 begin
    if (reset) begin 
        InstrD <= 0;
        PCD <= 0;
        PCPlus4D <= 0;
    end
		 
		 else begin	 
			  InstrD <= InstrF;
			  PCD <= PCF;
			  PCPlus4D <= PCPlus4F;
		 end
	 end


endmodule