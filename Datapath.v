`timescale 1ns / 1ps

module Datapath(clk, reset,instruction, alu_control, reg_write, branch, AluSrc, alu_result0, PC, mem_reg, mem_read_data, reg_read_rs2,isJump);
    
    input clk;
    input reset;
    input [3:0]alu_control;
    input branch ;
    input [31:0] instruction ;
    input reg_write;
    output[31:0]PC;
    input AluSrc;
    output reg [31:0] alu_result0;
    input mem_reg;
    input [31:0] mem_read_data;
    output [31:0] reg_read_rs2;
    input isJump;
    
    

wire zero_flag;
//wire [11:0] branch_offset;
wire [31:0] Prg_Cntr;
wire [31:0] alu_result;
wire PCSrc;    
     Program_Counter PrgCtr(clk, reset,Prg_Cntr, PCSrc, immext,isJump);
//assign branch_offset = {instruction[12],instruction[7],instruction[30:25],instruction[11:8]};
assign PCSrc = zero_flag&branch;
assign PC = Prg_Cntr;
always @(*)
alu_result0 = alu_result;
reg [31:0]  write_data_2_reg;  
//wire [31:0]  write_data_2_reg_0; 
     Registers REG(clk,write_data_2_reg,instruction[19:15], instruction[24:20], instruction[11:7], reg_write,reset, reg_read_rs1, reg_read_rs2);
wire [31:0] reg_read_rs1; 
    
 wire [31:0] read_data2;   
     ALU alu(reg_read_rs1, read_data2, alu_control, alu_result, zero_flag);
 wire [31:0] immext;    
     Extend  EXT(instruction, immext);
 assign read_data2 = (AluSrc==1'b1)?immext : reg_read_rs2;
 
// assign write_data_2_reg =  (mem_reg == 1'b1) ? mem_read_data:alu_result;
 
// assign write_data_2_reg_0 = (instruction[2] == 1'b1)?immext: write_data_2_reg;

always @(*)
begin
if(mem_reg==1'b1)
write_data_2_reg = mem_read_data; //for S-type instruction
else if(instruction[3:2] == 2'b11) //for jal (J-type instruction)
write_data_2_reg = Prg_Cntr + 4;
else if(instruction[3:2] == 2'b01)
write_data_2_reg = immext; //for load upper immediate
else
write_data_2_reg = alu_result;//for R-type and I type instructions
end
 
     
     
endmodule
