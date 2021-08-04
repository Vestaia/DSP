`timescale 1ns / 1ps

module MSE_tb # (
        parameter integer AXIS_TDATA_WIDTH = 16,
        parameter integer PARAMETERS = 3
    )
    ();
    reg clk;
    reg reset;
    reg [AXIS_TDATA_WIDTH - 1 : 0] data;
    reg valid;
    reg [PARAMETERS * 32 - 1 : 0] param;
    reg [PARAMETERS * PARAMETERS * 32 - 1 : 0] cov_matrix;
    wire [AXIS_TDATA_WIDTH - 1 : 0] chi_sq;
    wire val;
    
    always begin
        #1 clk = ~clk;
    end
        
    
    MSE #(
        .PARAMETERS(PARAMETERS),
        .PARAM_WIDTH(32),
        .MAT_WIDTH(32)
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
        .m_axis_tvalid(val)
    );
        
    initial begin
        clk = 0;
        reset = 0;
        valid = 1;
        #10
        param = {2, 3, 5};
        cov_matrix = 
        {
        2, 3, 5, 
        3, 7, 11, 
        5, 11, 13
        };
        reset = 1;
        #100
        $finish;
    end
    
endmodule
