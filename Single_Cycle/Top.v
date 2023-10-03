 /*Single cycle  RISC-V processor with all types of instruction formats
R-type, I -type, S - type,B-type, U-type, J-type*/
`timescale 1ns / 1ps

module Top(
    input clk,
    input reset 
);


wire [31:0]instruction;
wire [31:0] PC;
       Instruction_Memory  INSTR_MEM(reset,PC, instruction);
 wire mem_write;

wire [31:0] alu_result;
core RISCV(clk, reset, instruction, PC, alu_result, mem_write,memread_data,memwrite_data  );

wire [31:0]memwrite_data;
wire [31:0]memread_data;    
       Data_Memory  DATA_MEMORY(reset,clk,alu_result, memwrite_data, memread_data,mem_write);


endmodule
 
