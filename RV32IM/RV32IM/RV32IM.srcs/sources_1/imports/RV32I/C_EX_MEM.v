/*
	Name: Control Unit Pipeline Register between Instruction Execution and Memory Access Stage
*/


module C_EX_MEM (clk, reset, RegWriteE, MemWriteE, ResultSrcE, RegWriteM, MemWriteM, ResultSrcM);
                input  clk;
                input reset;
                input  RegWriteE;
                input MemWriteE;
                input  [1:0] ResultSrcE; 
                output  reg RegWriteM, MemWriteM;
                output  reg [1:0] ResultSrcM;


/*we're passing RegWrite(used while writing back to the register),
 MemWrite(it should reach memory stage),
 ResultSrc signal (to decide what value we are writing back to the register) */
    always @( posedge clk, posedge reset ) begin
        if (reset) begin
            RegWriteM <= 0;
            MemWriteM <= 0;
            ResultSrcM <= 0;
        end
        else begin
            RegWriteM <= RegWriteE;
            MemWriteM <= MemWriteE;
            ResultSrcM <= ResultSrcE; 
        end
        
    end

endmodule