`timescale 1ns / 1ps
//External memory of the processor to store values
module Data_Memory
(reset,clk,
mem_address, mem_write_data, mem_read_data,mem_write);
    input reset;
    input clk;
    input [31:0]mem_address;
    input [31:0] mem_write_data;
    output reg [31:0] mem_read_data=0;
    input  mem_write;
   // input mem_read ;
   
    
    reg [31:0] mem_data [31:0];
    
    always @(posedge reset)
    begin
     
         mem_data[0] = 32'h0;
         mem_data[1] = 32'h1;
         mem_data[2] = 32'h2;
         mem_data[3] = 32'h3;
         mem_data[4] = 32'h4;
         mem_data[5] = 32'h5;
         mem_data[6] = 32'h6;
         mem_data[7] = 32'h7;
         mem_data[8] = 32'h8;
         mem_data[9] = 32'h9;
         mem_data[10] = 32'h10;
         mem_data[11] = 32'h11;
         mem_data[12] = 32'h12;
         mem_data[13] = 32'h13;
         mem_data[14] = 32'h14;
         mem_data[15] = 32'h15;
         mem_data[16] = 32'h16;
         mem_data[17] = 32'h17;
         mem_data[18] = 32'h18;
         mem_data[19] = 32'h19;
         mem_data[20] = 32'h20;
         mem_data[21] = 32'h21;
         mem_data[22] = 32'h22;
         mem_data[23] = 32'h23;
         mem_data[24] = 32'h24;
         mem_data[25] = 32'h25;
		 mem_data[26] = 32'h26;
         mem_data[27] = 32'h27;
         mem_data[28] = 32'h28;
         mem_data[29] = 32'h29;
         mem_data[30] = 32'h30;
         mem_data[31] = 32'h31;
         end
    
    always @(negedge clk)
    begin
    if(mem_write==1'b1)
     mem_data[mem_address] <= mem_write_data ;
    end
     
  always@(mem_address or !mem_write)
    begin      
        mem_read_data=mem_data[mem_address];
      end
endmodule
