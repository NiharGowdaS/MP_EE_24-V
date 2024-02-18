`timescale 1ns / 1ps
  //{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc,alu_control} = 13'b0010_xxx_0_00_0_ // R-type instructions                        
 
module Instr_Decode(opcode,funct3,funct7,alu_control, MemWrite, Branch, RegWrite, Jump, ImmSrc, AluSrcA, AluSrcB, ResultSrc);
    
	input  [6:0] opcode;
	input [2:0] funct3;
	input [6:0] funct7;
	output reg [4:0] alu_control;
	
	output  reg MemWrite;
	output  reg Branch;
	output  reg RegWrite;
	output  reg Jump;
	output reg [2:0] ImmSrc;
	output reg AluSrcA; 
	output  reg [1:0] AluSrcB;	
	output  reg [1:0] ResultSrc;
	
	
//{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc}
always @(*)
begin
        case(opcode)
7'b0110011: 
      begin
      {MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b0010_xxx_0_00_00;

      if(funct7[0] == 0)
      begin      
            case (funct3)
                0: begin
                    if(funct7 == 0)
                    alu_control = 5'b00010; // ADD
                    else if(funct7 == 32)
                    alu_control = 5'b00011; // SUB
                end
                6: alu_control = 5'b00001; // OR
                7: alu_control = 5'b00000; // AND
                1: alu_control = 5'b00110; // SLL
                5: alu_control = 5'b01000; // SRL
				2: alu_control = 5'b00110; // MUL
				4: alu_control = 5'b00100; // XOR
				default:alu_control = 5'bxxxxx;
            endcase
       end
       
       
    else 
            begin
            case (funct3)
                 0: alu_control = 5'b01001; //MULH
                 1: alu_control = 5'b01010; //MULH
                 2: alu_control = 5'b01011; //MULHU
                 3: alu_control = 5'b01100; //MULHSU
                 4: alu_control = 5'b01101; //DIV
                 5: alu_control = 5'b01110; //DIVU
                 6: alu_control = 5'b01111; //REM
                 7: alu_control = 5'b10000; //REMU
                 default: alu_control = 5'bxxxxx;
            endcase
            end
                 
          end
                 
            
            
            
7'b0010011:  // Arithmetic Immediate Instructions
      begin
       {MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b0010_000_0_00_00;

                 case (funct3)
                 0: alu_control = 5'b00010; //ADDI
                 1: alu_control = 5'b00110; //SLLI
                 4: alu_control = 5'b00100; //XORI
                 5: begin
                    if(funct7 == 7'b0000000)
                    alu_control = 5'b01000; // Shift Right Immediate
                    else if(funct7 == 16)
                    alu_control = 5'b10001; //Shift Right Arithmetic Immediate
                    end 
                 6: alu_control = 5'b00001; //ORI
                 7: alu_control = 5'b00000; //ANDI
                 endcase
       end
                 
                 
7'b0000011:  // Load word Instructions
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b0010_000_0_01_01;
alu_control = 5'b00010;
end
                 
7'b0100011: // Store word Instructions
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b1000_001_0_01_01;
alu_control = 5'b00010;
end
                 
7'b1101111:  // Jump and link Instructions
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b1011_011_0_01_10;
alu_control = 5'b00010;
end
            
7'b1100111: // Branch Instructions
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b0100_010_0_00_00;
alu_control = 5'b00100; // SUB
end
            
7'b0110111: // Lower upper immediate
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'b0010_100_1_01_00;
alu_control = 5'bxxxxx;
end 
 
default:
begin
{MemWrite,Branch,RegWrite,Jump,ImmSrc,AluSrcA,AluSrcB,ResultSrc} = 12'bxxxx_xxx_x_xx_xx;
alu_control = 5'bxxxxx;
end
         
endcase
end
            
endmodule

