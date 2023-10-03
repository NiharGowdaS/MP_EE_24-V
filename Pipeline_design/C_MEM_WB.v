//Control Unit Pipeline Register for Memory Access - WriteBack Stage
	
module C_MEM_WB (input  clk, reset, 
                input RegWriteM, 
                input [1:0] ResultSrcM, 
                output reg RegWriteW, 
                output reg [1:0] ResultSrcW);
/* Compared to previous stage we are passing all signals except MemWrite
As we use the signal here itself to enable the data memory*/
    always @( posedge clk, posedge reset ) begin
        if (reset) begin
            RegWriteW <= 0;
            ResultSrcW <= 0;           
        end

        else begin
            RegWriteW <= RegWriteM;
            ResultSrcW <= ResultSrcM; 
        end

    end

endmodule