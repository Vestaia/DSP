
`timescale 1 ns / 1 ps

	module trap_v1_0 #
	(
		parameter integer AXIS_TDATA_WIDTH = 16,
		parameter integer BUFFER_LENGTH = 14
	)
	(
        input wire aclk,
        input wire aresetn,
		input wire [AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input wire s_axis_tvalid,
		output wire m_axis_tvalid,
		output wire [AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		
		input wire [13:0] kdelay,
		input wire [13:0] ldelay,
		input wire [15:0] mult_factor
	);

    axis_trapezoid # (
        AXIS_TDATA_WIDTH,
        BUFFER_LENGTH
    )
    trap_0
    (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .kdelay(kdelay),
        .ldelay(ldelay),
        .mult_factor(mult_factor)
    );
	endmodule
