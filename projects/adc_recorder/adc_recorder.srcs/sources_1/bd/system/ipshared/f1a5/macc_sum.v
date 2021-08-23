module macc_sum #
    (
        parameter integer I_ACC_WIDTH = 32,
        parameter integer O_ACC_WIDTH = 32,
        parameter integer I_MACC_WIDTH = 32,
        parameter integer COEF_WIDTH = 32,
        parameter integer SHIFT = 0
    )
    (   
        input                                            clk,
        input                                            aresetn,
        input       [COEF_WIDTH                 - 1 : 0] coef,
        input       [I_ACC_WIDTH                - 1 : 0] acc_in,
        input       [I_MACC_WIDTH               - 1 : 0] macc_in,
        
        output reg  [O_ACC_WIDTH                - 1 : 0] acc_out,
        output reg  [O_ACC_WIDTH                - 1 : 0] macc_out
        //output reg  [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_out
    );
    
    //Pipelining registers
    reg [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_mult_A;
    reg [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_mult_B;
    reg [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_mult_C;
    reg [O_ACC_WIDTH + COEF_WIDTH   - 1 : 0] macc_mult_D;
    reg [O_ACC_WIDTH                - 1 : 0] accu;
    reg [I_MACC_WIDTH               - 1 : 0] macc_del;
    always @ (posedge clk) begin
        if (~aresetn) begin
            acc_out     <= 0;
            accu        <= 0;
            macc_del    <= 0;
            macc_mult_A <= 0;
            macc_mult_B <= 0;
            macc_mult_C <= 0;
            macc_mult_D <= 0;
            macc_out    <= 0;
        end
        else begin
            acc_out       <= accu;
            accu          <= $signed(accu) + $signed(acc_in);
            macc_del      <= macc_in;
          	macc_mult_A   <= ($signed(accu) >> SHIFT) * $signed(coef);
          	macc_mult_B   <= macc_mult_A;
          	macc_mult_C   <= macc_mult_B;
          	macc_mult_D   <= macc_mult_C;
            macc_out      <= $signed(macc_del) + $signed(macc_mult_D);
        end
    end

endmodule



