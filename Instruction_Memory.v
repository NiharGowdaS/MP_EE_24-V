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


              //Setting 32-bit instruction: add t1, s0,s1 => 0x00940333 
           memory[3] = 8'h01;
           memory[2] = 8'h94;
           memory[1] = 8'h03;
           memory[0] = 8'h33;
           // Setting 32-bit instruction: addi t2, s2, s3 => 0x413903b3
           memory[7] = 8'h00;
           memory[6] = 8'h39;
           memory[5] = 8'h03;
           memory[4] = 8'h93;
                       // Setting 32-bit instruction: lw
           memory[11] = 8'h00;
           memory[10] = 8'h24;
           memory[9] = 8'ha6;
           memory[8] = 8'h03;
//            // Setting 32-bit instruction: sub t2, s2, s3 => 0x413903b3
//           memory[7] = 8'h41;
//           memory[6] = 8'h39;
//           memory[5] = 8'h03;
//           memory[4] = 8'hb3;
         // Setting 32-bit instruction: sw 
           memory[15] = 8'h00;
           memory[14] = 8'h36;
           memory[13] = 8'ha2;
           memory[12] = 8'h23;
            // Setting 32-bit instruction: beq 
           memory[19] = 8'h00;
           memory[18] = 8'h32;
           memory[17] = 8'h02;///****
           memory[16] = 8'h67;
// Setting 32-bit instruction: jal
           memory[23] = 8'h00;
           memory[22] = 8'h40;
           memory[21] = 8'h00;
           memory[20] = 8'hef;
//            // Setting 32-bit instruction: xor t3, s6, s7 => 0x017b4e33
//           memory[15] = 8'h01;
//           memory[14] = 8'h7b;
//           memory[13] = 8'h4e;
//           memory[12] = 8'h33;
   
             // Setting 32-bit instruction: sll t4, s8, s9
//           memory[19] = 8'h01;
//           memory[18] = 8'h9c;
//           memory[17] = 8'h1e;
//           memory[16] = 8'hb3;
           
//            // Setting 32-bit instruction: srl t5, s10, s11
//           memory[23] = 8'h01;
//           memory[22] = 8'hbd;
//           memory[21] = 8'h5f;
//           memory[20] = 8'h33;
            // Setting 32-bit instruction: and t6, a2, a3
           memory[27] = 8'h00;
           memory[26] = 8'hd6;
           memory[25] = 8'h7f;
           memory[24] = 8'hb3;
//            // Setting 32-bit instruction: or a7, a4, a5
//           memory[31] = 8'h00;
//           memory[30] = 8'hf7;
//           memory[29] = 8'h68;
//           memory[28] = 8'hb3;
             // Setting 32-bit instruction: lui x5 0x36
           memory[31] = 8'h00;
           memory[30] = 8'h00;
           memory[29] = 8'h32;
           memory[28] = 8'hb7;
             
           
        end
    end

endmodule
