`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2021 11:41:47 AM
// Design Name: 
// Module Name: MSE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MSE #
    (
        parameter integer AXIS_TDATA_WIDTH  = 16,
        parameter integer PARAMETERS        = 1,
        parameter integer PARAM_WIDTH       = 16,
        parameter integer MAT_WIDTH         = 16,
        parameter integer OUTPUT_WIDTH      = 32
    )
    (
        input aclk,
        input aresetn,
        input [AXIS_TDATA_WIDTH - 1 : 0] s_axis_data_tdata, 
        input s_axis_data_tvalid,
        input [PARAM_WIDTH * PARAMETERS - 1 : 0] s_axis_param_tdata,
        input s_axis_param_tvalid,
        input [MAT_WIDTH * PARAMETERS * PARAMETERS - 1 : 0] inv_cov_mat,
        output [OUTPUT_WIDTH - 1 : 0] m_axis_tdata,
        output m_axis_tvalid
    );
        wire [PARAM_WIDTH - 1 : 0] params [PARAMETERS - 1 : 0];
        wire [MAT_WIDTH - 1 : 0] matrix [PARAMETERS - 1 : 0][PARAMETERS - 1 : 0];
        reg [4 * AXIS_TDATA_WIDTH - 1 : 0] int_inv_cov_mat [$clog2(PARAMETERS) * 2 + 1 : 0][PARAMETERS - 1 : 0][PARAMETERS - 1 : 0]; //Overallocation will be optimized out during synthesis

        genvar i;
        genvar j;
        genvar k;
        
        //Unpack Variables
        generate
            for (i = 0; i < PARAMETERS; i = i + 1) begin
                assign params[i] = s_axis_param_tdata[(i+1) * PARAM_WIDTH - 1 : i * PARAM_WIDTH];
                for (j = 0; j < PARAMETERS; j = j + 1) begin
                    assign matrix[i][j] = inv_cov_mat[(i * PARAMETERS + j + 1) * MAT_WIDTH - 1 : (i * PARAMETERS + j) * MAT_WIDTH];
                end
            end
        endgenerate 
        
        //Multiply and contract lower trangular matrix
        //Honestly it would be faster to just rewrite this than attempting to understand this code. Just don't bother...
        generate
            for (i = 0; i < PARAMETERS; i = i + 1) begin
                always @ (posedge aclk) begin
                    int_inv_cov_mat[0][i][i] <= matrix[i][i] * params[i];
                end
                for (j = 0; j < i; j = j + 1) begin
                    always @ (posedge aclk) begin
                        int_inv_cov_mat[0][i][j] <= 2 * matrix[i][j] * params[j];
                    end
                end
                for (k = 1; k < $clog2(PARAMETERS) + 1; k = k + 1) begin
                    for (j = 0; j < i + 1; j = j + (2**k)) begin
                        if (j + 2**(k - 1) > i) begin
                            always @ (posedge aclk) begin
                                int_inv_cov_mat[k][i][j] <= int_inv_cov_mat[k-1][i][j];
                            end
                        end else begin
                            always @ (posedge aclk) begin
                                int_inv_cov_mat[k][i][j] <= int_inv_cov_mat[k-1][i][j] + int_inv_cov_mat[k-1][i][j + 2**(k - 1)];
                            end
                        end
                    end
                end
                always @ (posedge aclk) begin
                    int_inv_cov_mat[$clog2(PARAMETERS) + 1][i][0] <= int_inv_cov_mat[$clog2(PARAMETERS)][i][0] * params[i];
                end
            end
            
            for (k = $clog2(PARAMETERS) + 2; k < 2 * $clog2(PARAMETERS) + 2; k = k + 1) begin
                for (i = 0; i < PARAMETERS; i = i + (2**(k - ($clog2(PARAMETERS) + 1)))) begin
                    if (i + (2**(k - ($clog2(PARAMETERS) + 2))) > PARAMETERS - 1) begin
                        always @ (posedge aclk) begin
                            int_inv_cov_mat[k][i][0] <= int_inv_cov_mat[k-1][i][0];
                        end
                    end
                    else begin
                        always @ (posedge aclk) begin
                            int_inv_cov_mat[k][i][0] <= int_inv_cov_mat[k-1][i][0] + int_inv_cov_mat[k-1][i + (2**(k - ($clog2(PARAMETERS) + 2)))][0];
                        end
                    end
                end
            end
        endgenerate
        
        //assign m_axis_tdata = int_inv_cov_mat[2 * $clog2(PARAMETERS) + 1][0][0];
        assign m_axis_tdata = int_inv_cov_mat[5][0][0];
        
endmodule
