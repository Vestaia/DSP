`timescale 1ns / 1ps

module sig_exp_decay # (parameter DAC_WIDTH = 14, parameter RISE_TIME = 4, parameter DECAY_TIME = 8)
(
    input clk,
    input rst,
    input trigger,
    output [31:0] m_axis_tdata,
    output m_axis_tvalid
);
    reg [63:0] internal_data;
    reg [16:0] rise_time_counter;
    assign m_axis_tdata = internal_data[63:32];
    assign m_axis_tvalid = 1'b1;
    always @ (posedge clk) begin
        if (~rst) begin
             internal_data <= 0;
        end else begin
            if (trigger)
                rise_time_counter <= 1'b1 << RISE_TIME;
            
            if (rise_time_counter > 0) begin
                internal_data <= internal_data + (64'b1 << (DAC_WIDTH + 30 - RISE_TIME));
                rise_time_counter <= rise_time_counter - 1;
            end
            else
                internal_data <= internal_data - (internal_data >> DECAY_TIME);
        end
    end
endmodule
