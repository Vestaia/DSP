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
  
  // The address to start reading from
  input  wire [AXI_ADDR_WIDTH-1:0]    cfg_data,
  
  // AXI_S Master side
  output wire [AXIS_TDATA_WIDTH-1:0] m_axis_tdata,
  output wire                        m_axis_tvalid,
  input  wire                        m_axis_tready,
  
  // RAM Read Master side
  output wire [AXI_ID_WIDTH-1:0]     m_axi_arid,    // AXI master: Read address ID
  output wire [AXI_ADDR_WIDTH-1:0]   m_axi_araddr,  // AXI master: Read address
  output wire [3:0]                  m_axi_arlen,   // AXI master: Read burst length
  output wire [2:0]                  m_axi_arsize,  // AXI master: Read burst size
  output wire [1:0]                  m_axi_arburst, // AXI master: Read burst type
  output wire [3:0]                  m_axi_arcache, // AXI master: Read memory type
  output wire                        m_axi_arvalid, // AXI master: Read address valid
  input  wire                        m_axi_arready, // AXI master: Read address ready
  input  wire [AXI_ID_WIDTH-1:0]     m_axi_rid,     // AXI master: Read data ID
  input  wire [AXI_DATA_WIDTH-1:0]   m_axi_rdata,   // AXI master: Read data
  input  wire [AXI_DATA_WIDTH/8-1:0] m_axi_rresp,   // AXI master: Read response
  input  wire                        m_axi_rlast,   // AXI master: Read last
  input  wire                        m_axi_rvalid,  // AXI master: Read valid
  output wire                        m_axi_rready   // AXI master: Read ready
);

  // counts how many times to right shift `value` until it becomes 0
  function integer clogb2 (input integer value);
    for(clogb2 = 0; value > 0; clogb2 = clogb2 + 1) value = value >> 1;
  endfunction
  
  localparam integer ADDR_SIZE = clogb2((AXI_DATA_WIDTH / 8) - 1);
  
  // the internal registers for the number of reads to offset the address by
  // so if this register holds the number 14, it means we have done 14 reads of
  // whatever our data size is, so offset by that amount to get the new read address
  reg [ADDR_WIDTH-1:0] int_addr_reg, int_addr_next;
  
  // The ID for the transaction
  reg [AXI_ID_WIDTH-1:0] int_rid_reg, int_rid_next;
  
  // every clock, either reset, or do appropriate pipeline
  always @(posedge aclk)
  begin
    if (~aresetn)
    begin
      //TODO: reset logic
    end
    else
    begin
      int_addr_reg <= int_addr_next;
      int_rid_reg <= int_rid_next;
    end
  end
  
  // now recalculate the values for the next clock cycle, to be pipelined in
  always @*
  begin
    // increment number of reads done
    //int_addr_next = int_addr_reg + 1'b1;
    
    // increment the id of the read
    int_rid_next = int_rid_reg + 1'b1;
  end
  
  // assign the proper id
  assign m_axi_arid = int_rid_reg;
  
  // Calculate the appropriate address to read from
  assign m_axi_araddr = cfg_data + {int_addr_reg, {(ADDR_SIZE){1'b0}}};
  
  // 0 corresponds to 1 read beats in the burst
  assign m_axi_arlen = 4'd0;
  
  // the number of bytes to read per beat, table on page 49 in AXI specification docs
  assign m_axi_arsize = ADDR_SIZE;
  
  // Incrementing burst, page 50 in AXI specification docs
  assign m_axi_arburst = 2'b01;
  
  // "Normal, Non-Cacheable, Bufferable", page 70 in AXI specification docs
  assign m_axi_arcache = 4'b0011;
  
  // Our address to read from is always valid
  assign m_axi_arvalid = 1'b1;
  
  // We are always ready to read data
  assign m_axis_rready = 1'b1;
  
  // Always assume the outgoing data is valid, we want to be creating a stream
  assign m_axis_tvalid =  1'b1;
  
  // Always assign whatever is on the line to the output for the axi stream (assuming we can complete a read in 1 clock cycle)
  assign m_axis_tdata = m_axi_rdata;
  
endmodule
