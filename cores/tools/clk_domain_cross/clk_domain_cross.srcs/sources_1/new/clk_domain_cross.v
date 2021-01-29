module clk_domain_cross #(
    integer DATA_WIDTH = 32,
    integer LATENCY = 3
    )(  
    input clk,
    input [DATA_WIDTH-1 : 0] i,
    output [DATA_WIDTH-1 : 0] o
    );
    
    (* ASYNC_REG = "TRUE" *) reg [DATA_WIDTH-1 : 0] int_data [LATENCY-1:0];
    
    assign o = int_data[LATENCY-1];
    
    genvar j;
    
    generate
        always @ (posedge clk) 
            int_data[0] <= i;
          
        for (j = 1; j < LATENCY; j = j + 1)
            always @ (posedge clk) begin
                int_data[j] <= int_data[j-1];
            end  
    endgenerate
    
endmodule
