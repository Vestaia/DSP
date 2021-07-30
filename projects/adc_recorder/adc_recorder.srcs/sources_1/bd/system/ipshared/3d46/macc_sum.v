
module macc_sum #
    (
        parameter integer I_ACC_WIDTH = 32,
        parameter integer O_ACC_WIDTH = 32,
        parameter integer I_MACC_WIDTH = 32,
        parameter integer COEF_WIDTH = 32
    )
    (   
        input                                            clk,
        input                                            aresetn,
        input       [COEF_WIDTH                 - 1 : 0] coef,
        input       [I_ACC_WIDTH                - 1 : 0] acc_in,
        input       [I_MACC_WIDTH               - 1 : 0] macc_in,
        
        output reg  [O_ACC_WIDTH                - 1 : 0] acc_out,
        output reg  [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_out
    );
    
    //Pipelining registers
    reg [I_MACC_WIDTH               - 1 : 0] macc_del;
    reg [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_mult;
    reg [O_ACC_WIDTH                - 1 : 0] accu;
    always @ (posedge clk) begin
        if (~aresetn) begin
            acc_out     <= 0;
            accu        <= 0;
            macc_del    <= 0;
            macc_mult   <= 0;
            macc_out    <= 0;
        end
        else begin
            acc_out     <= accu;
            accu        <= $signed(accu) + $signed(acc_in);
            macc_del    <= macc_in;
            macc_mult   <= $signed(accu) * $signed(coef);
            macc_out    <= $signed(macc_del) + $signed(macc_mult);
        end
    end

endmodule
