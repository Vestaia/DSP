`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2020 12:41:43 AM
// Design Name: 
// Module Name: bram
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


module bram #
(
    parameter integer ADDR_LEN = 16,
    parameter integer DATA_WIDTH = 16
)
(
    input clk, 
    input ena, 
    input enb, 
    input wea, 
    input [ADDR_LEN-1:0] addra, 
    input [ADDR_LEN-1:0] addrb, 
    input [DATA_WIDTH-1:0] dia, 
    output [DATA_WIDTH-1:0] dob
);
    reg [DATA_WIDTH-1:0] ram [2**ADDR_LEN-1:0];
    reg [DATA_WIDTH-1:0] doa,dob;
    
    always @ (posedge clk) begin
        if (ena & wea)
            ram [addra] <= dia;
        if (enb)
            dob <= ram [addrb];
    end
    
endmodule
