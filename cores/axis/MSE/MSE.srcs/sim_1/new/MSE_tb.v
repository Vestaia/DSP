`timescale 1ns / 1ps

module MSE_tb # (
        parameter integer AXIS_TDATA_WIDTH = 16,
        parameter integer PARAMETERS = 4
    )
    ();
    reg clk;
    reg reset;
    reg [AXIS_TDATA_WIDTH - 1 : 0] data;
    reg valid;
    reg [PARAMETERS * 32 - 1 : 0] param;
    reg [PARAMETERS * PARAMETERS * 32 - 1 : 0] cov_matrix;
    reg [16 * 2 - 1 : 0] delays;
    wire [AXIS_TDATA_WIDTH - 1 : 0] chi_sq;
    wire val;
    
    always begin
        #1 clk = ~clk;
    end
        
    
    MSE #(
        .PARAMETERS(PARAMETERS),
        .PARAM_WIDTH(32),
        .MAT_WIDTH(32),
        .DELAYS(2)
    )
    chi (
        .aclk(clk),
        .aresetn(reset),
        .s_axis_data_tdata(data), 
        .s_axis_data_tvalid(valid),
        .s_axis_param_tdata(param),
        .s_axis_param_tvalid(valid),
        .inv_cov_mat(cov_matrix),
        .m_axis_tdata(chi_sq),
        .m_axis_tvalid(val),
        .delay_flat(delays)
    );
        
    initial begin
        clk = 0;
        reset = 0;
        valid = 1;
        delays = {16'd5, 16'd10};
        param = {5,3,2};
        cov_matrix = 
        {
        13, 11, 5,
             7, 3,
                2
        };
        data = 0;
        #101
        reset = 1;
        #10
        data = 1;
        #10
        data = 0;
        #100
        //Should output 862 (0x035e)
        $finish;
    end
    
endmodule
