/*
	Name: Control Unit Pipeline Register between Decode and Execution Stage*/


module c_ID_IEx (clk, reset, clear, RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcAD, ALUSrcBD, ResultSrcD, ALUControlD, 
										RegWriteE, MemWriteE, JumpE, BranchE, ALUSrcAE, ALUSrcBE, ResultSrcE, ALUControlE,ExtensionD,ExtensionE);

input   clk, reset, clear;
input   RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcAD;
input   [1:0] ALUSrcBD;
input   [1:0] ResultSrcD;
input   [3:0] ALUControlD;
input [1:0] ExtensionD;
output  reg RegWriteE, MemWriteE, JumpE, BranchE,  ALUSrcAE;
output reg  [1:0] ALUSrcBE;
output  reg [1:0] ResultSrcE;
output   reg[3:0] ALUControlE;
output reg [1:0] ExtensionE;

always @( posedge clk, posedge reset ) begin

		if (reset) begin
			RegWriteE <= 0;
			MemWriteE <= 0;
			JumpE <= 0;
			BranchE <= 0; 
			ALUSrcAE <= 0;
			ALUSrcBE <= 0;
			ResultSrcE <= 0;
			ALUControlE <= 0;
			ExtensionE <= 0;          
		end

		else if (clear) begin
			RegWriteE <= 0;
			MemWriteE <= 0;
			JumpE <= 0;
			BranchE <= 0; 
			ALUSrcAE <= 0;
			ALUSrcBE <= 0;
			ResultSrcE <= 0;
			ALUControlE <= 0; 
			ExtensionE <= 0;        			
		end
		
		else begin
			RegWriteE <= RegWriteD;
			MemWriteE <= MemWriteD;
			JumpE <= JumpD;
			BranchE <= BranchD; 
			ALUSrcAE <= ALUSrcAD;
			ALUSrcBE <= ALUSrcBD;
			ResultSrcE <= ResultSrcD;
			ALUControlE <= ALUControlD;
		    ExtensionE <= ExtensionD;        
		end
		 
	 end
  
endmodule


    