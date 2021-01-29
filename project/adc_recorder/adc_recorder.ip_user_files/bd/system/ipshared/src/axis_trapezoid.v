`timescale 1ns / 1ps


module axis_trapezoid #
(
    parameter integer AXIS_TDATA_WIDTH = 16,    
    parameter integer BUFFER_LENGTH = 14        //BRAM allocation size, 2^BUFFER_LENGTH
)
(
    input aclk,
    input aresetn,
    
    input signed [AXIS_TDATA_WIDTH-1:0] s_axis_tdata,
    input s_axis_tvalid,
    output signed [AXIS_TDATA_WIDTH-1:0] m_axis_tdata,
    output m_axis_tvalid,
    
    input [BUFFER_LENGTH-1:0] kdelay,
    input [BUFFER_LENGTH-1:0] ldelay,
    input signed [15:0] mult_factor
);
    reg [BUFFER_LENGTH-1:0] wptr;
    wire signed [AXIS_TDATA_WIDTH-1:0] k_delay_tdata;
    wire signed [AXIS_TDATA_WIDTH-1:0] l_delay_tdata;
    reg signed [AXIS_TDATA_WIDTH-1:0] k_diff_tdata;
    reg signed [AXIS_TDATA_WIDTH-1:0] l_diff_tdata;
    reg signed [2*AXIS_TDATA_WIDTH-1:0] mult_tdata;
    reg signed [2*AXIS_TDATA_WIDTH-1:0] accu_tdata;
    reg signed [2*AXIS_TDATA_WIDTH-1:0] sum_tdata;
    reg signed [3*AXIS_TDATA_WIDTH-1:0] result_tdata;
    reg signed [AXIS_TDATA_WIDTH-1:0] m_axis_tdata;
    
    wire [$clog2(AXIS_TDATA_WIDTH):0] k_zeros;
    wire [$clog2(AXIS_TDATA_WIDTH):0] s_zeros;
    reg [$clog2(AXIS_TDATA_WIDTH)+1:0] shift;
    
    bram # (BUFFER_LENGTH,AXIS_TDATA_WIDTH)
    r0 (
        .clk(aclk),
        .ena(1'b1), 
        .enb(1'b1), 
        .wea(1'b1), 
        .addra(wptr), 
        .addrb(wptr-kdelay+1), 
        .dia(s_axis_tdata), 
        .dob(k_delay_tdata)
    );
    
    bram # (BUFFER_LENGTH,AXIS_TDATA_WIDTH)
    r1 (
        .clk(aclk),
        .ena(1'b1), 
        .enb(1'b1), 
        .wea(1'b1), 
        .addra(wptr), 
        .addrb(wptr-ldelay+1), 
        .dia(k_diff_tdata), 
        .dob(l_delay_tdata)
    );
    
    clzero # (AXIS_TDATA_WIDTH)
    c0 (
        .in(kdelay),
        .out(k_zeros)
    );
    
    clzero # (AXIS_TDATA_WIDTH)
    c1 (
        .in(mult_factor | kdelay),
        .out(s_zeros)
    );
    
    assign m_axis_tvalid = s_axis_tvalid;
    //assign m_axis_tdata = sum_tdata[2*AXIS_TDATA_WIDTH-1:AXIS_TDATA_WIDTH];//result_tdata[3*AXIS_TDATA_WIDTH-1:2*AXIS_TDATA_WIDTH];
    
    always @ (posedge aclk) begin
        if (~aresetn) begin
            wptr <= 0;
            k_diff_tdata <= 0;
            l_diff_tdata <= 0;
            mult_tdata <= 0;
            accu_tdata <= 0;
            sum_tdata <= 0;
            shift <= 0;
            result_tdata <= 0;
        end else begin
            wptr <= wptr + 1;
            k_diff_tdata <= s_axis_tdata - k_delay_tdata;
            l_diff_tdata <= k_diff_tdata - l_delay_tdata;
            mult_tdata <= l_diff_tdata * mult_factor;
            accu_tdata <= accu_tdata + l_diff_tdata;
            sum_tdata <= mult_tdata + accu_tdata;
            shift <= k_zeros + s_zeros;
            result_tdata <= result_tdata + (sum_tdata <<< shift); 
            m_axis_tdata <= result_tdata[3*AXIS_TDATA_WIDTH-1:2*AXIS_TDATA_WIDTH];
        end
    end
    
    
    
endmodule
