`timescale 1ns / 1ps
//Generates 1 clock cycle pulse on positive edge of trigger
module pulse_gen #
(
    parameter integer OUTPUT_WIDTH = 1
)
(
    input clk,
    input trigger,
    output pulse
);
    reg last;
    reg [OUTPUT_WIDTH - 1 : 0] pulse;
    
    always @ (posedge clk) begin
        last <= trigger;
        if (trigger & ~last)
            pulse <= 1;
        else
            pulse <= 0;
    end

endmodule
