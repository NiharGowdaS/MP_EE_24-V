/*
	Name: Control Unit Pipeline Register for Memory Access - WriteBack Stage
	
*/


module c_IM_IW (clk, reset, RegWriteM, ResultSrcM, RegWriteW, ResultSrcW);
input  clk, reset;
                input RegWriteM; 
                input  [1:0] ResultSrcM;
                output reg RegWriteW; 
                output reg [1:0] ResultSrcW;

    always @( posedge clk, posedge reset ) begin
        if (reset) begin
            RegWriteW <= 0;
            ResultSrcW <= 0;           
        end

        else begin
            RegWriteW <= RegWriteM;
            ResultSrcW <= ResultSrcM; // lol this wasted 1 hour
        end

    end

endmodule