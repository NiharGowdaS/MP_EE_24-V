/*
	Name: Pipeline register between Datapath Decode and Execution Stage
	
*/



module ID_IEx  (input   clk, reset, clear,
                input   [31:0] RD1D_i, RD2D_i, PCD, RD1D_f, RD2D_f,
                input   [4:0] Rs1D_i, Rs2D_i,Rs1D_f,Rs2D_f, RdD_i,RdD_f, 
                input   [31:0] ImmExtD, PCPlus4D,
                output  reg [31:0] RD1E_i,RD1E_f, RD2E_i,RD2E_f, PCE, 
                output  reg [4:0] Rs1E_i, Rs2E_i, RdE_i, 
                output  reg [4:0] Rs1E_f, Rs2E_f, RdE_f, 
                output  reg [31:0] ImmExtE, PCPlus4E);

    always @( posedge clk, posedge reset ) begin
        if (reset) begin
            RD1E_i <= 0;
            RD2E_i <= 0; 
            Rs1E_i <= 0;
            Rs2E_i <= 0;
            RdE_i <= 0;
            RD1E_f <= 0;
            RD2E_f <= 0; 
            Rs1E_f <= 0;
            Rs2E_f <= 0;
            RdE_f <= 0;
            PCE <= 0;
            ImmExtE <= 0;
            PCPlus4E <= 0;
        end

        else if (clear) begin
            RD1E_i <= 0;
            RD2E_i <= 0; 
            Rs1E_i <= 0;
            Rs2E_i <= 0;
            RdE_i <= 0;
            RD1E_f <= 0;
            RD2E_f <= 0; 
            Rs1E_f <= 0;
            Rs2E_f <= 0;
            RdE_f <= 0;
            PCE <= 0;
            ImmExtE <= 0;
            PCPlus4E <= 0;
        end
        else begin
            RD1E_i <= RD1D_i;
            RD2E_i <= RD2D_i;
            Rs1E_i <= Rs1D_i;
            Rs2E_i <= Rs2D_i;
            RdE_i <= RdD_i;
            RD1E_f <= RD1D_f;
            RD2E_f <= RD2D_f;
            Rs1E_f <= Rs1D_f;
            Rs2E_f <= Rs2D_f;
            RdE_f <= RdD_f;
            PCE <= PCD;
            ImmExtE <= ImmExtD;
            PCPlus4E <= PCPlus4D;
        end

    end

endmodule