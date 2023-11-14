/*
	Name: ALU Decoder
	Description: Receives control signal from the Main Decoder Unit and 
	determines the type of operation that has to be performed by the ALU

*/


module aludec(op5,op7, funct3, funct7,funct7b4, ALUOp, ALUControl);

    input op5,op7;
	input [2:0] funct3;
	input  funct7, funct7b4;
	input  [1:0] ALUOp;
	output reg  [3:0] ALUControl;
	
wire RtypeSub;
assign RtypeSub = funct7 & op5;// TRUE for R-type subtract
assign Ftype = funct7b4 & op7; //TRUE for (FMIN,FMAX,FEQ,FLT,FLE)
always @(*)
	case(ALUOp)
		2'b00: ALUControl = 4'b0000; //addition
		2'b01: ALUControl = 4'b0001; //subtraction 
		2'b10: ALUControl = 4'b0010; //multiplication 
		2'b11: ALUControl = 4'b0100; //division
		default: case(funct3) // R–type or I–type ALU
			3'b000: begin
			if (RtypeSub)
				      ALUControl = 4'b0001; //add, addi
			else if(Ftype)
				begin
				    if(funct7)
				      ALUControl = 4'b1000; //FLE
				    else
				      ALUControl = 4'b1011; //FMIN
				 end
			else
				ALUControl = 4'b0000; // add, addi
				end
				
			3'b001: 
			begin
			    if(Ftype)
			      begin
			          if(funct7)
			            ALUControl = 4'b1101; //FLT.
			          else
			            ALUControl = 4'b1101; //FMAX
			      end 
			    else
			    ALUControl = 4'b0100; // sll, slli
			end    
			
			
			
			3'b010: 
			begin 
			    if(Ftype)			  
                   ALUControl = 4'b1110; //FEQ	
			     else
			       ALUControl = 4'b0101; // slt, slti
			end
			
			
			
			3'b011: ALUControl = 4'b1000; // sltu, sltiu
			3'b100: ALUControl = 4'b0110; // xor, xori
			3'b101: if (~funct7)
				ALUControl = 4'b0111;	// srl
			else
				ALUControl = 4'b1111;  // sra
			3'b110: ALUControl = 4'b0011; // or, ori
			3'b111: ALUControl = 4'b0010; // and, andi
			
			   

				default: ALUControl = 4'bxxxx; // ???
			endcase
	endcase
	
endmodule