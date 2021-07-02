//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Thu Jul  1 11:21:05 2021
//Host        : evermist running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module s00_couplers_imp_1OVXGTK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=30,numReposBlks=27,numNonXlnxBlks=13,numHierBlks=3,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_csn_o,
    adc_dat_a_i,
    adc_dat_b_i,
    adc_enc_n_o,
    adc_enc_p_o,
    dac_clk_o,
    dac_dat_o,
    dac_pwm_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o,
    exp_n_tri_io,
    exp_p_tri_io,
    led_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input adc_clk_n_i;
  input adc_clk_p_i;
  output adc_csn_o;
  input [13:0]adc_dat_a_i;
  input [13:0]adc_dat_b_i;
  output adc_enc_n_o;
  output adc_enc_p_o;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output [3:0]dac_pwm_o;
  output dac_rst_o;
  output dac_sel_o;
  output dac_wrt_o;
  inout [7:0]exp_n_tri_io;
  output [7:0]exp_p_tri_io;
  output [7:0]led_o;

  wire [31:0]Waveform_Offset_Addr1_dout;
  wire [31:0]adc_0_M_AXIS_TDATA;
  wire adc_0_M_AXIS_TVALID;
  wire adc_0_adc_csn;
  wire adc_clk_n_i_1;
  wire adc_clk_p_i_1;
  wire [13:0]adc_dat_a_i_1;
  wire [13:0]adc_dat_b_i_1;
  wire [15:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [31:16]axis_broadcaster_0_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire axis_combiner_0_M_AXIS_TREADY;
  wire [31:0]axis_combiner_0_m_axis_tdata;
  wire axis_red_pitaya_dac_0_dac_clk;
  wire [13:0]axis_red_pitaya_dac_0_dac_dat;
  wire axis_red_pitaya_dac_0_dac_rst;
  wire axis_red_pitaya_dac_0_dac_sel;
  wire axis_red_pitaya_dac_0_dac_wrt;
  wire [47:0]c_counter_binary_0_Q;
  wire [7:0]concat_0_dout;
  wire [0:0]const_0_dout;
  wire [31:0]const_1_dout;
  wire [15:0]fir_poly_0_m_axis_TDATA;
  wire fir_poly_0_m_axis_TVALID;
  wire [0:0]not_0_Res;
  wire pll_0_clk_out1;
  wire pll_0_clk_out2;
  wire pll_0_locked;
  wire [0:0]port_slicer_4_dout;
  wire [14:0]ps_0_DDR_ADDR;
  wire [2:0]ps_0_DDR_BA;
  wire ps_0_DDR_CAS_N;
  wire ps_0_DDR_CKE;
  wire ps_0_DDR_CK_N;
  wire ps_0_DDR_CK_P;
  wire ps_0_DDR_CS_N;
  wire [3:0]ps_0_DDR_DM;
  wire [31:0]ps_0_DDR_DQ;
  wire [3:0]ps_0_DDR_DQS_N;
  wire [3:0]ps_0_DDR_DQS_P;
  wire ps_0_DDR_ODT;
  wire ps_0_DDR_RAS_N;
  wire ps_0_DDR_RESET_N;
  wire ps_0_DDR_WE_N;
  wire ps_0_FIXED_IO_DDR_VRN;
  wire ps_0_FIXED_IO_DDR_VRP;
  wire [53:0]ps_0_FIXED_IO_MIO;
  wire ps_0_FIXED_IO_PS_CLK;
  wire ps_0_FIXED_IO_PS_PORB;
  wire ps_0_FIXED_IO_PS_SRSTB;
  wire [31:0]ps_0_M_AXI_GP0_ARADDR;
  wire [1:0]ps_0_M_AXI_GP0_ARBURST;
  wire [3:0]ps_0_M_AXI_GP0_ARCACHE;
  wire [11:0]ps_0_M_AXI_GP0_ARID;
  wire [3:0]ps_0_M_AXI_GP0_ARLEN;
  wire [1:0]ps_0_M_AXI_GP0_ARLOCK;
  wire [2:0]ps_0_M_AXI_GP0_ARPROT;
  wire [3:0]ps_0_M_AXI_GP0_ARQOS;
  wire ps_0_M_AXI_GP0_ARREADY;
  wire [2:0]ps_0_M_AXI_GP0_ARSIZE;
  wire ps_0_M_AXI_GP0_ARVALID;
  wire [31:0]ps_0_M_AXI_GP0_AWADDR;
  wire [1:0]ps_0_M_AXI_GP0_AWBURST;
  wire [3:0]ps_0_M_AXI_GP0_AWCACHE;
  wire [11:0]ps_0_M_AXI_GP0_AWID;
  wire [3:0]ps_0_M_AXI_GP0_AWLEN;
  wire [1:0]ps_0_M_AXI_GP0_AWLOCK;
  wire [2:0]ps_0_M_AXI_GP0_AWPROT;
  wire [3:0]ps_0_M_AXI_GP0_AWQOS;
  wire ps_0_M_AXI_GP0_AWREADY;
  wire [2:0]ps_0_M_AXI_GP0_AWSIZE;
  wire ps_0_M_AXI_GP0_AWVALID;
  wire [11:0]ps_0_M_AXI_GP0_BID;
  wire ps_0_M_AXI_GP0_BREADY;
  wire [1:0]ps_0_M_AXI_GP0_BRESP;
  wire ps_0_M_AXI_GP0_BVALID;
  wire [31:0]ps_0_M_AXI_GP0_RDATA;
  wire [11:0]ps_0_M_AXI_GP0_RID;
  wire ps_0_M_AXI_GP0_RLAST;
  wire ps_0_M_AXI_GP0_RREADY;
  wire [1:0]ps_0_M_AXI_GP0_RRESP;
  wire ps_0_M_AXI_GP0_RVALID;
  wire [31:0]ps_0_M_AXI_GP0_WDATA;
  wire [11:0]ps_0_M_AXI_GP0_WID;
  wire ps_0_M_AXI_GP0_WLAST;
  wire ps_0_M_AXI_GP0_WREADY;
  wire [3:0]ps_0_M_AXI_GP0_WSTRB;
  wire ps_0_M_AXI_GP0_WVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_ARADDR;
  wire ps_0_axi_periph_M00_AXI_ARREADY;
  wire ps_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_AWADDR;
  wire ps_0_axi_periph_M00_AXI_AWREADY;
  wire ps_0_axi_periph_M00_AXI_AWVALID;
  wire ps_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_BRESP;
  wire ps_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_RDATA;
  wire ps_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_RRESP;
  wire ps_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_WDATA;
  wire ps_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps_0_axi_periph_M00_AXI_WSTRB;
  wire ps_0_axi_periph_M00_AXI_WVALID;
  wire [0:0]pulse_gen_0_pulse;
  wire [0:0]rst_0_peripheral_aresetn;
  wire [31:0]sig_exp_decay_0_M_AXIS_TDATA;
  wire sig_exp_decay_0_M_AXIS_TVALID;
  wire [0:0]slice_2_dout;
  wire [0:0]slice_3_dout;
  wire [1023:0]system_configuration_dout2;
  wire [1023:0]system_configuration_dout3;
  wire [31:0]writer_0_M_AXI_AWADDR;
  wire [1:0]writer_0_M_AXI_AWBURST;
  wire [3:0]writer_0_M_AXI_AWCACHE;
  wire [5:0]writer_0_M_AXI_AWID;
  wire [3:0]writer_0_M_AXI_AWLEN;
  wire writer_0_M_AXI_AWREADY;
  wire [2:0]writer_0_M_AXI_AWSIZE;
  wire writer_0_M_AXI_AWVALID;
  wire writer_0_M_AXI_BREADY;
  wire writer_0_M_AXI_BVALID;
  wire [63:0]writer_0_M_AXI_WDATA;
  wire [5:0]writer_0_M_AXI_WID;
  wire writer_0_M_AXI_WLAST;
  wire writer_0_M_AXI_WREADY;
  wire [7:0]writer_0_M_AXI_WSTRB;
  wire writer_0_M_AXI_WVALID;
  wire [23:0]writer_0_sts_data;
  wire [31:0]writer_1_M_AXI_AWADDR;
  wire [1:0]writer_1_M_AXI_AWBURST;
  wire [3:0]writer_1_M_AXI_AWCACHE;
  wire [5:0]writer_1_M_AXI_AWID;
  wire [3:0]writer_1_M_AXI_AWLEN;
  wire writer_1_M_AXI_AWREADY;
  wire [2:0]writer_1_M_AXI_AWSIZE;
  wire writer_1_M_AXI_AWVALID;
  wire writer_1_M_AXI_BREADY;
  wire writer_1_M_AXI_BVALID;
  wire [31:0]writer_1_M_AXI_WDATA;
  wire [5:0]writer_1_M_AXI_WID;
  wire writer_1_M_AXI_WLAST;
  wire writer_1_M_AXI_WREADY;
  wire [3:0]writer_1_M_AXI_WSTRB;
  wire writer_1_M_AXI_WVALID;
  wire [63:0]xlconcat_0_dout;
  wire [7:0]xlconcat_2_dout;

  assign adc_clk_n_i_1 = adc_clk_n_i;
  assign adc_clk_p_i_1 = adc_clk_p_i;
  assign adc_csn_o = adc_0_adc_csn;
  assign adc_dat_a_i_1 = adc_dat_a_i[13:0];
  assign adc_dat_b_i_1 = adc_dat_b_i[13:0];
  assign dac_clk_o = axis_red_pitaya_dac_0_dac_clk;
  assign dac_dat_o[13:0] = axis_red_pitaya_dac_0_dac_dat;
  assign dac_rst_o = axis_red_pitaya_dac_0_dac_rst;
  assign dac_sel_o = axis_red_pitaya_dac_0_dac_sel;
  assign dac_wrt_o = axis_red_pitaya_dac_0_dac_wrt;
  assign exp_p_tri_io[7:0] = concat_0_dout;
  assign led_o[7:0] = xlconcat_2_dout;
  system_Waveform_Offset_Addr_1 Waveform_Offset_Addr
       (.dout(const_1_dout));
  system_Waveform_Offset_Addr_2 Waveform_Offset_Addr1
       (.dout(Waveform_Offset_Addr1_dout));
  system_adc_0_0 adc_0
       (.aclk(pll_0_clk_out1),
        .adc_csn(adc_0_adc_csn),
        .adc_dat_a(adc_dat_a_i_1),
        .adc_dat_b(adc_dat_b_i_1),
        .m_axis_tdata(adc_0_M_AXIS_TDATA),
        .m_axis_tvalid(adc_0_M_AXIS_TVALID));
  system_axis_broadcaster_0_0 axis_broadcaster_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_2_dout),
        .m_axis_tdata({axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tvalid({axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(adc_0_M_AXIS_TDATA),
        .s_axis_tvalid(adc_0_M_AXIS_TVALID));
  system_axis_combiner_0_0 axis_combiner_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_2_dout),
        .m_axis_tdata(axis_combiner_0_m_axis_tdata),
        .m_axis_tready(axis_combiner_0_M_AXIS_TREADY),
        .s_axis_tdata({fir_poly_0_m_axis_TDATA,axis_broadcaster_0_M01_AXIS_TDATA}),
        .s_axis_tvalid({fir_poly_0_m_axis_TVALID,axis_broadcaster_0_M01_AXIS_TVALID}));
  system_axis_red_pitaya_dac_0_0 axis_red_pitaya_dac_0
       (.aclk(pll_0_clk_out1),
        .dac_clk(axis_red_pitaya_dac_0_dac_clk),
        .dac_dat(axis_red_pitaya_dac_0_dac_dat),
        .dac_rst(axis_red_pitaya_dac_0_dac_rst),
        .dac_sel(axis_red_pitaya_dac_0_dac_sel),
        .dac_wrt(axis_red_pitaya_dac_0_dac_wrt),
        .ddr_clk(pll_0_clk_out2),
        .locked(pll_0_locked),
        .s_axis_tdata(sig_exp_decay_0_M_AXIS_TDATA),
        .s_axis_tvalid(sig_exp_decay_0_M_AXIS_TVALID));
  system_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(pll_0_clk_out1),
        .Q(c_counter_binary_0_Q));
  system_concat_0_0 concat_0
       (.In0(not_0_Res),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(concat_0_dout));
  system_const_0_0 const_0
       (.dout(const_0_dout));
  system_fir_poly_0_0 fir_poly_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_2_dout),
        .coef_flat(system_configuration_dout2[255:0]),
        .delay_flat(system_configuration_dout3[15:0]),
        .m_axis_tdata(fir_poly_0_m_axis_TDATA),
        .m_axis_tvalid(fir_poly_0_m_axis_TVALID),
        .s_axis_tdata(axis_broadcaster_0_M00_AXIS_TDATA),
        .s_axis_tvalid(axis_broadcaster_0_M00_AXIS_TVALID));
  system_not_0_0 not_0
       (.Op1(slice_2_dout),
        .Res(not_0_Res));
  system_pll_0_0 pll_0
       (.clk_in1_n(adc_clk_n_i_1),
        .clk_in1_p(adc_clk_p_i_1),
        .clk_out1(pll_0_clk_out1),
        .clk_out2(pll_0_clk_out2),
        .locked(pll_0_locked));
  system_port_slicer_4_0 port_slicer_4
       (.din(c_counter_binary_0_Q),
        .dout(port_slicer_4_dout));
  system_ps_0_2 ps_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(pll_0_clk_out1),
        .M_AXI_GP0_ARADDR(ps_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SS_I(1'b0),
        .S_AXI_HP0_ACLK(pll_0_clk_out1),
        .S_AXI_HP0_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARBURST({1'b0,1'b1}),
        .S_AXI_HP0_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_ARVALID(1'b0),
        .S_AXI_HP0_AWADDR(writer_0_M_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(writer_0_M_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(writer_0_M_AXI_AWCACHE),
        .S_AXI_HP0_AWID(writer_0_M_AXI_AWID),
        .S_AXI_HP0_AWLEN(writer_0_M_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWREADY(writer_0_M_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(writer_0_M_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(writer_0_M_AXI_AWVALID),
        .S_AXI_HP0_BREADY(writer_0_M_AXI_BREADY),
        .S_AXI_HP0_BVALID(writer_0_M_AXI_BVALID),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RREADY(1'b0),
        .S_AXI_HP0_WDATA(writer_0_M_AXI_WDATA),
        .S_AXI_HP0_WID(writer_0_M_AXI_WID),
        .S_AXI_HP0_WLAST(writer_0_M_AXI_WLAST),
        .S_AXI_HP0_WREADY(writer_0_M_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(writer_0_M_AXI_WSTRB),
        .S_AXI_HP0_WVALID(writer_0_M_AXI_WVALID),
        .S_AXI_HP1_ACLK(pll_0_clk_out1),
        .S_AXI_HP1_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARBURST({1'b0,1'b1}),
        .S_AXI_HP1_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP1_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARSIZE({1'b0,1'b1,1'b0}),
        .S_AXI_HP1_ARVALID(1'b0),
        .S_AXI_HP1_AWADDR(writer_1_M_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(writer_1_M_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(writer_1_M_AXI_AWCACHE),
        .S_AXI_HP1_AWID(writer_1_M_AXI_AWID),
        .S_AXI_HP1_AWLEN(writer_1_M_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP1_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWREADY(writer_1_M_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(writer_1_M_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(writer_1_M_AXI_AWVALID),
        .S_AXI_HP1_BREADY(writer_1_M_AXI_BREADY),
        .S_AXI_HP1_BVALID(writer_1_M_AXI_BVALID),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RREADY(1'b0),
        .S_AXI_HP1_WDATA(writer_1_M_AXI_WDATA),
        .S_AXI_HP1_WID(writer_1_M_AXI_WID),
        .S_AXI_HP1_WLAST(writer_1_M_AXI_WLAST),
        .S_AXI_HP1_WREADY(writer_1_M_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(writer_1_M_AXI_WSTRB),
        .S_AXI_HP1_WVALID(writer_1_M_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_ps_0_axi_periph_0 ps_0_axi_periph
       (.ACLK(pll_0_clk_out1),
        .ARESETN(rst_0_peripheral_aresetn),
        .M00_ACLK(pll_0_clk_out1),
        .M00_ARESETN(rst_0_peripheral_aresetn),
        .M00_AXI_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(pll_0_clk_out1),
        .S00_ARESETN(rst_0_peripheral_aresetn),
        .S00_AXI_araddr(ps_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps_0_M_AXI_GP0_BID),
        .S00_AXI_bready(ps_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps_0_M_AXI_GP0_WVALID));
  system_pulse_gen_0_0 pulse_gen_0
       (.clk(pll_0_clk_out1),
        .pulse(pulse_gen_0_pulse),
        .trigger(port_slicer_4_dout));
  system_rst_0_0 rst_0
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_0_locked),
        .ext_reset_in(const_0_dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_0_peripheral_aresetn),
        .slowest_sync_clk(pll_0_clk_out1));
  system_sig_exp_decay_0_0 sig_exp_decay_0
       (.clk(pll_0_clk_out1),
        .m_axis_tdata(sig_exp_decay_0_M_AXIS_TDATA),
        .m_axis_tvalid(sig_exp_decay_0_M_AXIS_TVALID),
        .rst(slice_2_dout),
        .trigger(pulse_gen_0_pulse));
  system_configuration_imp_1T0V4NT system_configuration
       (.S_AXI_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .S_AXI_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .S_AXI_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_wstrb(ps_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_wvalid(ps_0_axi_periph_M00_AXI_WVALID),
        .aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .dout(slice_3_dout),
        .dout1(slice_2_dout),
        .dout2(system_configuration_dout2),
        .dout3(system_configuration_dout3));
  system_writer_0_2 writer_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_3_dout),
        .cfg_data(Waveform_Offset_Addr1_dout),
        .m_axi_awaddr(writer_0_M_AXI_AWADDR),
        .m_axi_awburst(writer_0_M_AXI_AWBURST),
        .m_axi_awcache(writer_0_M_AXI_AWCACHE),
        .m_axi_awid(writer_0_M_AXI_AWID),
        .m_axi_awlen(writer_0_M_AXI_AWLEN),
        .m_axi_awready(writer_0_M_AXI_AWREADY),
        .m_axi_awsize(writer_0_M_AXI_AWSIZE),
        .m_axi_awvalid(writer_0_M_AXI_AWVALID),
        .m_axi_bready(writer_0_M_AXI_BREADY),
        .m_axi_bvalid(writer_0_M_AXI_BVALID),
        .m_axi_wdata(writer_0_M_AXI_WDATA),
        .m_axi_wid(writer_0_M_AXI_WID),
        .m_axi_wlast(writer_0_M_AXI_WLAST),
        .m_axi_wready(writer_0_M_AXI_WREADY),
        .m_axi_wstrb(writer_0_M_AXI_WSTRB),
        .m_axi_wvalid(writer_0_M_AXI_WVALID),
        .s_axis_tdata(xlconcat_0_dout),
        .s_axis_tready(axis_combiner_0_M_AXIS_TREADY),
        .s_axis_tvalid(slice_2_dout),
        .sts_data(writer_0_sts_data));
  system_writer_0_3 writer_1
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_3_dout),
        .cfg_data(const_1_dout),
        .m_axi_awaddr(writer_1_M_AXI_AWADDR),
        .m_axi_awburst(writer_1_M_AXI_AWBURST),
        .m_axi_awcache(writer_1_M_AXI_AWCACHE),
        .m_axi_awid(writer_1_M_AXI_AWID),
        .m_axi_awlen(writer_1_M_AXI_AWLEN),
        .m_axi_awready(writer_1_M_AXI_AWREADY),
        .m_axi_awsize(writer_1_M_AXI_AWSIZE),
        .m_axi_awvalid(writer_1_M_AXI_AWVALID),
        .m_axi_bready(writer_1_M_AXI_BREADY),
        .m_axi_bvalid(writer_1_M_AXI_BVALID),
        .m_axi_wdata(writer_1_M_AXI_WDATA),
        .m_axi_wid(writer_1_M_AXI_WID),
        .m_axi_wlast(writer_1_M_AXI_WLAST),
        .m_axi_wready(writer_1_M_AXI_WREADY),
        .m_axi_wstrb(writer_1_M_AXI_WSTRB),
        .m_axi_wvalid(writer_1_M_AXI_WVALID),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,writer_0_sts_data}),
        .s_axis_tvalid(slice_2_dout));
  system_xlconcat_0_0 xlconcat_0
       (.In0(c_counter_binary_0_Q[31:0]),
        .In1(axis_combiner_0_m_axis_tdata),
        .dout(xlconcat_0_dout));
  system_xlconcat_2_0 xlconcat_2
       (.In0(1'b0),
        .In1(slice_2_dout),
        .In2(slice_3_dout),
        .In3(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .dout(xlconcat_2_dout));
endmodule

module system_configuration_imp_1T0V4NT
   (S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn,
    dout,
    dout1,
    dout2,
    dout3);
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;
  output [0:0]dout;
  output [0:0]dout1;
  output [1023:0]dout2;
  output [1023:0]dout3;

  wire [4095:0]cfg_0_cfg_data;
  wire pll_0_clk_out1;
  wire [1023:0]port_slicer_0_dout;
  wire [1023:0]port_slicer_1_dout;
  wire [31:0]ps_0_axi_periph_M00_AXI_ARADDR;
  wire ps_0_axi_periph_M00_AXI_ARREADY;
  wire ps_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_AWADDR;
  wire ps_0_axi_periph_M00_AXI_AWREADY;
  wire ps_0_axi_periph_M00_AXI_AWVALID;
  wire ps_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_BRESP;
  wire ps_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_RDATA;
  wire ps_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_RRESP;
  wire ps_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_WDATA;
  wire ps_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps_0_axi_periph_M00_AXI_WSTRB;
  wire ps_0_axi_periph_M00_AXI_WVALID;
  wire rst_0_peripheral_aresetn;
  wire [0:0]slice_2_dout;
  wire [0:0]slice_3_dout;

  assign S_AXI_arready = ps_0_axi_periph_M00_AXI_ARREADY;
  assign S_AXI_awready = ps_0_axi_periph_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps_0_axi_periph_M00_AXI_BRESP;
  assign S_AXI_bvalid = ps_0_axi_periph_M00_AXI_BVALID;
  assign S_AXI_rdata[31:0] = ps_0_axi_periph_M00_AXI_RDATA;
  assign S_AXI_rresp[1:0] = ps_0_axi_periph_M00_AXI_RRESP;
  assign S_AXI_rvalid = ps_0_axi_periph_M00_AXI_RVALID;
  assign S_AXI_wready = ps_0_axi_periph_M00_AXI_WREADY;
  assign dout[0] = slice_3_dout;
  assign dout1[0] = slice_2_dout;
  assign dout2[1023:0] = port_slicer_0_dout;
  assign dout3[1023:0] = port_slicer_1_dout;
  assign pll_0_clk_out1 = aclk;
  assign ps_0_axi_periph_M00_AXI_ARADDR = S_AXI_araddr[31:0];
  assign ps_0_axi_periph_M00_AXI_ARVALID = S_AXI_arvalid;
  assign ps_0_axi_periph_M00_AXI_AWADDR = S_AXI_awaddr[31:0];
  assign ps_0_axi_periph_M00_AXI_AWVALID = S_AXI_awvalid;
  assign ps_0_axi_periph_M00_AXI_BREADY = S_AXI_bready;
  assign ps_0_axi_periph_M00_AXI_RREADY = S_AXI_rready;
  assign ps_0_axi_periph_M00_AXI_WDATA = S_AXI_wdata[31:0];
  assign ps_0_axi_periph_M00_AXI_WSTRB = S_AXI_wstrb[3:0];
  assign ps_0_axi_periph_M00_AXI_WVALID = S_AXI_wvalid;
  assign rst_0_peripheral_aresetn = aresetn;
  system_cfg_0_0 cfg_0
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .cfg_data(cfg_0_cfg_data),
        .s_axi_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps_0_axi_periph_M00_AXI_WVALID));
  system_slice_2_0 filter_reset
       (.din(cfg_0_cfg_data),
        .dout(slice_2_dout));
  system_port_slicer_0_0 port_slicer_0
       (.din(cfg_0_cfg_data),
        .dout(port_slicer_0_dout));
  system_port_slicer_0_1 port_slicer_1
       (.din(cfg_0_cfg_data),
        .dout(port_slicer_1_dout));
  system_slice_3_0 writer_reset
       (.din(cfg_0_cfg_data),
        .dout(slice_3_dout));
endmodule

module system_ps_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps_0_axi_periph_ACLK_net;
  wire ps_0_axi_periph_ARESETN_net;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_BID;
  wire ps_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_BRESP;
  wire ps_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_RID;
  wire ps_0_axi_periph_to_s00_couplers_RLAST;
  wire ps_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_RRESP;
  wire ps_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_WID;
  wire ps_0_axi_periph_to_s00_couplers_WLAST;
  wire ps_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ps_0_axi_periph_ARADDR;
  wire s00_couplers_to_ps_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_ps_0_axi_periph_AWADDR;
  wire s00_couplers_to_ps_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps_0_axi_periph_BRESP;
  wire s00_couplers_to_ps_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps_0_axi_periph_RDATA;
  wire s00_couplers_to_ps_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps_0_axi_periph_RRESP;
  wire s00_couplers_to_ps_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps_0_axi_periph_WDATA;
  wire s00_couplers_to_ps_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ps_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ps_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps_0_axi_periph_to_s00_couplers_WREADY;
  assign ps_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1OVXGTK s00_couplers
       (.M_ACLK(ps_0_axi_periph_ACLK_net),
        .M_ARESETN(ps_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps_0_axi_periph_to_s00_couplers_WVALID));
endmodule
