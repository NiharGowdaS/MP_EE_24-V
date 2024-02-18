`timescale 1ns / 1ps

module Registers(clk,reset,write_data,rs1, rs2, rd, reg_write, reg_read_rs1, reg_read_rs2);

input clk;
input reset;
input [31:0] write_data;
input [4:0] rs1;
input [4:0] rs2;
input [4:0] rd;
input reg_write;
//input reset;
output [31:0] reg_read_rs1;
output [31:0] reg_read_rs2;

reg [31:0] register_memory [0:31];
integer i;
initial begin
if(reset)begin
for(i=0;i<32;i=i+1)begin
register_memory[i]=i;
end
end
end


//always @(posedge clk)
//	begin
assign  reg_read_rs1 = register_memory[rs1] ;
assign  reg_read_rs2 = register_memory[rs2] ;
 //end

    // If clock edge is positive and regwrite is 1, we write data to specified register
  
    always @(negedge clk)
  	begin
  		if (reg_write == 1)
		begin
			 register_memory [rd] = write_data;
      		end
  	end

endmodule
