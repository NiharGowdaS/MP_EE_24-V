//RV32I based processor with all instruction format is implemented with datapath and control path modules
`timescale 1ns / 1ps

module core(clk, reset, instruction, PC, alu_result, mem_write,mem_read_data,mem_write_data  );
    input clk;
    input reset;
    input [31:0] instruction;
    output [31:0]PC;
    output [31:0]alu_result;
    output mem_write;
    input [31:0] mem_read_data;
    output [31:0] mem_write_data;
    
 wire [3:0]alu_control;
 wire AluSrc;
 wire mem_write;
 wire mem_read;
 wire mem_reg ;   
 wire branch; 
 wire isJump;
 wire reg_write;
     
   
Control_path CONTROL_MODULE(instruction[31:25], instruction[14:12],instruction[6:0], alu_control, reg_write, AluSrc,mem_write,mem_reg,branch,isJump);


Datapath DATAPATH_MODULE(clk, reset,instruction, alu_control, reg_write, branch, AluSrc, alu_result, PC, mem_reg, mem_read_data,mem_write_data,isJump);
    
endmodule
