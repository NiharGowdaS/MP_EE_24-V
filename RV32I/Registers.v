`timescale 1ns / 1ps

module Registers(clk,write_data,rs1, rs2, rd, reg_write, reg_read_rs1, reg_read_rs2);

input clk;
input [31:0] write_data;
input [4:0] rs1;
input [4:0] rs2;
input [4:0] rd;
input reg_write;
//input reset;
output reg[31:0] reg_read_rs1;
output reg[31:0] reg_read_rs2;

reg [31:0] register_memory [31:0];


//wire [7:0] opcode;

//assign rs2 = Instruction[24:20];
//assign rs1 = Instruction[19:15];
//assign rd = Instruction[11:7];
//assign opcode = Instruction[6:0];




always @(rs1, rs2)
    begin
     
         register_memory[0] = 32'h0;
         register_memory[1] = 32'h1;
         register_memory[2] = 32'h2;
         register_memory[3] = 32'h3;
         register_memory[4] = 32'h4;
         register_memory[5] = 32'h5;
         register_memory[6] = 32'h6;
         register_memory[7] = 32'h7;
         register_memory[8] = 32'h8;
         register_memory[9] = 32'h9;
         register_memory[10] = 32'h10;
         register_memory[11] = 32'h11;
         register_memory[12] = 32'h12;
         register_memory[13] = 32'h13;
         register_memory[14] = 32'h14;
         register_memory[15] = 32'h15;
         register_memory[16] = 32'h16;
         register_memory[17] = 32'h17;
         register_memory[18] = 32'h18;
         register_memory[19] = 32'h19;
         register_memory[20] = 32'h20;
         register_memory[21] = 32'h21;
         register_memory[22] = 32'h22;
         register_memory[23] = 32'h23;
         register_memory[24] = 32'h24;
         register_memory[25] = 32'h25;
		 register_memory[26] = 32'h26;
         register_memory[27] = 32'h27;
         register_memory[28] = 32'h28;
         register_memory[29] = 32'h29;
         register_memory[30] = 32'h30;
         register_memory[31] = 32'h31;
         end
  
always @(rs1, rs2)
	begin
  reg_read_rs1 <= register_memory[rs1] ;
  reg_read_rs2 <= register_memory[rs2] ;
 end

    // If clock edge is positive and regwrite is 1, we write data to specified register
  
    always @(negedge clk)
  	begin
  		if (reg_write == 1)
		begin
			 register_memory [rd] = write_data;
      		end
  	end

endmodule
