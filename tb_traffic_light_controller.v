`timescale 1ns / 1ps

module tb_traffic_light_controller;

    reg clk;
    reg reset;
    wire [2:0] lights;

    traffic_light_controller dut (
        .clk(clk),
        .reset(reset),
        .lights(lights)
    );

    always #5 clk = ~clk;

    initial begin
       
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_traffic_light_controller);

        
        clk = 0;
        reset = 1;

        #20 reset = 0; 
        #100;          
        $display("Simulation Completed.");
        $finish;
    end

endmodule
