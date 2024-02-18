`timescale 1ns / 1ps
//Instruction Memory holds the instructions and are fetched by processor based on Program Counter
//Each Instruction is stored as 4 8bit values = 32 bit

module Instruction_Memory(reset,PC, Instruction);

input reset;
input [31:0] PC;
output [31:0] Instruction ;

reg [7:0] memory [31:0] ;

  assign Instruction = {memory[PC+3],memory[PC+2],memory[PC+1],memory[PC]};

    // Initialise memory when reset is one
    always @(reset)
    begin
        if(reset == 1)
        begin


           //Setting 32-bit instruction: load 0280b503 x10 = Mem[x1+8]
           memory[3] = 8'h00;
           memory[2] = 8'h80;
           memory[1] = 8'hb5;
           memory[0] = 8'h03;
           // Setting 32-bit instruction: sub 40310233 x4 = x3 - x1
           memory[7] = 8'h40;
           memory[6] = 8'h31;
           memory[5] = 8'h02;
           memory[4] = 8'h33;
                       // Setting 32-bit instruction: add 00418633 x12 = x4 + x3
           memory[11] = 8'h00;
           memory[10] = 8'h41;
           memory[9] = 8'h86;
           memory[8] = 8'h33;
////          
         // Setting 32-bit instruction: sw Mem[x3+13] = x5
           memory[15] = 8'h00;
           memory[14] = 8'h36;
           memory[13] = 8'ha2;
           memory[12] = 8'ha3;
//           
            // Setting 32-bit instruction: xor x28, x22,x23 => 0x017b4e33
           memory[19] = 8'h01;
           memory[18] = 8'h7b;
           memory[17] = 8'h4e;
           memory[16] = 8'h33;
   
     //         Setting 32-bit instruction: sll x29, x24,x25
           memory[23] = 8'h01;
           memory[22] = 8'h9c;
           memory[21] = 8'h1e;
           memory[20] = 8'hb3;
           
////        
            // Setting 32-bit instruction: and x31,x12, x13
           memory[27] = 8'h00;
           memory[26] = 8'hd6;
           memory[25] = 8'h7f;
           memory[24] = 8'hb3;
////           x16 = x15 or x1
           memory[31] = 8'h00;
           memory[30] = 8'hf0;
           memory[29] = 8'hea;
           memory[28] = 8'h33;
        end
    end

endmodule
