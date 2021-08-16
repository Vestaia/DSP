`timescale 1ns / 1ps


module MSE #
    (
        parameter integer AXIS_TDATA_WIDTH  = 16,
        parameter integer PARAMETERS        = 1,
        parameter integer PARAM_WIDTH       = 16,
        parameter integer MAT_WIDTH         = 16,
        parameter integer OUTPUT_WIDTH      = 32,
        parameter integer DELAYS            = 3,
        parameter integer BUFFER_LENGTH     = 6
    )
    (
        input aclk,
        input aresetn,
        input [AXIS_TDATA_WIDTH - 1 : 0] s_axis_data_tdata, 
        input s_axis_data_tvalid,
        input [PARAM_WIDTH * PARAMETERS - 1 : 0] s_axis_param_tdata,
        input s_axis_param_tvalid,
        input [MAT_WIDTH * PARAMETERS * PARAMETERS - 1 : 0] inv_cov_mat,
        input [16 * DELAYS - 1 : 0] delay_flat,
        output [OUTPUT_WIDTH - 1 : 0] m_axis_tdata,
        output m_axis_tvalid
    );
        wire [PARAM_WIDTH - 1 : 0] params [PARAMETERS - 1 : 0];
        wire [MAT_WIDTH - 1 : 0] matrix [PARAMETERS - 1 : 0][PARAMETERS - 1 : 0];
        wire [AXIS_TDATA_WIDTH - 1 : 0] delay_out;
        reg [5 * AXIS_TDATA_WIDTH - 1 : 0] int_inv_cov_mat [$clog2(PARAMETERS) * 2 + 1 : 0][PARAMETERS - 1 : 0][PARAMETERS - 1 : 0]; //Overallocation will be optimized out during synthesis
        reg [BUFFER_LENGTH - 1 : 0] delay [$clog2(DELAYS) : 0][DELAYS - 1 : 0]; 
        reg [BUFFER_LENGTH - 1 : 0] wptr = 0;
        reg [2 * AXIS_TDATA_WIDTH - 1 : 0] sum;
        reg [2 * AXIS_TDATA_WIDTH - 1 : 0] ysq;
        reg [2 * AXIS_TDATA_WIDTH - 1 : 0] delaysq;
        genvar i;
        genvar j;
        genvar k;
        
        assign m_axis_tvalid = s_axis_param_tvalid & s_axis_data_tvalid;
        
        always @ (posedge aclk) begin
            wptr <= wptr + 1;
            if (aresetn) begin
                ysq <= s_axis_data_tdata*s_axis_data_tdata;
                delaysq <= delay_out*delay_out;
                sum <= sum + ysq - delaysq;
            end
            else begin
                sum <= 0;
                ysq <= 0;
                delaysq <= 0;
            end
        end

        generate
            for (k = 1; k < $clog2(DELAYS) + 1; k = k + 1)
                for (i = 0; i < DELAYS; i = i + (2**k))
                    if (i + 2**(k-1) > DELAYS - 1)
                        always @ (posedge aclk)
                            if (aresetn)
                                delay [k][i] <= delay [k-1][i];
                            else
                                delay [k][i] <= 0;
                    else
                        always @ (posedge aclk)
                            if (aresetn)
                                delay [k][i] <= delay [k-1][i] + delay [k-1][i + 2**(k-1)];
                            else
                                delay [k][i] <= 0;
        endgenerate
        
        bram # (BUFFER_LENGTH,AXIS_TDATA_WIDTH)
        ram (
            .clk    (aclk),
            .ena    (1'b1), 
            .enb    (1'b1), 
            .wea    (1'b1), 
            .addra  (wptr), 
            .addrb  (wptr - delay[$clog2(DELAYS) - 10][0]), //Need to delay for additional 10 cycles due to fitting latency
            .dia    (s_axis_data_tdata), 
            .dob    (delay_out)
         );
         
        //Unpack Variables into lower trangular matrix
        //Left to right, ignores upper half (Assumes symmetric)
        generate
            for (i = 0; i < PARAMETERS; i = i + 1) begin
                assign params[i] = s_axis_param_tdata[(i+1) * PARAM_WIDTH - 1 : i * PARAM_WIDTH];
                for (j = 0; j < i + 1; j = j + 1)
                    assign matrix[i][j] = inv_cov_mat[((i * (i + 1)) / 2 + j + 1) * MAT_WIDTH - 1 : ((i * (i + 1)) / 2 + j) * MAT_WIDTH];
            end
            for (i = 0; i < DELAYS; i = i + 1)
                always @ (posedge aclk)
                    delay[0][i] = delay_flat[(i + 1) * 16 - 1 : i * 16];
        endgenerate 
        
        //Multiply and contract lower trangular matrix
        //Honestly it would be faster to just rewrite this than attempting to understand this code. Just don't bother...
        generate
            for (i = 0; i < PARAMETERS; i = i + 1) begin
                always @ (posedge aclk)
                    if (aresetn)
                        int_inv_cov_mat[0][i][i] <= matrix[i][i] * params[i];
                    else
                        int_inv_cov_mat[0][i][i] <= 0;
                for (j = 0; j < i; j = j + 1)
                    always @ (posedge aclk)
                        if (aresetn)
                            int_inv_cov_mat[0][i][j] <= 2 * matrix[i][j] * params[j];
                        else
                            int_inv_cov_mat[0][i][j] <= 0;
                for (k = 1; k < $clog2(PARAMETERS) + 1; k = k + 1) 
                    for (j = 0; j < i + 1; j = j + (2**k))
                        if (j + 2**(k - 1) > i) 
                            always @ (posedge aclk) 
                                if (aresetn)
                                    int_inv_cov_mat[k][i][j] <= int_inv_cov_mat[k-1][i][j];
                                else 
                                    int_inv_cov_mat[k][i][j] <= 0;
                            else
                            always @ (posedge aclk)
                                if (aresetn)
                                    int_inv_cov_mat[k][i][j] <= int_inv_cov_mat[k-1][i][j] + int_inv_cov_mat[k-1][i][j + 2**(k - 1)];
                                else 
                                    int_inv_cov_mat[k][i][j] <= 0;
                always @ (posedge aclk) 
                    if (aresetn)
                        int_inv_cov_mat[$clog2(PARAMETERS) + 1][i][0] <= int_inv_cov_mat[$clog2(PARAMETERS)][i][0] * params[i];
                    else
                        int_inv_cov_mat[$clog2(PARAMETERS) + 1][i][0] <= 0;
            end
            for (k = $clog2(PARAMETERS) + 2; k < 2 * $clog2(PARAMETERS) + 2; k = k + 1)
                for (i = 0; i < PARAMETERS; i = i + (2**(k - ($clog2(PARAMETERS) + 1))))
                    if (i + (2**(k - ($clog2(PARAMETERS) + 2))) > PARAMETERS - 1) 
                        always @ (posedge aclk)
                            if (aresetn)
                                int_inv_cov_mat[k][i][0] <= int_inv_cov_mat[k-1][i][0];
                            else 
                                int_inv_cov_mat[k][i][0] <= 0;
                    else 
                        always @ (posedge aclk)
                            if (aresetn)
                                int_inv_cov_mat[k][i][0] <= int_inv_cov_mat[k-1][i][0] + int_inv_cov_mat[k-1][i + (2**(k - ($clog2(PARAMETERS) + 2)))][0];
                            else
                                int_inv_cov_mat[k][i][0] <= 0;
        endgenerate
        
        //assign m_axis_tdata = int_inv_cov_mat[2 * $clog2(PARAMETERS) + 1][0][0];
        assign m_axis_tdata = sum - int_inv_cov_mat[2 * $clog2(PARAMETERS) + 1][0][0];
        
endmodule
