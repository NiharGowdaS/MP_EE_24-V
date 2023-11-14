/*
	Name: Hazard Unit
	Description: Handles both Data Hazards and Control Hazards	
*/



module hazardunit(Rs1D_i, Rs2D_i, Rs1E_i, Rs2E_i,Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f, RdE_i,RdE_f, RdM, RdW, RegWriteM, RegWriteW, ResultSrcE0, PCSrcE, ForwardAE, ForwardBE, StallD, StallF, FlushD, FlushE);
input [4:0] RdM, RdW;
input  [4:0] Rs1D_i, Rs2D_i, Rs1E_i, Rs2E_i,RdE_i,RdE_f;
input  [4:0] Rs1D_f, Rs2D_f, Rs1E_f, Rs2E_f;
input RegWriteM, RegWriteW,ResultSrcE0, PCSrcE;
                output reg [1:0] ForwardAE, ForwardBE;
                output StallD, StallF, FlushD, FlushE;
					 
// RAW					 
// Whenever source register (Rs1E, Rs2E) in execution stage matchces with the destination register (RdM, RdW)
// of a previous instruction's Memory or WriteBack stage forward the ALUResultM or ResultW
// And also only when RegWrite is asserted

wire lwStall;
    always @(*)
    begin
	    ForwardAE = 2'b00;
		 ForwardBE = 2'b00;
        if ((Rs1E_i|Rs2E_i == RdM) & (RegWriteM) & (Rs1E_i|Rs2E_i != 0)) // higher priority - most recent
            ForwardAE = 2'b10; // for forwarding ALU Result in Memory Stage
        else if ((Rs1E_i|Rs2E_i == RdW) & (RegWriteW) & (Rs1E_i|Rs2E_i != 0))
            ForwardAE = 2'b01; // for forwarding WriteBack Stage Result
                    


        if ((Rs1E_f|Rs2E_f == RdM) & (RegWriteM) & (Rs1E_f|Rs2E_f != 0))
            ForwardBE = 2'b10; // for forwarding ALU Result in Memory Stage

        else if ((Rs1E_f|Rs2E_f == RdW) & (RegWriteW) & (Rs1E_f|Rs2E_f != 0))
            ForwardBE = 2'b01; // for forwarding WriteBack Stage Result
     
	  end
	  
// For Load Word Dependency result does not appear until end of Data Memory Access Stage
// if Destination register in EXE stage is equal to souce register in decode stage
// stall previous instructions until the the load word is avialbe at the writeback stage
// Introduce One cycle latency for subsequent instructions after load word 
// There is two cycle difference between Memory Access and the immediate next instruction

   assign lwStall = ((ResultSrcE0 == 1) & ((RdE_i == Rs1D_i) | (RdE_i == Rs2D_i))|(ResultSrcE0 == 1) & ((RdE_f == Rs1D_f) | (RdE_f == Rs2D_f)));
//   assign FlushE = lwStall;
	assign StallF = lwStall;
	assign StallD = lwStall;
	
// control hazard
// whenever branch has been taken, we flush the following two instructions from decode and execute pip reg
	assign FlushE = lwStall | PCSrcE;
	assign FlushD = PCSrcE;

endmodule



    

