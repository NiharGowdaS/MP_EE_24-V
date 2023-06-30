`timescale 1ns / 1ps
module tb ();
    
    reg clk;
    reg reset;

    // Instantiate the processor
    Top testbench_top(clk,reset);

    initial begin
        $dumpfile("output_wave1.vcd");
        $dumpvars(0,tb);
    end
    
      initial begin
        
      
        reset = 1;
        #50 reset = 0;
    end
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial
    #300 $finish;
    
endmodule