`timescale 1ns / 1ps

module sig_exp_decay # (parameter DAC_WIDTH = 14)
(
    input clk,
    input rst,
    input trigger,
    output [31:0] m_axis_tdata,
    output m_axis_tvalid
);
    reg [63:0] internal_data;
    assign m_axis_tdata = internal_data[63:32];
    assign m_axis_tvalid = 1'b1;
    always @ (posedge clk) begin
        if (~rst) begin
             internal_data <= 0;
        end else begin
            if (trigger)
                internal_data <= internal_data + (64'b1 << (DAC_WIDTH + 30));
            else 
                internal_data <= internal_data - (internal_data >> 12);
        end
    end
endmodule
