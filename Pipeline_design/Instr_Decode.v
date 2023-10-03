`timescale 1ns / 1ps

module Instr_Decode(opcode,funct3,funct7,alu_control, MemWrite, Branch, RegWrite, Jump, ImmSrc, AluSrcA, AluSrcB, ResultSrc);
    
	input  [6:0] opcode;
	input [2:0] funct3;
	input [6:0] funct7;
	output reg [3:0] alu_control;
	
	output  reg MemWrite;
	output  reg Branch;
	output  reg RegWrite;
	output  reg Jump;
	output reg [2:0] ImmSrc;
	output reg AluSrcA; 
	output  reg [1:0] AluSrcB;	
	output  reg [1:0] ResultSrc;
	
	
 always @(*)
    begin
        case(opcode)
         7'b0110011: begin // R-type instructions                        
      MemWrite = 0;
	  Branch = 0;
	  RegWrite = 1;
	  Jump = 0;
	  ImmSrc = 3'bxxx;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b00 ;	
	  ResultSrc = 0 ;
            
            case (funct3)
                0: begin
                    if(funct7 == 0)
                    alu_control = 4'b0010; // ADD
                    else if(funct7 == 32)
                    alu_control = 4'b0100; // SUB
                end
                6: alu_control = 4'b0001; // OR
                7: alu_control = 4'b0000; // AND
                1: alu_control = 4'b0011; // SLL
                5: alu_control = 4'b0101; // SRL
				2: alu_control = 4'b0110; // MUL
				4: alu_control = 4'b0111; // XOR
            endcase
            end
            
   7'b0010011:  // Arithmetic Immediate Instructions
           begin
            MemWrite = 0;
	  Branch = 0;
	  RegWrite = 1;
	  Jump = 0;
	  ImmSrc = 3'b0;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b0 ;	
	  ResultSrc = 0 ;
            
                 case (funct3)
                 0: alu_control = 4'b0010; //ADDI
                 1: alu_control = 4'b0011; //SLLI
                 4: alu_control = 4'b0111; //XORI
                 5: begin
                    if(funct7 == 7'b0000000)
                    alu_control = 4'b0010; // Shift Right Immediate
                    else if(funct7 == 16)
                    alu_control = 4'b1001; //Shift Right Arithmetic Immediate
                    end 
                 6: alu_control = 4'b0001; //ORI
                 7: alu_control = 4'b0000; //ANDI
                 endcase
                 end
                 
                 
                 7'b0000011:  // Load word Instructions
           begin
               MemWrite = 0;
	  Branch = 0;
	  RegWrite = 1;
	  Jump = 0;
	  ImmSrc = 3'b0;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b01 ;	
	  ResultSrc = 2'b01;
            alu_control = 4'b0010;
            end
                 
                 7'b0100011: // Store word Instructions
           begin
      MemWrite = 1;
	  Branch = 0;
	  RegWrite = 0;
	  Jump = 0;
	  ImmSrc = 3'b001;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b01 ;	
	  ResultSrc = 2'b01;
      alu_control = 4'b0010;
           end
                 
                7'b1101111:  // Jump and link Instructions
           begin
      MemWrite = 1;
	  Branch = 0;
	  RegWrite = 1;
	  Jump = 1;
	  ImmSrc = 3'b011;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b01 ;	
	  ResultSrc = 2'b10;
            end
            
                7'b1100111: // Branch Instructions
           begin
           MemWrite = 0;
	  Branch = 1;
	  RegWrite = 0;
	  Jump = 0;
	  ImmSrc = 3'b010;
	  AluSrcA = 0 ; 
	  AluSrcB = 2'b00 ;	
	  ResultSrc = 2'b00;
      alu_control = 4'b0100; // SUB
            end
            
               7'b0110111: // Lower upper immediate
           begin
        MemWrite = 0;
	  Branch = 0;
	  RegWrite = 1;
	  Jump = 0;
	  ImmSrc = 3'b100;
	  AluSrcA = 1 ; 
	  AluSrcB = 2'b01 ;	
	  ResultSrc = 2'b00;
            end 
                       
     endcase
end
            
endmodule

