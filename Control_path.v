module Control_path(funct7,funct3,opcode,alu_control,regwrite_control,
AluSrc,mem_write,mem_reg,branch,isJump);
 input [6:0] funct7;
 input [2:0] funct3;
 input [6:0] opcode;
 output reg [3:0] alu_control;
 output reg regwrite_control;
 output reg AluSrc;
 output reg mem_write;
 // output reg mem_read;
 output reg mem_reg;
 output reg isJump;
 output reg branch;
    
    always @(funct3 , funct7 , opcode)
    begin
        case(opcode)
         7'b0110011: begin // R-type instructions                        
            //mem_read = 0;
            mem_reg = 0;
            mem_write = 0;
            AluSrc = 0;
            regwrite_control = 1;
            isJump = 0;
            branch = 0;
            
        
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
            AluSrc = 1;
           //  mem_read = 0;
            mem_reg = 0;
            mem_write = 0;
            regwrite_control = 1;
            isJump = 0;
             branch = 0;
            
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
           // mem_read = 1;
            mem_reg = 1;
            mem_write = 0;
            AluSrc = 1;
            regwrite_control = 1;
            isJump = 0;
             branch = 0;
            alu_control = 4'b0010;
            end
                 
                 7'b0100011: // Store word Instructions
           begin
            mem_write = 1;
         //   mem_read = 0;
            AluSrc = 1;
            mem_reg = 0;
            regwrite_control = 0;
            isJump = 0;
             branch = 0;
            alu_control = 4'b0010;
                
                 end
                 
                7'b1101111:  // Jump and link Instructions
           begin
            mem_write = 0;
//            mem_read = 0;
            AluSrc = 0;
            regwrite_control = 0;
            isJump = 1;
             branch = 0;
             mem_reg = 0;
            end
            
                7'b1100111: // Branch Instructions
           begin
            mem_write = 0;
        //    mem_read = 0;
        mem_reg = 0;
            AluSrc = 0;
            regwrite_control = 0;
            isJump = 0;
             branch = 1;
             alu_control = 4'b0100; // SUB
            end
            
               7'b0110111: // Lower upper immediate
           begin
            mem_write = 0;
        //    mem_read = 0;
            AluSrc = 0;
            regwrite_control = 1;
            isJump = 0;
             branch = 0;
             mem_reg = 0;
            end 
           
            
            
            endcase
            end
            
            
              
            
                                                                                                                                                                          
endmodule
