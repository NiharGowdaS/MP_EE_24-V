//Control Unit Pipeline Register between Decode and Execution Stage//


module C_ID_EX (clk, reset, RegWriteD, MemWriteD, JumpD, 
BranchD, ALUSrcA_D, ALUSrcB_D, ResultSrcD,RegWriteE,
 MemWriteE, JumpE, BranchE,  ALUSrcA_E, ALUSrcB_E,
  ResultSrcE,alu_control_D, alu_control_E,PCJALSrcD, PCJALSrcE);
  //,ImmSrcD,ImmSrcE);
 
        input clk, reset;
        input  RegWriteD, MemWriteD, JumpD, BranchD, ALUSrcA_D;
		input  [1:0] ALUSrcB_D;
        input  [1:0] ResultSrcD;
        input  [4:0] alu_control_D;
        input PCJALSrcD; 
        //input [2:0] ImmSrcD;
        output  reg RegWriteE, MemWriteE, JumpE, BranchE,  ALUSrcA_E;
		output reg[1:0] ALUSrcB_E;
        output  reg[1:0] ResultSrcE;
        output  reg[4:0] alu_control_E;
        output reg PCJALSrcE ;
        //output reg [2:0] ImmSrcE;

always @( posedge clk, posedge reset ) begin

		if (reset) begin
			RegWriteE <= 0;
			MemWriteE <= 0;
			JumpE <= 0;
			BranchE <= 0; 
			ALUSrcA_E <= 0;
			ALUSrcB_E <= 0;
			ResultSrcE <= 0;
			alu_control_E <= 0;
			PCJALSrcE <= 0;   
		//	ImmSrcE<=0;       
		end

		
		else begin
			RegWriteE <= RegWriteD;
			MemWriteE <= MemWriteD;
			JumpE <= JumpD;
			BranchE <= BranchD; 
			ALUSrcA_E <= ALUSrcA_D;
			ALUSrcB_E <= ALUSrcB_D;
			ResultSrcE <= ResultSrcD;
			alu_control_E <= alu_control_D;
			PCJALSrcE <= PCJALSrcD; 
			
			//ImmSrcE<= ImmSrcD;  
		end
		 
	 end
  
endmodule


    
