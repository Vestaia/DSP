`timescale 1ns / 1ps

module axis_ram_reader #
(
  parameter integer ADDR_WIDTH = 20,
  parameter integer AXI_ID_WIDTH = 6,
  parameter integer AXI_ADDR_WIDTH = 32,
  parameter integer AXI_DATA_WIDTH = 64,
  // Always use a power of 2. If you don't it will pad to the next power of 2.
  parameter integer AXIS_TDATA_WIDTH = 64
)
(
  // System signals
  input  wire                        aclk,
  input  wire                        aresetn,
  
  input  wire [AXI_ADDR_WIDTH-1:0]    cfg_data,
  
  // AXI_S Master side
  output wire [AXIS_TDATA_WIDTH-1:0] s_axis_tdata,
  output wire                        s_axis_tvalid,
  
  // RAM Read Master side
  output wire [AXI_ID_WIDTH-1:0]     m_axi_arid,    // AXI master: Read address ID
  output wire [AXI_ADDR_WIDTH-1:0]   m_axi_araddr,  // AXI master: Read address
  output wire [3:0]                  m_axi_awlen,   // AXI master: Read burst length
  output wire [2:0]                  m_axi_awsize,  // AXI master: Read burst size
  output wire [1:0]                  m_axi_awburst, // AXI master: Read burst type
  output wire [3:0]                  m_axi_awcache, // AXI master: Read memory type
  output wire                        m_axi_arvalid, // AXI master: Read address valid
  input  wire                        m_axi_arready, // AXI master: Read address ready
  input  wire [AXI_ID_WIDTH-1:0]     m_axi_rid,     // AXI master: Read data ID
  input  wire [AXI_DATA_WIDTH-1:0]   m_axi_rdata,   // AXI master: Read data
  input  wire [AXI_DATA_WIDTH/8-1:0] m_axi_rresp,   // AXI master: Read response
  input  wire                        m_axi_wlast,   // AXI master: Read last
  input  wire                        m_axi_wvalid,  // AXI master: Read valid
  output wire                        m_axi_wready   // AXI master: Read ready
);

always @(posedge aclk)
begin
    if (~aresetn)
    begin
    
    end
    else
    begin
    
    end
end

assign s_axis_tvalid =  1'b1;

endmodule
