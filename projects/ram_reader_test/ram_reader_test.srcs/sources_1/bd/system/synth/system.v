//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Thu Jun 24 13:36:22 2021
//Host        : TotallyNotAHilbertMatrix running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
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

  wire [0:0]Net;
  wire adc_clk_n_i_1;
  wire adc_clk_p_i_1;
  wire [31:0]axis_ram_reader_0_m_axi_ARADDR;
  wire [1:0]axis_ram_reader_0_m_axi_ARBURST;
  wire [3:0]axis_ram_reader_0_m_axi_ARCACHE;
  wire [3:0]axis_ram_reader_0_m_axi_ARLEN;
  wire axis_ram_reader_0_m_axi_ARREADY;
  wire [2:0]axis_ram_reader_0_m_axi_ARSIZE;
  wire axis_ram_reader_0_m_axi_ARVALID;
  wire [63:0]axis_ram_reader_0_m_axi_RDATA;
  wire [5:0]axis_ram_reader_0_m_axi_RID;
  wire axis_ram_reader_0_m_axi_RREADY;
  wire [1:0]axis_ram_reader_0_m_axi_RRESP;
  wire [5:0]axis_ram_reader_0_m_axi_arid;
  wire pll_0_clk_out1;
  wire pll_0_locked;
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
  wire ps_0_S_AXI_HP0_RLAST;
  wire ps_0_S_AXI_HP0_RVALID;
  wire [7:0]xlconcat_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign adc_clk_n_i_1 = adc_clk_n_i;
  assign adc_clk_p_i_1 = adc_clk_p_i;
  assign led_o[7:0] = xlconcat_0_dout;
  system_axis_ram_reader_0_0 axis_ram_reader_0
       (.aclk(pll_0_clk_out1),
        .aresetn(Net),
        .cfg_data(xlconstant_1_dout),
        .m_axi_araddr(axis_ram_reader_0_m_axi_ARADDR),
        .m_axi_arburst(axis_ram_reader_0_m_axi_ARBURST),
        .m_axi_arcache(axis_ram_reader_0_m_axi_ARCACHE),
        .m_axi_arid(axis_ram_reader_0_m_axi_arid),
        .m_axi_arlen(axis_ram_reader_0_m_axi_ARLEN),
        .m_axi_arready(axis_ram_reader_0_m_axi_ARREADY),
        .m_axi_arsize(axis_ram_reader_0_m_axi_ARSIZE),
        .m_axi_arvalid(axis_ram_reader_0_m_axi_ARVALID),
        .m_axi_rdata(axis_ram_reader_0_m_axi_RDATA),
        .m_axi_rid(axis_ram_reader_0_m_axi_RID),
        .m_axi_rlast(ps_0_S_AXI_HP0_RLAST),
        .m_axi_rready(axis_ram_reader_0_m_axi_RREADY),
        .m_axi_rresp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axis_ram_reader_0_m_axi_RRESP}),
        .m_axi_rvalid(ps_0_S_AXI_HP0_RVALID),
        .m_axis_tready(1'b1));
  system_pll_0_2 pll_0
       (.clk_in1_n(adc_clk_n_i_1),
        .clk_in1_p(adc_clk_p_i_1),
        .clk_out1(pll_0_clk_out1),
        .locked(pll_0_locked));
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
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SS_I(1'b0),
        .S_AXI_HP0_ACLK(pll_0_clk_out1),
        .S_AXI_HP0_ARADDR(axis_ram_reader_0_m_axi_ARADDR),
        .S_AXI_HP0_ARBURST(axis_ram_reader_0_m_axi_ARBURST),
        .S_AXI_HP0_ARCACHE(axis_ram_reader_0_m_axi_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(axis_ram_reader_0_m_axi_ARLEN),
        .S_AXI_HP0_ARLOCK({1'b0,1'b0}),
        .S_AXI_HP0_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARREADY(axis_ram_reader_0_m_axi_ARREADY),
        .S_AXI_HP0_ARSIZE(axis_ram_reader_0_m_axi_ARSIZE),
        .S_AXI_HP0_ARVALID(axis_ram_reader_0_m_axi_ARVALID),
        .S_AXI_HP0_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWBURST({1'b0,1'b1}),
        .S_AXI_HP0_AWCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLOCK({1'b0,1'b0}),
        .S_AXI_HP0_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_HP0_AWVALID(1'b0),
        .S_AXI_HP0_BREADY(1'b0),
        .S_AXI_HP0_RDATA(axis_ram_reader_0_m_axi_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axis_ram_reader_0_m_axi_RID),
        .S_AXI_HP0_RLAST(ps_0_S_AXI_HP0_RLAST),
        .S_AXI_HP0_RREADY(axis_ram_reader_0_m_axi_RREADY),
        .S_AXI_HP0_RRESP(axis_ram_reader_0_m_axi_RRESP),
        .S_AXI_HP0_RVALID(ps_0_S_AXI_HP0_RVALID),
        .S_AXI_HP0_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(1'b0),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .S_AXI_HP0_WVALID(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_rst_0_2 rst_0
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(pll_0_clk_out1));
  system_xlconcat_0_0 xlconcat_0
       (.In0(ps_0_S_AXI_HP0_RVALID),
        .In1(ps_0_S_AXI_HP0_RLAST),
        .In2(axis_ram_reader_0_m_axi_arid),
        .dout(xlconcat_0_dout));
  system_xlconstant_0_0 xlconstant_0
       (.dout(Net));
  system_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
