// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 12 13:13:51 2021
// Host        : ip-172-31-34-244.ec2.internal running 64-bit Amazon Linux release 2 (Karoo)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_dpa_hub_0_sim_netlist.v
// Design      : cl_dpa_hub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF
   (axi_arready_reg_0,
    axi_wready_reg_0,
    axi_awready_reg_0,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rvalid,
    trace_resetn_0,
    E,
    sw_trace_data,
    \s_axi_awaddr[3] ,
    trace_clk,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    trace_resetn,
    s_axi_rready,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata);
  output axi_arready_reg_0;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output s_axi_bvalid;
  output [0:0]s_axi_rdata;
  output s_axi_rvalid;
  output trace_resetn_0;
  output [0:0]E;
  output sw_trace_data;
  output \s_axi_awaddr[3] ;
  input trace_clk;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input trace_resetn;
  input s_axi_rready;
  input [1:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;
  input [0:0]s_axi_wdata;

  wire [0:0]E;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire p_0_in;
  wire [1:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire \s_axi_awaddr[3] ;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [0:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [0:0]slv_reg_addr;
  wire slv_reg_rden;
  wire slv_reg_wren__1;
  wire sw_trace_data;
  wire trace_clk;
  wire trace_resetn;
  wire trace_resetn_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(trace_resetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \axi_rdata[30]_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s_axi_rdata),
        .O(\axi_rdata[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(trace_clk),
        .CE(1'b1),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    sw_reset_i_1
       (.I0(trace_resetn),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(axi_wready_reg_0),
        .I4(axi_awready_reg_0),
        .O(trace_resetn_0));
  LUT6 #(
    .INIT(64'hFBD9000000000000)) 
    sw_reset_i_2
       (.I0(slv_reg_rden),
        .I1(slv_reg_wren__1),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_araddr[1]),
        .I4(slv_reg_addr),
        .I5(s_axi_wdata),
        .O(\s_axi_awaddr[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    sw_reset_i_3
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    sw_reset_i_4
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .O(slv_reg_wren__1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3F800080)) 
    sw_reset_i_5
       (.I0(s_axi_araddr[0]),
        .I1(axi_arready_reg_0),
        .I2(s_axi_arvalid),
        .I3(slv_reg_wren__1),
        .I4(s_axi_awaddr[0]),
        .O(slv_reg_addr));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sw_trace_data[15]_i_1 
       (.I0(sw_trace_data),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(trace_resetn),
        .O(E));
  LUT6 #(
    .INIT(64'h0000050000300530)) 
    sw_trace_write_i_1
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_araddr[0]),
        .I2(slv_reg_rden),
        .I3(slv_reg_wren__1),
        .I4(s_axi_awaddr[1]),
        .I5(s_axi_araddr[1]),
        .O(sw_trace_data));
endmodule

(* CHECK_LICENSE_TYPE = "cl_dpa_hub_0,trace_integrator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "trace_integrator,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (mon_clk,
    mon_resetn,
    trace_clk,
    trace_resetn,
    trace_rst,
    out_valid,
    out_ready,
    out_data,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    trace0_counter,
    trace0_read,
    trace0_event,
    trace0_data,
    trace0_counter_overflow,
    trace0_valid,
    trace1_counter,
    trace1_read,
    trace1_event,
    trace1_data,
    trace1_counter_overflow,
    trace1_valid,
    trace2_counter,
    trace2_read,
    trace2_event,
    trace2_data,
    trace2_counter_overflow,
    trace2_valid,
    trace3_counter,
    trace3_read,
    trace3_event,
    trace3_data,
    trace3_counter_overflow,
    trace3_valid,
    trace4_counter,
    trace4_read,
    trace4_event,
    trace4_data,
    trace4_counter_overflow,
    trace4_valid,
    trace5_counter,
    trace5_read,
    trace5_event,
    trace5_data,
    trace5_counter_overflow,
    trace5_valid,
    trace6_counter,
    trace6_read,
    trace6_event,
    trace6_data,
    trace6_counter_overflow,
    trace6_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_clk, ASSOCIATED_RESET mon_resetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *) input mon_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mon_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input mon_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 trace_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_clk, ASSOCIATED_RESET trace_resetn:trace_rst, ASSOCIATED_BUSIF S_AXI:M_AXIS:S_AXIS, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *) input trace_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input trace_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output trace_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input out_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]out_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cd_extra_b_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter" *) output [44:0]trace0_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 read" *) output trace0_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 event" *) input trace0_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 data" *) input [63:0]trace0_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter_overflow" *) output trace0_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 valid" *) input trace0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter" *) output [44:0]trace1_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 read" *) output trace1_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 event" *) input trace1_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 data" *) input [63:0]trace1_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter_overflow" *) output trace1_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 valid" *) input trace1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter" *) output [44:0]trace2_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 read" *) output trace2_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 event" *) input trace2_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 data" *) input [63:0]trace2_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter_overflow" *) output trace2_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 valid" *) input trace2_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 counter" *) output [44:0]trace3_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 read" *) output trace3_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 event" *) input trace3_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 data" *) input [63:0]trace3_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 counter_overflow" *) output trace3_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 valid" *) input trace3_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 counter" *) output [44:0]trace4_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 read" *) output trace4_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 event" *) input trace4_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 data" *) input [63:0]trace4_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 counter_overflow" *) output trace4_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 valid" *) input trace4_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 counter" *) output [44:0]trace5_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 read" *) output trace5_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 event" *) input trace5_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 data" *) input [63:0]trace5_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 counter_overflow" *) output trace5_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_5 valid" *) input trace5_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 counter" *) output [44:0]trace6_counter;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 read" *) output trace6_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 event" *) input trace6_event;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 data" *) input [63:0]trace6_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 counter_overflow" *) output trace6_counter_overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_6 valid" *) input trace6_valid;

  wire \<const0> ;
  wire mon_clk;
  wire mon_resetn;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [44:0]trace0_counter;
  wire trace0_counter_overflow;
  wire [63:0]trace0_data;
  wire trace0_read;
  wire trace0_valid;
  wire [44:0]trace1_counter;
  wire trace1_counter_overflow;
  wire [63:0]trace1_data;
  wire trace1_read;
  wire trace1_valid;
  wire [44:0]trace2_counter;
  wire trace2_counter_overflow;
  wire [63:0]trace2_data;
  wire trace2_read;
  wire trace2_valid;
  wire [44:0]trace3_counter;
  wire trace3_counter_overflow;
  wire [63:0]trace3_data;
  wire trace3_read;
  wire trace3_valid;
  wire [44:0]trace4_counter;
  wire trace4_counter_overflow;
  wire [63:0]trace4_data;
  wire trace4_read;
  wire trace4_valid;
  wire [44:0]trace5_counter;
  wire trace5_counter_overflow;
  wire [63:0]trace5_data;
  wire trace5_read;
  wire trace5_valid;
  wire [44:0]trace6_counter;
  wire trace6_counter_overflow;
  wire [63:0]trace6_data;
  wire trace6_read;
  wire trace6_valid;
  wire trace_clk;
  wire trace_resetn;
  wire trace_rst;
  wire NLW_inst_pass_ready_UNCONNECTED;
  wire NLW_inst_trace10_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace10_read_UNCONNECTED;
  wire NLW_inst_trace11_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace11_read_UNCONNECTED;
  wire NLW_inst_trace12_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace12_read_UNCONNECTED;
  wire NLW_inst_trace13_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace13_read_UNCONNECTED;
  wire NLW_inst_trace14_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace14_read_UNCONNECTED;
  wire NLW_inst_trace15_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace15_read_UNCONNECTED;
  wire NLW_inst_trace16_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace16_read_UNCONNECTED;
  wire NLW_inst_trace17_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace17_read_UNCONNECTED;
  wire NLW_inst_trace18_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace18_read_UNCONNECTED;
  wire NLW_inst_trace19_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace19_read_UNCONNECTED;
  wire NLW_inst_trace20_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace20_read_UNCONNECTED;
  wire NLW_inst_trace21_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace21_read_UNCONNECTED;
  wire NLW_inst_trace22_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace22_read_UNCONNECTED;
  wire NLW_inst_trace23_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace23_read_UNCONNECTED;
  wire NLW_inst_trace24_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace24_read_UNCONNECTED;
  wire NLW_inst_trace25_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace25_read_UNCONNECTED;
  wire NLW_inst_trace26_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace26_read_UNCONNECTED;
  wire NLW_inst_trace27_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace27_read_UNCONNECTED;
  wire NLW_inst_trace28_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace28_read_UNCONNECTED;
  wire NLW_inst_trace29_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace29_read_UNCONNECTED;
  wire NLW_inst_trace30_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace30_read_UNCONNECTED;
  wire NLW_inst_trace31_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace31_read_UNCONNECTED;
  wire NLW_inst_trace32_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace32_read_UNCONNECTED;
  wire NLW_inst_trace33_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace33_read_UNCONNECTED;
  wire NLW_inst_trace34_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace34_read_UNCONNECTED;
  wire NLW_inst_trace35_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace35_read_UNCONNECTED;
  wire NLW_inst_trace36_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace36_read_UNCONNECTED;
  wire NLW_inst_trace37_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace37_read_UNCONNECTED;
  wire NLW_inst_trace38_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace38_read_UNCONNECTED;
  wire NLW_inst_trace39_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace39_read_UNCONNECTED;
  wire NLW_inst_trace40_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace40_read_UNCONNECTED;
  wire NLW_inst_trace41_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace41_read_UNCONNECTED;
  wire NLW_inst_trace42_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace42_read_UNCONNECTED;
  wire NLW_inst_trace43_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace43_read_UNCONNECTED;
  wire NLW_inst_trace44_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace44_read_UNCONNECTED;
  wire NLW_inst_trace45_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace45_read_UNCONNECTED;
  wire NLW_inst_trace46_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace46_read_UNCONNECTED;
  wire NLW_inst_trace47_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace47_read_UNCONNECTED;
  wire NLW_inst_trace48_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace48_read_UNCONNECTED;
  wire NLW_inst_trace49_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace49_read_UNCONNECTED;
  wire NLW_inst_trace50_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace50_read_UNCONNECTED;
  wire NLW_inst_trace51_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace51_read_UNCONNECTED;
  wire NLW_inst_trace52_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace52_read_UNCONNECTED;
  wire NLW_inst_trace53_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace53_read_UNCONNECTED;
  wire NLW_inst_trace54_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace54_read_UNCONNECTED;
  wire NLW_inst_trace55_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace55_read_UNCONNECTED;
  wire NLW_inst_trace56_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace56_read_UNCONNECTED;
  wire NLW_inst_trace57_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace57_read_UNCONNECTED;
  wire NLW_inst_trace58_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace58_read_UNCONNECTED;
  wire NLW_inst_trace59_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace59_read_UNCONNECTED;
  wire NLW_inst_trace60_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace60_read_UNCONNECTED;
  wire NLW_inst_trace61_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace61_read_UNCONNECTED;
  wire NLW_inst_trace62_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace62_read_UNCONNECTED;
  wire NLW_inst_trace7_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace7_read_UNCONNECTED;
  wire NLW_inst_trace8_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace8_read_UNCONNECTED;
  wire NLW_inst_trace9_counter_overflow_UNCONNECTED;
  wire NLW_inst_trace9_read_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [31:1]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [44:0]NLW_inst_trace10_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace11_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace12_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace13_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace14_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace15_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace16_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace17_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace18_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace19_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace20_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace21_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace22_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace23_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace24_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace25_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace26_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace27_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace28_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace29_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace30_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace31_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace32_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace33_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace34_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace35_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace36_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace37_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace38_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace39_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace40_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace41_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace42_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace43_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace44_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace45_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace46_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace47_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace48_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace49_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace50_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace51_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace52_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace53_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace54_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace55_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace56_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace57_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace58_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace59_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace60_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace61_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace62_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace7_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace8_counter_UNCONNECTED;
  wire [44:0]NLW_inst_trace9_counter_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28:25] = \^s_axi_rdata [28:25];
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \^s_axi_rdata [23];
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \^s_axi_rdata [21];
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19:16] = \^s_axi_rdata [19:16];
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3:2] = \^s_axi_rdata [3:2];
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \^s_axi_rdata [0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* EMULATION = "1'b0" *) 
  (* EXT_MON_RST = "1" *) 
  (* EXT_TRACE_RST = "1" *) 
  (* NUM_TRACE_PORTS = "7" *) 
  (* USE_PASSTHROUGH = "1'b0" *) 
  (* _NUM_LOG_PORTS = "8" *) 
  (* _NUM_TRACE_PORTS = "8" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator inst
       (.mon_clk(mon_clk),
        .mon_resetn(mon_resetn),
        .out_data(out_data),
        .out_ready(out_ready),
        .out_valid(out_valid),
        .pass_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pass_ready(NLW_inst_pass_ready_UNCONNECTED),
        .pass_valid(1'b0),
        .s_axi_araddr({s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_inst_s_axi_rdata_UNCONNECTED[31],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[15:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .trace0_counter(trace0_counter),
        .trace0_counter_overflow(trace0_counter_overflow),
        .trace0_data(trace0_data),
        .trace0_event(1'b0),
        .trace0_read(trace0_read),
        .trace0_valid(trace0_valid),
        .trace10_counter(NLW_inst_trace10_counter_UNCONNECTED[44:0]),
        .trace10_counter_overflow(NLW_inst_trace10_counter_overflow_UNCONNECTED),
        .trace10_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace10_event(1'b0),
        .trace10_read(NLW_inst_trace10_read_UNCONNECTED),
        .trace10_valid(1'b0),
        .trace11_counter(NLW_inst_trace11_counter_UNCONNECTED[44:0]),
        .trace11_counter_overflow(NLW_inst_trace11_counter_overflow_UNCONNECTED),
        .trace11_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace11_event(1'b0),
        .trace11_read(NLW_inst_trace11_read_UNCONNECTED),
        .trace11_valid(1'b0),
        .trace12_counter(NLW_inst_trace12_counter_UNCONNECTED[44:0]),
        .trace12_counter_overflow(NLW_inst_trace12_counter_overflow_UNCONNECTED),
        .trace12_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace12_event(1'b0),
        .trace12_read(NLW_inst_trace12_read_UNCONNECTED),
        .trace12_valid(1'b0),
        .trace13_counter(NLW_inst_trace13_counter_UNCONNECTED[44:0]),
        .trace13_counter_overflow(NLW_inst_trace13_counter_overflow_UNCONNECTED),
        .trace13_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace13_event(1'b0),
        .trace13_read(NLW_inst_trace13_read_UNCONNECTED),
        .trace13_valid(1'b0),
        .trace14_counter(NLW_inst_trace14_counter_UNCONNECTED[44:0]),
        .trace14_counter_overflow(NLW_inst_trace14_counter_overflow_UNCONNECTED),
        .trace14_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace14_event(1'b0),
        .trace14_read(NLW_inst_trace14_read_UNCONNECTED),
        .trace14_valid(1'b0),
        .trace15_counter(NLW_inst_trace15_counter_UNCONNECTED[44:0]),
        .trace15_counter_overflow(NLW_inst_trace15_counter_overflow_UNCONNECTED),
        .trace15_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace15_event(1'b0),
        .trace15_read(NLW_inst_trace15_read_UNCONNECTED),
        .trace15_valid(1'b0),
        .trace16_counter(NLW_inst_trace16_counter_UNCONNECTED[44:0]),
        .trace16_counter_overflow(NLW_inst_trace16_counter_overflow_UNCONNECTED),
        .trace16_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace16_event(1'b0),
        .trace16_read(NLW_inst_trace16_read_UNCONNECTED),
        .trace16_valid(1'b0),
        .trace17_counter(NLW_inst_trace17_counter_UNCONNECTED[44:0]),
        .trace17_counter_overflow(NLW_inst_trace17_counter_overflow_UNCONNECTED),
        .trace17_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace17_event(1'b0),
        .trace17_read(NLW_inst_trace17_read_UNCONNECTED),
        .trace17_valid(1'b0),
        .trace18_counter(NLW_inst_trace18_counter_UNCONNECTED[44:0]),
        .trace18_counter_overflow(NLW_inst_trace18_counter_overflow_UNCONNECTED),
        .trace18_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace18_event(1'b0),
        .trace18_read(NLW_inst_trace18_read_UNCONNECTED),
        .trace18_valid(1'b0),
        .trace19_counter(NLW_inst_trace19_counter_UNCONNECTED[44:0]),
        .trace19_counter_overflow(NLW_inst_trace19_counter_overflow_UNCONNECTED),
        .trace19_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace19_event(1'b0),
        .trace19_read(NLW_inst_trace19_read_UNCONNECTED),
        .trace19_valid(1'b0),
        .trace1_counter(trace1_counter),
        .trace1_counter_overflow(trace1_counter_overflow),
        .trace1_data(trace1_data),
        .trace1_event(1'b0),
        .trace1_read(trace1_read),
        .trace1_valid(trace1_valid),
        .trace20_counter(NLW_inst_trace20_counter_UNCONNECTED[44:0]),
        .trace20_counter_overflow(NLW_inst_trace20_counter_overflow_UNCONNECTED),
        .trace20_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace20_event(1'b0),
        .trace20_read(NLW_inst_trace20_read_UNCONNECTED),
        .trace20_valid(1'b0),
        .trace21_counter(NLW_inst_trace21_counter_UNCONNECTED[44:0]),
        .trace21_counter_overflow(NLW_inst_trace21_counter_overflow_UNCONNECTED),
        .trace21_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace21_event(1'b0),
        .trace21_read(NLW_inst_trace21_read_UNCONNECTED),
        .trace21_valid(1'b0),
        .trace22_counter(NLW_inst_trace22_counter_UNCONNECTED[44:0]),
        .trace22_counter_overflow(NLW_inst_trace22_counter_overflow_UNCONNECTED),
        .trace22_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace22_event(1'b0),
        .trace22_read(NLW_inst_trace22_read_UNCONNECTED),
        .trace22_valid(1'b0),
        .trace23_counter(NLW_inst_trace23_counter_UNCONNECTED[44:0]),
        .trace23_counter_overflow(NLW_inst_trace23_counter_overflow_UNCONNECTED),
        .trace23_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace23_event(1'b0),
        .trace23_read(NLW_inst_trace23_read_UNCONNECTED),
        .trace23_valid(1'b0),
        .trace24_counter(NLW_inst_trace24_counter_UNCONNECTED[44:0]),
        .trace24_counter_overflow(NLW_inst_trace24_counter_overflow_UNCONNECTED),
        .trace24_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace24_event(1'b0),
        .trace24_read(NLW_inst_trace24_read_UNCONNECTED),
        .trace24_valid(1'b0),
        .trace25_counter(NLW_inst_trace25_counter_UNCONNECTED[44:0]),
        .trace25_counter_overflow(NLW_inst_trace25_counter_overflow_UNCONNECTED),
        .trace25_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace25_event(1'b0),
        .trace25_read(NLW_inst_trace25_read_UNCONNECTED),
        .trace25_valid(1'b0),
        .trace26_counter(NLW_inst_trace26_counter_UNCONNECTED[44:0]),
        .trace26_counter_overflow(NLW_inst_trace26_counter_overflow_UNCONNECTED),
        .trace26_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace26_event(1'b0),
        .trace26_read(NLW_inst_trace26_read_UNCONNECTED),
        .trace26_valid(1'b0),
        .trace27_counter(NLW_inst_trace27_counter_UNCONNECTED[44:0]),
        .trace27_counter_overflow(NLW_inst_trace27_counter_overflow_UNCONNECTED),
        .trace27_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace27_event(1'b0),
        .trace27_read(NLW_inst_trace27_read_UNCONNECTED),
        .trace27_valid(1'b0),
        .trace28_counter(NLW_inst_trace28_counter_UNCONNECTED[44:0]),
        .trace28_counter_overflow(NLW_inst_trace28_counter_overflow_UNCONNECTED),
        .trace28_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace28_event(1'b0),
        .trace28_read(NLW_inst_trace28_read_UNCONNECTED),
        .trace28_valid(1'b0),
        .trace29_counter(NLW_inst_trace29_counter_UNCONNECTED[44:0]),
        .trace29_counter_overflow(NLW_inst_trace29_counter_overflow_UNCONNECTED),
        .trace29_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace29_event(1'b0),
        .trace29_read(NLW_inst_trace29_read_UNCONNECTED),
        .trace29_valid(1'b0),
        .trace2_counter(trace2_counter),
        .trace2_counter_overflow(trace2_counter_overflow),
        .trace2_data(trace2_data),
        .trace2_event(1'b0),
        .trace2_read(trace2_read),
        .trace2_valid(trace2_valid),
        .trace30_counter(NLW_inst_trace30_counter_UNCONNECTED[44:0]),
        .trace30_counter_overflow(NLW_inst_trace30_counter_overflow_UNCONNECTED),
        .trace30_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace30_event(1'b0),
        .trace30_read(NLW_inst_trace30_read_UNCONNECTED),
        .trace30_valid(1'b0),
        .trace31_counter(NLW_inst_trace31_counter_UNCONNECTED[44:0]),
        .trace31_counter_overflow(NLW_inst_trace31_counter_overflow_UNCONNECTED),
        .trace31_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace31_event(1'b0),
        .trace31_read(NLW_inst_trace31_read_UNCONNECTED),
        .trace31_valid(1'b0),
        .trace32_counter(NLW_inst_trace32_counter_UNCONNECTED[44:0]),
        .trace32_counter_overflow(NLW_inst_trace32_counter_overflow_UNCONNECTED),
        .trace32_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace32_event(1'b0),
        .trace32_read(NLW_inst_trace32_read_UNCONNECTED),
        .trace32_valid(1'b0),
        .trace33_counter(NLW_inst_trace33_counter_UNCONNECTED[44:0]),
        .trace33_counter_overflow(NLW_inst_trace33_counter_overflow_UNCONNECTED),
        .trace33_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace33_event(1'b0),
        .trace33_read(NLW_inst_trace33_read_UNCONNECTED),
        .trace33_valid(1'b0),
        .trace34_counter(NLW_inst_trace34_counter_UNCONNECTED[44:0]),
        .trace34_counter_overflow(NLW_inst_trace34_counter_overflow_UNCONNECTED),
        .trace34_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace34_event(1'b0),
        .trace34_read(NLW_inst_trace34_read_UNCONNECTED),
        .trace34_valid(1'b0),
        .trace35_counter(NLW_inst_trace35_counter_UNCONNECTED[44:0]),
        .trace35_counter_overflow(NLW_inst_trace35_counter_overflow_UNCONNECTED),
        .trace35_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace35_event(1'b0),
        .trace35_read(NLW_inst_trace35_read_UNCONNECTED),
        .trace35_valid(1'b0),
        .trace36_counter(NLW_inst_trace36_counter_UNCONNECTED[44:0]),
        .trace36_counter_overflow(NLW_inst_trace36_counter_overflow_UNCONNECTED),
        .trace36_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace36_event(1'b0),
        .trace36_read(NLW_inst_trace36_read_UNCONNECTED),
        .trace36_valid(1'b0),
        .trace37_counter(NLW_inst_trace37_counter_UNCONNECTED[44:0]),
        .trace37_counter_overflow(NLW_inst_trace37_counter_overflow_UNCONNECTED),
        .trace37_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace37_event(1'b0),
        .trace37_read(NLW_inst_trace37_read_UNCONNECTED),
        .trace37_valid(1'b0),
        .trace38_counter(NLW_inst_trace38_counter_UNCONNECTED[44:0]),
        .trace38_counter_overflow(NLW_inst_trace38_counter_overflow_UNCONNECTED),
        .trace38_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace38_event(1'b0),
        .trace38_read(NLW_inst_trace38_read_UNCONNECTED),
        .trace38_valid(1'b0),
        .trace39_counter(NLW_inst_trace39_counter_UNCONNECTED[44:0]),
        .trace39_counter_overflow(NLW_inst_trace39_counter_overflow_UNCONNECTED),
        .trace39_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace39_event(1'b0),
        .trace39_read(NLW_inst_trace39_read_UNCONNECTED),
        .trace39_valid(1'b0),
        .trace3_counter(trace3_counter),
        .trace3_counter_overflow(trace3_counter_overflow),
        .trace3_data(trace3_data),
        .trace3_event(1'b0),
        .trace3_read(trace3_read),
        .trace3_valid(trace3_valid),
        .trace40_counter(NLW_inst_trace40_counter_UNCONNECTED[44:0]),
        .trace40_counter_overflow(NLW_inst_trace40_counter_overflow_UNCONNECTED),
        .trace40_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace40_event(1'b0),
        .trace40_read(NLW_inst_trace40_read_UNCONNECTED),
        .trace40_valid(1'b0),
        .trace41_counter(NLW_inst_trace41_counter_UNCONNECTED[44:0]),
        .trace41_counter_overflow(NLW_inst_trace41_counter_overflow_UNCONNECTED),
        .trace41_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace41_event(1'b0),
        .trace41_read(NLW_inst_trace41_read_UNCONNECTED),
        .trace41_valid(1'b0),
        .trace42_counter(NLW_inst_trace42_counter_UNCONNECTED[44:0]),
        .trace42_counter_overflow(NLW_inst_trace42_counter_overflow_UNCONNECTED),
        .trace42_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace42_event(1'b0),
        .trace42_read(NLW_inst_trace42_read_UNCONNECTED),
        .trace42_valid(1'b0),
        .trace43_counter(NLW_inst_trace43_counter_UNCONNECTED[44:0]),
        .trace43_counter_overflow(NLW_inst_trace43_counter_overflow_UNCONNECTED),
        .trace43_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace43_event(1'b0),
        .trace43_read(NLW_inst_trace43_read_UNCONNECTED),
        .trace43_valid(1'b0),
        .trace44_counter(NLW_inst_trace44_counter_UNCONNECTED[44:0]),
        .trace44_counter_overflow(NLW_inst_trace44_counter_overflow_UNCONNECTED),
        .trace44_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace44_event(1'b0),
        .trace44_read(NLW_inst_trace44_read_UNCONNECTED),
        .trace44_valid(1'b0),
        .trace45_counter(NLW_inst_trace45_counter_UNCONNECTED[44:0]),
        .trace45_counter_overflow(NLW_inst_trace45_counter_overflow_UNCONNECTED),
        .trace45_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace45_event(1'b0),
        .trace45_read(NLW_inst_trace45_read_UNCONNECTED),
        .trace45_valid(1'b0),
        .trace46_counter(NLW_inst_trace46_counter_UNCONNECTED[44:0]),
        .trace46_counter_overflow(NLW_inst_trace46_counter_overflow_UNCONNECTED),
        .trace46_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace46_event(1'b0),
        .trace46_read(NLW_inst_trace46_read_UNCONNECTED),
        .trace46_valid(1'b0),
        .trace47_counter(NLW_inst_trace47_counter_UNCONNECTED[44:0]),
        .trace47_counter_overflow(NLW_inst_trace47_counter_overflow_UNCONNECTED),
        .trace47_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace47_event(1'b0),
        .trace47_read(NLW_inst_trace47_read_UNCONNECTED),
        .trace47_valid(1'b0),
        .trace48_counter(NLW_inst_trace48_counter_UNCONNECTED[44:0]),
        .trace48_counter_overflow(NLW_inst_trace48_counter_overflow_UNCONNECTED),
        .trace48_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace48_event(1'b0),
        .trace48_read(NLW_inst_trace48_read_UNCONNECTED),
        .trace48_valid(1'b0),
        .trace49_counter(NLW_inst_trace49_counter_UNCONNECTED[44:0]),
        .trace49_counter_overflow(NLW_inst_trace49_counter_overflow_UNCONNECTED),
        .trace49_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace49_event(1'b0),
        .trace49_read(NLW_inst_trace49_read_UNCONNECTED),
        .trace49_valid(1'b0),
        .trace4_counter(trace4_counter),
        .trace4_counter_overflow(trace4_counter_overflow),
        .trace4_data(trace4_data),
        .trace4_event(1'b0),
        .trace4_read(trace4_read),
        .trace4_valid(trace4_valid),
        .trace50_counter(NLW_inst_trace50_counter_UNCONNECTED[44:0]),
        .trace50_counter_overflow(NLW_inst_trace50_counter_overflow_UNCONNECTED),
        .trace50_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace50_event(1'b0),
        .trace50_read(NLW_inst_trace50_read_UNCONNECTED),
        .trace50_valid(1'b0),
        .trace51_counter(NLW_inst_trace51_counter_UNCONNECTED[44:0]),
        .trace51_counter_overflow(NLW_inst_trace51_counter_overflow_UNCONNECTED),
        .trace51_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace51_event(1'b0),
        .trace51_read(NLW_inst_trace51_read_UNCONNECTED),
        .trace51_valid(1'b0),
        .trace52_counter(NLW_inst_trace52_counter_UNCONNECTED[44:0]),
        .trace52_counter_overflow(NLW_inst_trace52_counter_overflow_UNCONNECTED),
        .trace52_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace52_event(1'b0),
        .trace52_read(NLW_inst_trace52_read_UNCONNECTED),
        .trace52_valid(1'b0),
        .trace53_counter(NLW_inst_trace53_counter_UNCONNECTED[44:0]),
        .trace53_counter_overflow(NLW_inst_trace53_counter_overflow_UNCONNECTED),
        .trace53_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace53_event(1'b0),
        .trace53_read(NLW_inst_trace53_read_UNCONNECTED),
        .trace53_valid(1'b0),
        .trace54_counter(NLW_inst_trace54_counter_UNCONNECTED[44:0]),
        .trace54_counter_overflow(NLW_inst_trace54_counter_overflow_UNCONNECTED),
        .trace54_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace54_event(1'b0),
        .trace54_read(NLW_inst_trace54_read_UNCONNECTED),
        .trace54_valid(1'b0),
        .trace55_counter(NLW_inst_trace55_counter_UNCONNECTED[44:0]),
        .trace55_counter_overflow(NLW_inst_trace55_counter_overflow_UNCONNECTED),
        .trace55_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace55_event(1'b0),
        .trace55_read(NLW_inst_trace55_read_UNCONNECTED),
        .trace55_valid(1'b0),
        .trace56_counter(NLW_inst_trace56_counter_UNCONNECTED[44:0]),
        .trace56_counter_overflow(NLW_inst_trace56_counter_overflow_UNCONNECTED),
        .trace56_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace56_event(1'b0),
        .trace56_read(NLW_inst_trace56_read_UNCONNECTED),
        .trace56_valid(1'b0),
        .trace57_counter(NLW_inst_trace57_counter_UNCONNECTED[44:0]),
        .trace57_counter_overflow(NLW_inst_trace57_counter_overflow_UNCONNECTED),
        .trace57_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace57_event(1'b0),
        .trace57_read(NLW_inst_trace57_read_UNCONNECTED),
        .trace57_valid(1'b0),
        .trace58_counter(NLW_inst_trace58_counter_UNCONNECTED[44:0]),
        .trace58_counter_overflow(NLW_inst_trace58_counter_overflow_UNCONNECTED),
        .trace58_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace58_event(1'b0),
        .trace58_read(NLW_inst_trace58_read_UNCONNECTED),
        .trace58_valid(1'b0),
        .trace59_counter(NLW_inst_trace59_counter_UNCONNECTED[44:0]),
        .trace59_counter_overflow(NLW_inst_trace59_counter_overflow_UNCONNECTED),
        .trace59_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace59_event(1'b0),
        .trace59_read(NLW_inst_trace59_read_UNCONNECTED),
        .trace59_valid(1'b0),
        .trace5_counter(trace5_counter),
        .trace5_counter_overflow(trace5_counter_overflow),
        .trace5_data(trace5_data),
        .trace5_event(1'b0),
        .trace5_read(trace5_read),
        .trace5_valid(trace5_valid),
        .trace60_counter(NLW_inst_trace60_counter_UNCONNECTED[44:0]),
        .trace60_counter_overflow(NLW_inst_trace60_counter_overflow_UNCONNECTED),
        .trace60_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace60_event(1'b0),
        .trace60_read(NLW_inst_trace60_read_UNCONNECTED),
        .trace60_valid(1'b0),
        .trace61_counter(NLW_inst_trace61_counter_UNCONNECTED[44:0]),
        .trace61_counter_overflow(NLW_inst_trace61_counter_overflow_UNCONNECTED),
        .trace61_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace61_event(1'b0),
        .trace61_read(NLW_inst_trace61_read_UNCONNECTED),
        .trace61_valid(1'b0),
        .trace62_counter(NLW_inst_trace62_counter_UNCONNECTED[44:0]),
        .trace62_counter_overflow(NLW_inst_trace62_counter_overflow_UNCONNECTED),
        .trace62_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace62_event(1'b0),
        .trace62_read(NLW_inst_trace62_read_UNCONNECTED),
        .trace62_valid(1'b0),
        .trace6_counter(trace6_counter),
        .trace6_counter_overflow(trace6_counter_overflow),
        .trace6_data(trace6_data),
        .trace6_event(1'b0),
        .trace6_read(trace6_read),
        .trace6_valid(trace6_valid),
        .trace7_counter(NLW_inst_trace7_counter_UNCONNECTED[44:0]),
        .trace7_counter_overflow(NLW_inst_trace7_counter_overflow_UNCONNECTED),
        .trace7_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace7_event(1'b0),
        .trace7_read(NLW_inst_trace7_read_UNCONNECTED),
        .trace7_valid(1'b0),
        .trace8_counter(NLW_inst_trace8_counter_UNCONNECTED[44:0]),
        .trace8_counter_overflow(NLW_inst_trace8_counter_overflow_UNCONNECTED),
        .trace8_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace8_event(1'b0),
        .trace8_read(NLW_inst_trace8_read_UNCONNECTED),
        .trace8_valid(1'b0),
        .trace9_counter(NLW_inst_trace9_counter_UNCONNECTED[44:0]),
        .trace9_counter_overflow(NLW_inst_trace9_counter_overflow_UNCONNECTED),
        .trace9_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .trace9_event(1'b0),
        .trace9_read(NLW_inst_trace9_read_UNCONNECTED),
        .trace9_valid(1'b0),
        .trace_clk(trace_clk),
        .trace_resetn(trace_resetn),
        .trace_rst(trace_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree
   (wrote0_reg,
    wrote0_reg_0,
    wrote0_reg_1,
    wrote0_reg_2,
    have_data0,
    have_data0_0,
    have_data_reg,
    have_data0_1,
    have_data0_2,
    out_data,
    wrote0_reg_3,
    trace_clk,
    have_data02_out,
    _trace_valid,
    out_ready,
    have_data02_out_3,
    E,
    D,
    \data_i_reg[63] ,
    \data_i_reg[0] ,
    \data_i_reg[63]_0 ,
    \data_i_reg[0]_0 ,
    \data_i_reg[63]_1 ,
    have_data02_out_4);
  output wrote0_reg;
  output wrote0_reg_0;
  output wrote0_reg_1;
  output wrote0_reg_2;
  output have_data0;
  output have_data0_0;
  output have_data_reg;
  output have_data0_1;
  output have_data0_2;
  output [63:0]out_data;
  input wrote0_reg_3;
  input trace_clk;
  input have_data02_out;
  input [7:0]_trace_valid;
  input out_ready;
  input have_data02_out_3;
  input [0:0]E;
  input [63:0]D;
  input [63:0]\data_i_reg[63] ;
  input [0:0]\data_i_reg[0] ;
  input [63:0]\data_i_reg[63]_0 ;
  input [0:0]\data_i_reg[0]_0 ;
  input [63:0]\data_i_reg[63]_1 ;
  input have_data02_out_4;

  wire [63:0]D;
  wire [0:0]E;
  wire [7:0]_trace_valid;
  wire \b2[0].merge_i_n_0 ;
  wire \b2[1].merge_i_n_0 ;
  wire \b2[1].merge_i_n_1 ;
  wire \b2[1].merge_i_n_10 ;
  wire \b2[1].merge_i_n_11 ;
  wire \b2[1].merge_i_n_12 ;
  wire \b2[1].merge_i_n_13 ;
  wire \b2[1].merge_i_n_14 ;
  wire \b2[1].merge_i_n_15 ;
  wire \b2[1].merge_i_n_16 ;
  wire \b2[1].merge_i_n_17 ;
  wire \b2[1].merge_i_n_18 ;
  wire \b2[1].merge_i_n_19 ;
  wire \b2[1].merge_i_n_2 ;
  wire \b2[1].merge_i_n_20 ;
  wire \b2[1].merge_i_n_21 ;
  wire \b2[1].merge_i_n_22 ;
  wire \b2[1].merge_i_n_23 ;
  wire \b2[1].merge_i_n_24 ;
  wire \b2[1].merge_i_n_25 ;
  wire \b2[1].merge_i_n_26 ;
  wire \b2[1].merge_i_n_27 ;
  wire \b2[1].merge_i_n_28 ;
  wire \b2[1].merge_i_n_29 ;
  wire \b2[1].merge_i_n_3 ;
  wire \b2[1].merge_i_n_30 ;
  wire \b2[1].merge_i_n_31 ;
  wire \b2[1].merge_i_n_32 ;
  wire \b2[1].merge_i_n_33 ;
  wire \b2[1].merge_i_n_34 ;
  wire \b2[1].merge_i_n_35 ;
  wire \b2[1].merge_i_n_36 ;
  wire \b2[1].merge_i_n_37 ;
  wire \b2[1].merge_i_n_38 ;
  wire \b2[1].merge_i_n_39 ;
  wire \b2[1].merge_i_n_4 ;
  wire \b2[1].merge_i_n_40 ;
  wire \b2[1].merge_i_n_41 ;
  wire \b2[1].merge_i_n_42 ;
  wire \b2[1].merge_i_n_43 ;
  wire \b2[1].merge_i_n_44 ;
  wire \b2[1].merge_i_n_45 ;
  wire \b2[1].merge_i_n_46 ;
  wire \b2[1].merge_i_n_47 ;
  wire \b2[1].merge_i_n_48 ;
  wire \b2[1].merge_i_n_49 ;
  wire \b2[1].merge_i_n_5 ;
  wire \b2[1].merge_i_n_50 ;
  wire \b2[1].merge_i_n_51 ;
  wire \b2[1].merge_i_n_52 ;
  wire \b2[1].merge_i_n_53 ;
  wire \b2[1].merge_i_n_54 ;
  wire \b2[1].merge_i_n_55 ;
  wire \b2[1].merge_i_n_56 ;
  wire \b2[1].merge_i_n_57 ;
  wire \b2[1].merge_i_n_58 ;
  wire \b2[1].merge_i_n_59 ;
  wire \b2[1].merge_i_n_6 ;
  wire \b2[1].merge_i_n_60 ;
  wire \b2[1].merge_i_n_61 ;
  wire \b2[1].merge_i_n_62 ;
  wire \b2[1].merge_i_n_63 ;
  wire \b2[1].merge_i_n_64 ;
  wire \b2[1].merge_i_n_7 ;
  wire \b2[1].merge_i_n_8 ;
  wire \b2[1].merge_i_n_9 ;
  wire \b2[2].merge_i_n_0 ;
  wire \b2[2].merge_i_n_10 ;
  wire \b2[2].merge_i_n_11 ;
  wire \b2[2].merge_i_n_12 ;
  wire \b2[2].merge_i_n_13 ;
  wire \b2[2].merge_i_n_14 ;
  wire \b2[2].merge_i_n_15 ;
  wire \b2[2].merge_i_n_16 ;
  wire \b2[2].merge_i_n_17 ;
  wire \b2[2].merge_i_n_18 ;
  wire \b2[2].merge_i_n_19 ;
  wire \b2[2].merge_i_n_20 ;
  wire \b2[2].merge_i_n_21 ;
  wire \b2[2].merge_i_n_22 ;
  wire \b2[2].merge_i_n_23 ;
  wire \b2[2].merge_i_n_24 ;
  wire \b2[2].merge_i_n_25 ;
  wire \b2[2].merge_i_n_26 ;
  wire \b2[2].merge_i_n_27 ;
  wire \b2[2].merge_i_n_28 ;
  wire \b2[2].merge_i_n_29 ;
  wire \b2[2].merge_i_n_3 ;
  wire \b2[2].merge_i_n_30 ;
  wire \b2[2].merge_i_n_31 ;
  wire \b2[2].merge_i_n_32 ;
  wire \b2[2].merge_i_n_33 ;
  wire \b2[2].merge_i_n_34 ;
  wire \b2[2].merge_i_n_35 ;
  wire \b2[2].merge_i_n_36 ;
  wire \b2[2].merge_i_n_37 ;
  wire \b2[2].merge_i_n_38 ;
  wire \b2[2].merge_i_n_39 ;
  wire \b2[2].merge_i_n_4 ;
  wire \b2[2].merge_i_n_40 ;
  wire \b2[2].merge_i_n_41 ;
  wire \b2[2].merge_i_n_42 ;
  wire \b2[2].merge_i_n_43 ;
  wire \b2[2].merge_i_n_44 ;
  wire \b2[2].merge_i_n_45 ;
  wire \b2[2].merge_i_n_46 ;
  wire \b2[2].merge_i_n_47 ;
  wire \b2[2].merge_i_n_48 ;
  wire \b2[2].merge_i_n_49 ;
  wire \b2[2].merge_i_n_5 ;
  wire \b2[2].merge_i_n_50 ;
  wire \b2[2].merge_i_n_51 ;
  wire \b2[2].merge_i_n_52 ;
  wire \b2[2].merge_i_n_53 ;
  wire \b2[2].merge_i_n_54 ;
  wire \b2[2].merge_i_n_55 ;
  wire \b2[2].merge_i_n_56 ;
  wire \b2[2].merge_i_n_57 ;
  wire \b2[2].merge_i_n_58 ;
  wire \b2[2].merge_i_n_59 ;
  wire \b2[2].merge_i_n_6 ;
  wire \b2[2].merge_i_n_60 ;
  wire \b2[2].merge_i_n_61 ;
  wire \b2[2].merge_i_n_62 ;
  wire \b2[2].merge_i_n_63 ;
  wire \b2[2].merge_i_n_64 ;
  wire \b2[2].merge_i_n_65 ;
  wire \b2[2].merge_i_n_66 ;
  wire \b2[2].merge_i_n_7 ;
  wire \b2[2].merge_i_n_8 ;
  wire \b2[2].merge_i_n_9 ;
  wire \b2[3].merge_i_n_1 ;
  wire \b2[3].merge_i_n_10 ;
  wire \b2[3].merge_i_n_11 ;
  wire \b2[3].merge_i_n_12 ;
  wire \b2[3].merge_i_n_13 ;
  wire \b2[3].merge_i_n_14 ;
  wire \b2[3].merge_i_n_15 ;
  wire \b2[3].merge_i_n_16 ;
  wire \b2[3].merge_i_n_17 ;
  wire \b2[3].merge_i_n_18 ;
  wire \b2[3].merge_i_n_19 ;
  wire \b2[3].merge_i_n_2 ;
  wire \b2[3].merge_i_n_20 ;
  wire \b2[3].merge_i_n_21 ;
  wire \b2[3].merge_i_n_22 ;
  wire \b2[3].merge_i_n_23 ;
  wire \b2[3].merge_i_n_24 ;
  wire \b2[3].merge_i_n_25 ;
  wire \b2[3].merge_i_n_26 ;
  wire \b2[3].merge_i_n_27 ;
  wire \b2[3].merge_i_n_28 ;
  wire \b2[3].merge_i_n_29 ;
  wire \b2[3].merge_i_n_3 ;
  wire \b2[3].merge_i_n_30 ;
  wire \b2[3].merge_i_n_31 ;
  wire \b2[3].merge_i_n_32 ;
  wire \b2[3].merge_i_n_33 ;
  wire \b2[3].merge_i_n_34 ;
  wire \b2[3].merge_i_n_35 ;
  wire \b2[3].merge_i_n_36 ;
  wire \b2[3].merge_i_n_37 ;
  wire \b2[3].merge_i_n_38 ;
  wire \b2[3].merge_i_n_39 ;
  wire \b2[3].merge_i_n_4 ;
  wire \b2[3].merge_i_n_40 ;
  wire \b2[3].merge_i_n_41 ;
  wire \b2[3].merge_i_n_42 ;
  wire \b2[3].merge_i_n_43 ;
  wire \b2[3].merge_i_n_44 ;
  wire \b2[3].merge_i_n_45 ;
  wire \b2[3].merge_i_n_46 ;
  wire \b2[3].merge_i_n_47 ;
  wire \b2[3].merge_i_n_48 ;
  wire \b2[3].merge_i_n_49 ;
  wire \b2[3].merge_i_n_5 ;
  wire \b2[3].merge_i_n_50 ;
  wire \b2[3].merge_i_n_51 ;
  wire \b2[3].merge_i_n_52 ;
  wire \b2[3].merge_i_n_53 ;
  wire \b2[3].merge_i_n_54 ;
  wire \b2[3].merge_i_n_55 ;
  wire \b2[3].merge_i_n_56 ;
  wire \b2[3].merge_i_n_57 ;
  wire \b2[3].merge_i_n_58 ;
  wire \b2[3].merge_i_n_59 ;
  wire \b2[3].merge_i_n_6 ;
  wire \b2[3].merge_i_n_60 ;
  wire \b2[3].merge_i_n_61 ;
  wire \b2[3].merge_i_n_62 ;
  wire \b2[3].merge_i_n_63 ;
  wire \b2[3].merge_i_n_64 ;
  wire \b2[3].merge_i_n_7 ;
  wire \b2[3].merge_i_n_8 ;
  wire \b2[3].merge_i_n_9 ;
  wire \b2[4].merge_i_n_10 ;
  wire \b2[4].merge_i_n_11 ;
  wire \b2[4].merge_i_n_12 ;
  wire \b2[4].merge_i_n_13 ;
  wire \b2[4].merge_i_n_14 ;
  wire \b2[4].merge_i_n_15 ;
  wire \b2[4].merge_i_n_16 ;
  wire \b2[4].merge_i_n_17 ;
  wire \b2[4].merge_i_n_18 ;
  wire \b2[4].merge_i_n_19 ;
  wire \b2[4].merge_i_n_20 ;
  wire \b2[4].merge_i_n_21 ;
  wire \b2[4].merge_i_n_22 ;
  wire \b2[4].merge_i_n_23 ;
  wire \b2[4].merge_i_n_24 ;
  wire \b2[4].merge_i_n_25 ;
  wire \b2[4].merge_i_n_26 ;
  wire \b2[4].merge_i_n_27 ;
  wire \b2[4].merge_i_n_28 ;
  wire \b2[4].merge_i_n_29 ;
  wire \b2[4].merge_i_n_3 ;
  wire \b2[4].merge_i_n_30 ;
  wire \b2[4].merge_i_n_31 ;
  wire \b2[4].merge_i_n_32 ;
  wire \b2[4].merge_i_n_33 ;
  wire \b2[4].merge_i_n_34 ;
  wire \b2[4].merge_i_n_35 ;
  wire \b2[4].merge_i_n_36 ;
  wire \b2[4].merge_i_n_37 ;
  wire \b2[4].merge_i_n_38 ;
  wire \b2[4].merge_i_n_39 ;
  wire \b2[4].merge_i_n_4 ;
  wire \b2[4].merge_i_n_40 ;
  wire \b2[4].merge_i_n_41 ;
  wire \b2[4].merge_i_n_42 ;
  wire \b2[4].merge_i_n_43 ;
  wire \b2[4].merge_i_n_44 ;
  wire \b2[4].merge_i_n_45 ;
  wire \b2[4].merge_i_n_46 ;
  wire \b2[4].merge_i_n_47 ;
  wire \b2[4].merge_i_n_48 ;
  wire \b2[4].merge_i_n_49 ;
  wire \b2[4].merge_i_n_5 ;
  wire \b2[4].merge_i_n_50 ;
  wire \b2[4].merge_i_n_51 ;
  wire \b2[4].merge_i_n_52 ;
  wire \b2[4].merge_i_n_53 ;
  wire \b2[4].merge_i_n_54 ;
  wire \b2[4].merge_i_n_55 ;
  wire \b2[4].merge_i_n_56 ;
  wire \b2[4].merge_i_n_57 ;
  wire \b2[4].merge_i_n_58 ;
  wire \b2[4].merge_i_n_59 ;
  wire \b2[4].merge_i_n_6 ;
  wire \b2[4].merge_i_n_60 ;
  wire \b2[4].merge_i_n_61 ;
  wire \b2[4].merge_i_n_62 ;
  wire \b2[4].merge_i_n_63 ;
  wire \b2[4].merge_i_n_64 ;
  wire \b2[4].merge_i_n_65 ;
  wire \b2[4].merge_i_n_66 ;
  wire \b2[4].merge_i_n_67 ;
  wire \b2[4].merge_i_n_7 ;
  wire \b2[4].merge_i_n_8 ;
  wire \b2[4].merge_i_n_9 ;
  wire \b2[5].merge_i_n_10 ;
  wire \b2[5].merge_i_n_11 ;
  wire \b2[5].merge_i_n_12 ;
  wire \b2[5].merge_i_n_13 ;
  wire \b2[5].merge_i_n_14 ;
  wire \b2[5].merge_i_n_15 ;
  wire \b2[5].merge_i_n_16 ;
  wire \b2[5].merge_i_n_17 ;
  wire \b2[5].merge_i_n_18 ;
  wire \b2[5].merge_i_n_19 ;
  wire \b2[5].merge_i_n_2 ;
  wire \b2[5].merge_i_n_20 ;
  wire \b2[5].merge_i_n_21 ;
  wire \b2[5].merge_i_n_22 ;
  wire \b2[5].merge_i_n_23 ;
  wire \b2[5].merge_i_n_24 ;
  wire \b2[5].merge_i_n_25 ;
  wire \b2[5].merge_i_n_26 ;
  wire \b2[5].merge_i_n_27 ;
  wire \b2[5].merge_i_n_28 ;
  wire \b2[5].merge_i_n_29 ;
  wire \b2[5].merge_i_n_3 ;
  wire \b2[5].merge_i_n_30 ;
  wire \b2[5].merge_i_n_31 ;
  wire \b2[5].merge_i_n_32 ;
  wire \b2[5].merge_i_n_33 ;
  wire \b2[5].merge_i_n_34 ;
  wire \b2[5].merge_i_n_35 ;
  wire \b2[5].merge_i_n_36 ;
  wire \b2[5].merge_i_n_37 ;
  wire \b2[5].merge_i_n_38 ;
  wire \b2[5].merge_i_n_39 ;
  wire \b2[5].merge_i_n_4 ;
  wire \b2[5].merge_i_n_40 ;
  wire \b2[5].merge_i_n_41 ;
  wire \b2[5].merge_i_n_42 ;
  wire \b2[5].merge_i_n_43 ;
  wire \b2[5].merge_i_n_44 ;
  wire \b2[5].merge_i_n_45 ;
  wire \b2[5].merge_i_n_46 ;
  wire \b2[5].merge_i_n_47 ;
  wire \b2[5].merge_i_n_48 ;
  wire \b2[5].merge_i_n_49 ;
  wire \b2[5].merge_i_n_5 ;
  wire \b2[5].merge_i_n_50 ;
  wire \b2[5].merge_i_n_51 ;
  wire \b2[5].merge_i_n_52 ;
  wire \b2[5].merge_i_n_53 ;
  wire \b2[5].merge_i_n_54 ;
  wire \b2[5].merge_i_n_55 ;
  wire \b2[5].merge_i_n_56 ;
  wire \b2[5].merge_i_n_57 ;
  wire \b2[5].merge_i_n_58 ;
  wire \b2[5].merge_i_n_59 ;
  wire \b2[5].merge_i_n_6 ;
  wire \b2[5].merge_i_n_60 ;
  wire \b2[5].merge_i_n_61 ;
  wire \b2[5].merge_i_n_62 ;
  wire \b2[5].merge_i_n_63 ;
  wire \b2[5].merge_i_n_64 ;
  wire \b2[5].merge_i_n_65 ;
  wire \b2[5].merge_i_n_7 ;
  wire \b2[5].merge_i_n_8 ;
  wire \b2[5].merge_i_n_9 ;
  wire \b2[6].merge_i_n_10 ;
  wire \b2[6].merge_i_n_11 ;
  wire \b2[6].merge_i_n_12 ;
  wire \b2[6].merge_i_n_13 ;
  wire \b2[6].merge_i_n_14 ;
  wire \b2[6].merge_i_n_15 ;
  wire \b2[6].merge_i_n_16 ;
  wire \b2[6].merge_i_n_17 ;
  wire \b2[6].merge_i_n_18 ;
  wire \b2[6].merge_i_n_19 ;
  wire \b2[6].merge_i_n_20 ;
  wire \b2[6].merge_i_n_21 ;
  wire \b2[6].merge_i_n_22 ;
  wire \b2[6].merge_i_n_23 ;
  wire \b2[6].merge_i_n_24 ;
  wire \b2[6].merge_i_n_25 ;
  wire \b2[6].merge_i_n_26 ;
  wire \b2[6].merge_i_n_27 ;
  wire \b2[6].merge_i_n_28 ;
  wire \b2[6].merge_i_n_29 ;
  wire \b2[6].merge_i_n_3 ;
  wire \b2[6].merge_i_n_30 ;
  wire \b2[6].merge_i_n_31 ;
  wire \b2[6].merge_i_n_32 ;
  wire \b2[6].merge_i_n_33 ;
  wire \b2[6].merge_i_n_34 ;
  wire \b2[6].merge_i_n_35 ;
  wire \b2[6].merge_i_n_36 ;
  wire \b2[6].merge_i_n_37 ;
  wire \b2[6].merge_i_n_38 ;
  wire \b2[6].merge_i_n_39 ;
  wire \b2[6].merge_i_n_4 ;
  wire \b2[6].merge_i_n_40 ;
  wire \b2[6].merge_i_n_41 ;
  wire \b2[6].merge_i_n_42 ;
  wire \b2[6].merge_i_n_43 ;
  wire \b2[6].merge_i_n_44 ;
  wire \b2[6].merge_i_n_45 ;
  wire \b2[6].merge_i_n_46 ;
  wire \b2[6].merge_i_n_47 ;
  wire \b2[6].merge_i_n_48 ;
  wire \b2[6].merge_i_n_49 ;
  wire \b2[6].merge_i_n_5 ;
  wire \b2[6].merge_i_n_50 ;
  wire \b2[6].merge_i_n_51 ;
  wire \b2[6].merge_i_n_52 ;
  wire \b2[6].merge_i_n_53 ;
  wire \b2[6].merge_i_n_54 ;
  wire \b2[6].merge_i_n_55 ;
  wire \b2[6].merge_i_n_56 ;
  wire \b2[6].merge_i_n_57 ;
  wire \b2[6].merge_i_n_58 ;
  wire \b2[6].merge_i_n_59 ;
  wire \b2[6].merge_i_n_6 ;
  wire \b2[6].merge_i_n_60 ;
  wire \b2[6].merge_i_n_61 ;
  wire \b2[6].merge_i_n_62 ;
  wire \b2[6].merge_i_n_63 ;
  wire \b2[6].merge_i_n_64 ;
  wire \b2[6].merge_i_n_65 ;
  wire \b2[6].merge_i_n_66 ;
  wire \b2[6].merge_i_n_67 ;
  wire \b2[6].merge_i_n_7 ;
  wire \b2[6].merge_i_n_8 ;
  wire \b2[6].merge_i_n_9 ;
  wire data_i;
  wire data_i_6;
  wire [0:0]\data_i_reg[0] ;
  wire [0:0]\data_i_reg[0]_0 ;
  wire [63:0]\data_i_reg[63] ;
  wire [63:0]\data_i_reg[63]_0 ;
  wire [63:0]\data_i_reg[63]_1 ;
  wire have_data0;
  wire have_data02_out;
  wire have_data02_out_3;
  wire have_data02_out_4;
  wire have_data02_out_5;
  wire have_data02_out_7;
  wire have_data02_out_8;
  wire have_data0_0;
  wire have_data0_1;
  wire have_data0_2;
  wire have_data0_3;
  wire have_data0_4;
  wire have_data_reg;
  wire [63:0]out_data;
  wire out_ready;
  wire trace_clk;
  wire valid_1;
  wire valid_2;
  wire valid_3;
  wire valid_4;
  wire valid_5;
  wire valid_6;
  wire wrote0_reg;
  wire wrote0_reg_0;
  wire wrote0_reg_1;
  wire wrote0_reg_2;
  wire wrote0_reg_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1 \b2[0].merge_i 
       (.D({\b2[1].merge_i_n_1 ,\b2[1].merge_i_n_2 ,\b2[1].merge_i_n_3 ,\b2[1].merge_i_n_4 ,\b2[1].merge_i_n_5 ,\b2[1].merge_i_n_6 ,\b2[1].merge_i_n_7 ,\b2[1].merge_i_n_8 ,\b2[1].merge_i_n_9 ,\b2[1].merge_i_n_10 ,\b2[1].merge_i_n_11 ,\b2[1].merge_i_n_12 ,\b2[1].merge_i_n_13 ,\b2[1].merge_i_n_14 ,\b2[1].merge_i_n_15 ,\b2[1].merge_i_n_16 ,\b2[1].merge_i_n_17 ,\b2[1].merge_i_n_18 ,\b2[1].merge_i_n_19 ,\b2[1].merge_i_n_20 ,\b2[1].merge_i_n_21 ,\b2[1].merge_i_n_22 ,\b2[1].merge_i_n_23 ,\b2[1].merge_i_n_24 ,\b2[1].merge_i_n_25 ,\b2[1].merge_i_n_26 ,\b2[1].merge_i_n_27 ,\b2[1].merge_i_n_28 ,\b2[1].merge_i_n_29 ,\b2[1].merge_i_n_30 ,\b2[1].merge_i_n_31 ,\b2[1].merge_i_n_32 ,\b2[1].merge_i_n_33 ,\b2[1].merge_i_n_34 ,\b2[1].merge_i_n_35 ,\b2[1].merge_i_n_36 ,\b2[1].merge_i_n_37 ,\b2[1].merge_i_n_38 ,\b2[1].merge_i_n_39 ,\b2[1].merge_i_n_40 ,\b2[1].merge_i_n_41 ,\b2[1].merge_i_n_42 ,\b2[1].merge_i_n_43 ,\b2[1].merge_i_n_44 ,\b2[1].merge_i_n_45 ,\b2[1].merge_i_n_46 ,\b2[1].merge_i_n_47 ,\b2[1].merge_i_n_48 ,\b2[1].merge_i_n_49 ,\b2[1].merge_i_n_50 ,\b2[1].merge_i_n_51 ,\b2[1].merge_i_n_52 ,\b2[1].merge_i_n_53 ,\b2[1].merge_i_n_54 ,\b2[1].merge_i_n_55 ,\b2[1].merge_i_n_56 ,\b2[1].merge_i_n_57 ,\b2[1].merge_i_n_58 ,\b2[1].merge_i_n_59 ,\b2[1].merge_i_n_60 ,\b2[1].merge_i_n_61 ,\b2[1].merge_i_n_62 ,\b2[1].merge_i_n_63 ,\b2[1].merge_i_n_64 }),
        .E(data_i),
        .have_data0(have_data0),
        .have_data02_out(have_data02_out_5),
        .have_data02_out_5(have_data02_out_7),
        .have_data0_0(have_data0_0),
        .have_data0_1(have_data0_1),
        .have_data0_2(have_data0_2),
        .have_data0_3(have_data0_4),
        .have_data0_4(have_data0_3),
        .have_data_reg_0(have_data_reg),
        .have_data_reg_1(wrote0_reg_3),
        .out_data(out_data),
        .out_ready(out_ready),
        .ready_i_reg_reg(\b2[2].merge_i_n_0 ),
        .trace_clk(trace_clk),
        .valid_1(valid_1),
        .valid_2(valid_2),
        .valid_3(valid_3),
        .valid_4(valid_4),
        .valid_5(valid_5),
        .valid_6(valid_6),
        .wrote0_reg_0(\b2[0].merge_i_n_0 ),
        .wrote0_reg_1(\b2[1].merge_i_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11 \b2[1].merge_i 
       (.D({\b2[1].merge_i_n_1 ,\b2[1].merge_i_n_2 ,\b2[1].merge_i_n_3 ,\b2[1].merge_i_n_4 ,\b2[1].merge_i_n_5 ,\b2[1].merge_i_n_6 ,\b2[1].merge_i_n_7 ,\b2[1].merge_i_n_8 ,\b2[1].merge_i_n_9 ,\b2[1].merge_i_n_10 ,\b2[1].merge_i_n_11 ,\b2[1].merge_i_n_12 ,\b2[1].merge_i_n_13 ,\b2[1].merge_i_n_14 ,\b2[1].merge_i_n_15 ,\b2[1].merge_i_n_16 ,\b2[1].merge_i_n_17 ,\b2[1].merge_i_n_18 ,\b2[1].merge_i_n_19 ,\b2[1].merge_i_n_20 ,\b2[1].merge_i_n_21 ,\b2[1].merge_i_n_22 ,\b2[1].merge_i_n_23 ,\b2[1].merge_i_n_24 ,\b2[1].merge_i_n_25 ,\b2[1].merge_i_n_26 ,\b2[1].merge_i_n_27 ,\b2[1].merge_i_n_28 ,\b2[1].merge_i_n_29 ,\b2[1].merge_i_n_30 ,\b2[1].merge_i_n_31 ,\b2[1].merge_i_n_32 ,\b2[1].merge_i_n_33 ,\b2[1].merge_i_n_34 ,\b2[1].merge_i_n_35 ,\b2[1].merge_i_n_36 ,\b2[1].merge_i_n_37 ,\b2[1].merge_i_n_38 ,\b2[1].merge_i_n_39 ,\b2[1].merge_i_n_40 ,\b2[1].merge_i_n_41 ,\b2[1].merge_i_n_42 ,\b2[1].merge_i_n_43 ,\b2[1].merge_i_n_44 ,\b2[1].merge_i_n_45 ,\b2[1].merge_i_n_46 ,\b2[1].merge_i_n_47 ,\b2[1].merge_i_n_48 ,\b2[1].merge_i_n_49 ,\b2[1].merge_i_n_50 ,\b2[1].merge_i_n_51 ,\b2[1].merge_i_n_52 ,\b2[1].merge_i_n_53 ,\b2[1].merge_i_n_54 ,\b2[1].merge_i_n_55 ,\b2[1].merge_i_n_56 ,\b2[1].merge_i_n_57 ,\b2[1].merge_i_n_58 ,\b2[1].merge_i_n_59 ,\b2[1].merge_i_n_60 ,\b2[1].merge_i_n_61 ,\b2[1].merge_i_n_62 ,\b2[1].merge_i_n_63 ,\b2[1].merge_i_n_64 }),
        .E(data_i_6),
        .Q({\b2[2].merge_i_n_3 ,\b2[2].merge_i_n_4 ,\b2[2].merge_i_n_5 ,\b2[2].merge_i_n_6 ,\b2[2].merge_i_n_7 ,\b2[2].merge_i_n_8 ,\b2[2].merge_i_n_9 ,\b2[2].merge_i_n_10 ,\b2[2].merge_i_n_11 ,\b2[2].merge_i_n_12 ,\b2[2].merge_i_n_13 ,\b2[2].merge_i_n_14 ,\b2[2].merge_i_n_15 ,\b2[2].merge_i_n_16 ,\b2[2].merge_i_n_17 ,\b2[2].merge_i_n_18 ,\b2[2].merge_i_n_19 ,\b2[2].merge_i_n_20 ,\b2[2].merge_i_n_21 ,\b2[2].merge_i_n_22 ,\b2[2].merge_i_n_23 ,\b2[2].merge_i_n_24 ,\b2[2].merge_i_n_25 ,\b2[2].merge_i_n_26 ,\b2[2].merge_i_n_27 ,\b2[2].merge_i_n_28 ,\b2[2].merge_i_n_29 ,\b2[2].merge_i_n_30 ,\b2[2].merge_i_n_31 ,\b2[2].merge_i_n_32 ,\b2[2].merge_i_n_33 ,\b2[2].merge_i_n_34 ,\b2[2].merge_i_n_35 ,\b2[2].merge_i_n_36 ,\b2[2].merge_i_n_37 ,\b2[2].merge_i_n_38 ,\b2[2].merge_i_n_39 ,\b2[2].merge_i_n_40 ,\b2[2].merge_i_n_41 ,\b2[2].merge_i_n_42 ,\b2[2].merge_i_n_43 ,\b2[2].merge_i_n_44 ,\b2[2].merge_i_n_45 ,\b2[2].merge_i_n_46 ,\b2[2].merge_i_n_47 ,\b2[2].merge_i_n_48 ,\b2[2].merge_i_n_49 ,\b2[2].merge_i_n_50 ,\b2[2].merge_i_n_51 ,\b2[2].merge_i_n_52 ,\b2[2].merge_i_n_53 ,\b2[2].merge_i_n_54 ,\b2[2].merge_i_n_55 ,\b2[2].merge_i_n_56 ,\b2[2].merge_i_n_57 ,\b2[2].merge_i_n_58 ,\b2[2].merge_i_n_59 ,\b2[2].merge_i_n_60 ,\b2[2].merge_i_n_61 ,\b2[2].merge_i_n_62 ,\b2[2].merge_i_n_63 ,\b2[2].merge_i_n_64 ,\b2[2].merge_i_n_65 ,\b2[2].merge_i_n_66 }),
        .\data_i_reg[63]_0 (\b2[0].merge_i_n_0 ),
        .\data_i_reg[63]_1 ({\b2[3].merge_i_n_1 ,\b2[3].merge_i_n_2 ,\b2[3].merge_i_n_3 ,\b2[3].merge_i_n_4 ,\b2[3].merge_i_n_5 ,\b2[3].merge_i_n_6 ,\b2[3].merge_i_n_7 ,\b2[3].merge_i_n_8 ,\b2[3].merge_i_n_9 ,\b2[3].merge_i_n_10 ,\b2[3].merge_i_n_11 ,\b2[3].merge_i_n_12 ,\b2[3].merge_i_n_13 ,\b2[3].merge_i_n_14 ,\b2[3].merge_i_n_15 ,\b2[3].merge_i_n_16 ,\b2[3].merge_i_n_17 ,\b2[3].merge_i_n_18 ,\b2[3].merge_i_n_19 ,\b2[3].merge_i_n_20 ,\b2[3].merge_i_n_21 ,\b2[3].merge_i_n_22 ,\b2[3].merge_i_n_23 ,\b2[3].merge_i_n_24 ,\b2[3].merge_i_n_25 ,\b2[3].merge_i_n_26 ,\b2[3].merge_i_n_27 ,\b2[3].merge_i_n_28 ,\b2[3].merge_i_n_29 ,\b2[3].merge_i_n_30 ,\b2[3].merge_i_n_31 ,\b2[3].merge_i_n_32 ,\b2[3].merge_i_n_33 ,\b2[3].merge_i_n_34 ,\b2[3].merge_i_n_35 ,\b2[3].merge_i_n_36 ,\b2[3].merge_i_n_37 ,\b2[3].merge_i_n_38 ,\b2[3].merge_i_n_39 ,\b2[3].merge_i_n_40 ,\b2[3].merge_i_n_41 ,\b2[3].merge_i_n_42 ,\b2[3].merge_i_n_43 ,\b2[3].merge_i_n_44 ,\b2[3].merge_i_n_45 ,\b2[3].merge_i_n_46 ,\b2[3].merge_i_n_47 ,\b2[3].merge_i_n_48 ,\b2[3].merge_i_n_49 ,\b2[3].merge_i_n_50 ,\b2[3].merge_i_n_51 ,\b2[3].merge_i_n_52 ,\b2[3].merge_i_n_53 ,\b2[3].merge_i_n_54 ,\b2[3].merge_i_n_55 ,\b2[3].merge_i_n_56 ,\b2[3].merge_i_n_57 ,\b2[3].merge_i_n_58 ,\b2[3].merge_i_n_59 ,\b2[3].merge_i_n_60 ,\b2[3].merge_i_n_61 ,\b2[3].merge_i_n_62 ,\b2[3].merge_i_n_63 ,\b2[3].merge_i_n_64 }),
        .have_data02_out(have_data02_out_5),
        .have_data02_out_0(have_data02_out_7),
        .have_data_reg_0(have_data_reg),
        .out_ready(out_ready),
        .trace_clk(trace_clk),
        .valid_1(valid_1),
        .valid_2(valid_2),
        .valid_4(valid_4),
        .wrote0_reg_0(\b2[1].merge_i_n_0 ),
        .wrote0_reg_1(wrote0_reg_3),
        .wrote0_reg_2(\b2[4].merge_i_n_3 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12 \b2[2].merge_i 
       (.D({\b2[5].merge_i_n_2 ,\b2[5].merge_i_n_3 ,\b2[5].merge_i_n_4 ,\b2[5].merge_i_n_5 ,\b2[5].merge_i_n_6 ,\b2[5].merge_i_n_7 ,\b2[5].merge_i_n_8 ,\b2[5].merge_i_n_9 ,\b2[5].merge_i_n_10 ,\b2[5].merge_i_n_11 ,\b2[5].merge_i_n_12 ,\b2[5].merge_i_n_13 ,\b2[5].merge_i_n_14 ,\b2[5].merge_i_n_15 ,\b2[5].merge_i_n_16 ,\b2[5].merge_i_n_17 ,\b2[5].merge_i_n_18 ,\b2[5].merge_i_n_19 ,\b2[5].merge_i_n_20 ,\b2[5].merge_i_n_21 ,\b2[5].merge_i_n_22 ,\b2[5].merge_i_n_23 ,\b2[5].merge_i_n_24 ,\b2[5].merge_i_n_25 ,\b2[5].merge_i_n_26 ,\b2[5].merge_i_n_27 ,\b2[5].merge_i_n_28 ,\b2[5].merge_i_n_29 ,\b2[5].merge_i_n_30 ,\b2[5].merge_i_n_31 ,\b2[5].merge_i_n_32 ,\b2[5].merge_i_n_33 ,\b2[5].merge_i_n_34 ,\b2[5].merge_i_n_35 ,\b2[5].merge_i_n_36 ,\b2[5].merge_i_n_37 ,\b2[5].merge_i_n_38 ,\b2[5].merge_i_n_39 ,\b2[5].merge_i_n_40 ,\b2[5].merge_i_n_41 ,\b2[5].merge_i_n_42 ,\b2[5].merge_i_n_43 ,\b2[5].merge_i_n_44 ,\b2[5].merge_i_n_45 ,\b2[5].merge_i_n_46 ,\b2[5].merge_i_n_47 ,\b2[5].merge_i_n_48 ,\b2[5].merge_i_n_49 ,\b2[5].merge_i_n_50 ,\b2[5].merge_i_n_51 ,\b2[5].merge_i_n_52 ,\b2[5].merge_i_n_53 ,\b2[5].merge_i_n_54 ,\b2[5].merge_i_n_55 ,\b2[5].merge_i_n_56 ,\b2[5].merge_i_n_57 ,\b2[5].merge_i_n_58 ,\b2[5].merge_i_n_59 ,\b2[5].merge_i_n_60 ,\b2[5].merge_i_n_61 ,\b2[5].merge_i_n_62 ,\b2[5].merge_i_n_63 ,\b2[5].merge_i_n_64 ,\b2[5].merge_i_n_65 }),
        .E(data_i),
        .Q({\b2[2].merge_i_n_3 ,\b2[2].merge_i_n_4 ,\b2[2].merge_i_n_5 ,\b2[2].merge_i_n_6 ,\b2[2].merge_i_n_7 ,\b2[2].merge_i_n_8 ,\b2[2].merge_i_n_9 ,\b2[2].merge_i_n_10 ,\b2[2].merge_i_n_11 ,\b2[2].merge_i_n_12 ,\b2[2].merge_i_n_13 ,\b2[2].merge_i_n_14 ,\b2[2].merge_i_n_15 ,\b2[2].merge_i_n_16 ,\b2[2].merge_i_n_17 ,\b2[2].merge_i_n_18 ,\b2[2].merge_i_n_19 ,\b2[2].merge_i_n_20 ,\b2[2].merge_i_n_21 ,\b2[2].merge_i_n_22 ,\b2[2].merge_i_n_23 ,\b2[2].merge_i_n_24 ,\b2[2].merge_i_n_25 ,\b2[2].merge_i_n_26 ,\b2[2].merge_i_n_27 ,\b2[2].merge_i_n_28 ,\b2[2].merge_i_n_29 ,\b2[2].merge_i_n_30 ,\b2[2].merge_i_n_31 ,\b2[2].merge_i_n_32 ,\b2[2].merge_i_n_33 ,\b2[2].merge_i_n_34 ,\b2[2].merge_i_n_35 ,\b2[2].merge_i_n_36 ,\b2[2].merge_i_n_37 ,\b2[2].merge_i_n_38 ,\b2[2].merge_i_n_39 ,\b2[2].merge_i_n_40 ,\b2[2].merge_i_n_41 ,\b2[2].merge_i_n_42 ,\b2[2].merge_i_n_43 ,\b2[2].merge_i_n_44 ,\b2[2].merge_i_n_45 ,\b2[2].merge_i_n_46 ,\b2[2].merge_i_n_47 ,\b2[2].merge_i_n_48 ,\b2[2].merge_i_n_49 ,\b2[2].merge_i_n_50 ,\b2[2].merge_i_n_51 ,\b2[2].merge_i_n_52 ,\b2[2].merge_i_n_53 ,\b2[2].merge_i_n_54 ,\b2[2].merge_i_n_55 ,\b2[2].merge_i_n_56 ,\b2[2].merge_i_n_57 ,\b2[2].merge_i_n_58 ,\b2[2].merge_i_n_59 ,\b2[2].merge_i_n_60 ,\b2[2].merge_i_n_61 ,\b2[2].merge_i_n_62 ,\b2[2].merge_i_n_63 ,\b2[2].merge_i_n_64 ,\b2[2].merge_i_n_65 ,\b2[2].merge_i_n_66 }),
        .have_data0(have_data0_4),
        .have_data02_out(have_data02_out_5),
        .have_data_reg_0(\b2[0].merge_i_n_0 ),
        .trace_clk(trace_clk),
        .valid_1(valid_1),
        .valid_2(valid_2),
        .valid_5(valid_5),
        .valid_6(valid_6),
        .wrote0_reg_0(\b2[2].merge_i_n_0 ),
        .wrote0_reg_1(wrote0_reg_3),
        .wrote0_reg_2(\b2[6].merge_i_n_3 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13 \b2[3].merge_i 
       (.E(data_i_6),
        .Q({\b2[4].merge_i_n_4 ,\b2[4].merge_i_n_5 ,\b2[4].merge_i_n_6 ,\b2[4].merge_i_n_7 ,\b2[4].merge_i_n_8 ,\b2[4].merge_i_n_9 ,\b2[4].merge_i_n_10 ,\b2[4].merge_i_n_11 ,\b2[4].merge_i_n_12 ,\b2[4].merge_i_n_13 ,\b2[4].merge_i_n_14 ,\b2[4].merge_i_n_15 ,\b2[4].merge_i_n_16 ,\b2[4].merge_i_n_17 ,\b2[4].merge_i_n_18 ,\b2[4].merge_i_n_19 ,\b2[4].merge_i_n_20 ,\b2[4].merge_i_n_21 ,\b2[4].merge_i_n_22 ,\b2[4].merge_i_n_23 ,\b2[4].merge_i_n_24 ,\b2[4].merge_i_n_25 ,\b2[4].merge_i_n_26 ,\b2[4].merge_i_n_27 ,\b2[4].merge_i_n_28 ,\b2[4].merge_i_n_29 ,\b2[4].merge_i_n_30 ,\b2[4].merge_i_n_31 ,\b2[4].merge_i_n_32 ,\b2[4].merge_i_n_33 ,\b2[4].merge_i_n_34 ,\b2[4].merge_i_n_35 ,\b2[4].merge_i_n_36 ,\b2[4].merge_i_n_37 ,\b2[4].merge_i_n_38 ,\b2[4].merge_i_n_39 ,\b2[4].merge_i_n_40 ,\b2[4].merge_i_n_41 ,\b2[4].merge_i_n_42 ,\b2[4].merge_i_n_43 ,\b2[4].merge_i_n_44 ,\b2[4].merge_i_n_45 ,\b2[4].merge_i_n_46 ,\b2[4].merge_i_n_47 ,\b2[4].merge_i_n_48 ,\b2[4].merge_i_n_49 ,\b2[4].merge_i_n_50 ,\b2[4].merge_i_n_51 ,\b2[4].merge_i_n_52 ,\b2[4].merge_i_n_53 ,\b2[4].merge_i_n_54 ,\b2[4].merge_i_n_55 ,\b2[4].merge_i_n_56 ,\b2[4].merge_i_n_57 ,\b2[4].merge_i_n_58 ,\b2[4].merge_i_n_59 ,\b2[4].merge_i_n_60 ,\b2[4].merge_i_n_61 ,\b2[4].merge_i_n_62 ,\b2[4].merge_i_n_63 ,\b2[4].merge_i_n_64 ,\b2[4].merge_i_n_65 ,\b2[4].merge_i_n_66 ,\b2[4].merge_i_n_67 }),
        ._trace_valid(_trace_valid[1:0]),
        .\data_i_reg[0]_0 (\data_i_reg[0]_0 ),
        .\data_i_reg[63]_0 ({\b2[3].merge_i_n_1 ,\b2[3].merge_i_n_2 ,\b2[3].merge_i_n_3 ,\b2[3].merge_i_n_4 ,\b2[3].merge_i_n_5 ,\b2[3].merge_i_n_6 ,\b2[3].merge_i_n_7 ,\b2[3].merge_i_n_8 ,\b2[3].merge_i_n_9 ,\b2[3].merge_i_n_10 ,\b2[3].merge_i_n_11 ,\b2[3].merge_i_n_12 ,\b2[3].merge_i_n_13 ,\b2[3].merge_i_n_14 ,\b2[3].merge_i_n_15 ,\b2[3].merge_i_n_16 ,\b2[3].merge_i_n_17 ,\b2[3].merge_i_n_18 ,\b2[3].merge_i_n_19 ,\b2[3].merge_i_n_20 ,\b2[3].merge_i_n_21 ,\b2[3].merge_i_n_22 ,\b2[3].merge_i_n_23 ,\b2[3].merge_i_n_24 ,\b2[3].merge_i_n_25 ,\b2[3].merge_i_n_26 ,\b2[3].merge_i_n_27 ,\b2[3].merge_i_n_28 ,\b2[3].merge_i_n_29 ,\b2[3].merge_i_n_30 ,\b2[3].merge_i_n_31 ,\b2[3].merge_i_n_32 ,\b2[3].merge_i_n_33 ,\b2[3].merge_i_n_34 ,\b2[3].merge_i_n_35 ,\b2[3].merge_i_n_36 ,\b2[3].merge_i_n_37 ,\b2[3].merge_i_n_38 ,\b2[3].merge_i_n_39 ,\b2[3].merge_i_n_40 ,\b2[3].merge_i_n_41 ,\b2[3].merge_i_n_42 ,\b2[3].merge_i_n_43 ,\b2[3].merge_i_n_44 ,\b2[3].merge_i_n_45 ,\b2[3].merge_i_n_46 ,\b2[3].merge_i_n_47 ,\b2[3].merge_i_n_48 ,\b2[3].merge_i_n_49 ,\b2[3].merge_i_n_50 ,\b2[3].merge_i_n_51 ,\b2[3].merge_i_n_52 ,\b2[3].merge_i_n_53 ,\b2[3].merge_i_n_54 ,\b2[3].merge_i_n_55 ,\b2[3].merge_i_n_56 ,\b2[3].merge_i_n_57 ,\b2[3].merge_i_n_58 ,\b2[3].merge_i_n_59 ,\b2[3].merge_i_n_60 ,\b2[3].merge_i_n_61 ,\b2[3].merge_i_n_62 ,\b2[3].merge_i_n_63 ,\b2[3].merge_i_n_64 }),
        .\data_i_reg[63]_1 (\b2[1].merge_i_n_0 ),
        .\data_i_reg[63]_2 (\data_i_reg[63]_1 ),
        .have_data0(have_data0_3),
        .have_data0_1(have_data0_1),
        .have_data_reg_0(wrote0_reg_3),
        .trace_clk(trace_clk),
        .valid_3(valid_3),
        .valid_4(valid_4),
        .wrote0_reg_0(wrote0_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_14 \b2[4].merge_i 
       (.Q({\b2[4].merge_i_n_4 ,\b2[4].merge_i_n_5 ,\b2[4].merge_i_n_6 ,\b2[4].merge_i_n_7 ,\b2[4].merge_i_n_8 ,\b2[4].merge_i_n_9 ,\b2[4].merge_i_n_10 ,\b2[4].merge_i_n_11 ,\b2[4].merge_i_n_12 ,\b2[4].merge_i_n_13 ,\b2[4].merge_i_n_14 ,\b2[4].merge_i_n_15 ,\b2[4].merge_i_n_16 ,\b2[4].merge_i_n_17 ,\b2[4].merge_i_n_18 ,\b2[4].merge_i_n_19 ,\b2[4].merge_i_n_20 ,\b2[4].merge_i_n_21 ,\b2[4].merge_i_n_22 ,\b2[4].merge_i_n_23 ,\b2[4].merge_i_n_24 ,\b2[4].merge_i_n_25 ,\b2[4].merge_i_n_26 ,\b2[4].merge_i_n_27 ,\b2[4].merge_i_n_28 ,\b2[4].merge_i_n_29 ,\b2[4].merge_i_n_30 ,\b2[4].merge_i_n_31 ,\b2[4].merge_i_n_32 ,\b2[4].merge_i_n_33 ,\b2[4].merge_i_n_34 ,\b2[4].merge_i_n_35 ,\b2[4].merge_i_n_36 ,\b2[4].merge_i_n_37 ,\b2[4].merge_i_n_38 ,\b2[4].merge_i_n_39 ,\b2[4].merge_i_n_40 ,\b2[4].merge_i_n_41 ,\b2[4].merge_i_n_42 ,\b2[4].merge_i_n_43 ,\b2[4].merge_i_n_44 ,\b2[4].merge_i_n_45 ,\b2[4].merge_i_n_46 ,\b2[4].merge_i_n_47 ,\b2[4].merge_i_n_48 ,\b2[4].merge_i_n_49 ,\b2[4].merge_i_n_50 ,\b2[4].merge_i_n_51 ,\b2[4].merge_i_n_52 ,\b2[4].merge_i_n_53 ,\b2[4].merge_i_n_54 ,\b2[4].merge_i_n_55 ,\b2[4].merge_i_n_56 ,\b2[4].merge_i_n_57 ,\b2[4].merge_i_n_58 ,\b2[4].merge_i_n_59 ,\b2[4].merge_i_n_60 ,\b2[4].merge_i_n_61 ,\b2[4].merge_i_n_62 ,\b2[4].merge_i_n_63 ,\b2[4].merge_i_n_64 ,\b2[4].merge_i_n_65 ,\b2[4].merge_i_n_66 ,\b2[4].merge_i_n_67 }),
        ._trace_valid(_trace_valid[3:2]),
        .\data_i_reg[0]_0 (\data_i_reg[0] ),
        .\data_i_reg[63]_0 (\data_i_reg[63]_0 ),
        .have_data0(have_data0_3),
        .have_data02_out(have_data02_out_7),
        .have_data02_out_4(have_data02_out_4),
        .have_data0_2(have_data0_2),
        .have_data_reg_0(\b2[4].merge_i_n_3 ),
        .have_data_reg_1(wrote0_reg_3),
        .have_data_reg_2(\b2[1].merge_i_n_0 ),
        .trace_clk(trace_clk),
        .valid_3(valid_3),
        .valid_4(valid_4),
        .wrote0_reg_0(wrote0_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_15 \b2[5].merge_i 
       (.D({\b2[5].merge_i_n_2 ,\b2[5].merge_i_n_3 ,\b2[5].merge_i_n_4 ,\b2[5].merge_i_n_5 ,\b2[5].merge_i_n_6 ,\b2[5].merge_i_n_7 ,\b2[5].merge_i_n_8 ,\b2[5].merge_i_n_9 ,\b2[5].merge_i_n_10 ,\b2[5].merge_i_n_11 ,\b2[5].merge_i_n_12 ,\b2[5].merge_i_n_13 ,\b2[5].merge_i_n_14 ,\b2[5].merge_i_n_15 ,\b2[5].merge_i_n_16 ,\b2[5].merge_i_n_17 ,\b2[5].merge_i_n_18 ,\b2[5].merge_i_n_19 ,\b2[5].merge_i_n_20 ,\b2[5].merge_i_n_21 ,\b2[5].merge_i_n_22 ,\b2[5].merge_i_n_23 ,\b2[5].merge_i_n_24 ,\b2[5].merge_i_n_25 ,\b2[5].merge_i_n_26 ,\b2[5].merge_i_n_27 ,\b2[5].merge_i_n_28 ,\b2[5].merge_i_n_29 ,\b2[5].merge_i_n_30 ,\b2[5].merge_i_n_31 ,\b2[5].merge_i_n_32 ,\b2[5].merge_i_n_33 ,\b2[5].merge_i_n_34 ,\b2[5].merge_i_n_35 ,\b2[5].merge_i_n_36 ,\b2[5].merge_i_n_37 ,\b2[5].merge_i_n_38 ,\b2[5].merge_i_n_39 ,\b2[5].merge_i_n_40 ,\b2[5].merge_i_n_41 ,\b2[5].merge_i_n_42 ,\b2[5].merge_i_n_43 ,\b2[5].merge_i_n_44 ,\b2[5].merge_i_n_45 ,\b2[5].merge_i_n_46 ,\b2[5].merge_i_n_47 ,\b2[5].merge_i_n_48 ,\b2[5].merge_i_n_49 ,\b2[5].merge_i_n_50 ,\b2[5].merge_i_n_51 ,\b2[5].merge_i_n_52 ,\b2[5].merge_i_n_53 ,\b2[5].merge_i_n_54 ,\b2[5].merge_i_n_55 ,\b2[5].merge_i_n_56 ,\b2[5].merge_i_n_57 ,\b2[5].merge_i_n_58 ,\b2[5].merge_i_n_59 ,\b2[5].merge_i_n_60 ,\b2[5].merge_i_n_61 ,\b2[5].merge_i_n_62 ,\b2[5].merge_i_n_63 ,\b2[5].merge_i_n_64 ,\b2[5].merge_i_n_65 }),
        .Q({\b2[6].merge_i_n_4 ,\b2[6].merge_i_n_5 ,\b2[6].merge_i_n_6 ,\b2[6].merge_i_n_7 ,\b2[6].merge_i_n_8 ,\b2[6].merge_i_n_9 ,\b2[6].merge_i_n_10 ,\b2[6].merge_i_n_11 ,\b2[6].merge_i_n_12 ,\b2[6].merge_i_n_13 ,\b2[6].merge_i_n_14 ,\b2[6].merge_i_n_15 ,\b2[6].merge_i_n_16 ,\b2[6].merge_i_n_17 ,\b2[6].merge_i_n_18 ,\b2[6].merge_i_n_19 ,\b2[6].merge_i_n_20 ,\b2[6].merge_i_n_21 ,\b2[6].merge_i_n_22 ,\b2[6].merge_i_n_23 ,\b2[6].merge_i_n_24 ,\b2[6].merge_i_n_25 ,\b2[6].merge_i_n_26 ,\b2[6].merge_i_n_27 ,\b2[6].merge_i_n_28 ,\b2[6].merge_i_n_29 ,\b2[6].merge_i_n_30 ,\b2[6].merge_i_n_31 ,\b2[6].merge_i_n_32 ,\b2[6].merge_i_n_33 ,\b2[6].merge_i_n_34 ,\b2[6].merge_i_n_35 ,\b2[6].merge_i_n_36 ,\b2[6].merge_i_n_37 ,\b2[6].merge_i_n_38 ,\b2[6].merge_i_n_39 ,\b2[6].merge_i_n_40 ,\b2[6].merge_i_n_41 ,\b2[6].merge_i_n_42 ,\b2[6].merge_i_n_43 ,\b2[6].merge_i_n_44 ,\b2[6].merge_i_n_45 ,\b2[6].merge_i_n_46 ,\b2[6].merge_i_n_47 ,\b2[6].merge_i_n_48 ,\b2[6].merge_i_n_49 ,\b2[6].merge_i_n_50 ,\b2[6].merge_i_n_51 ,\b2[6].merge_i_n_52 ,\b2[6].merge_i_n_53 ,\b2[6].merge_i_n_54 ,\b2[6].merge_i_n_55 ,\b2[6].merge_i_n_56 ,\b2[6].merge_i_n_57 ,\b2[6].merge_i_n_58 ,\b2[6].merge_i_n_59 ,\b2[6].merge_i_n_60 ,\b2[6].merge_i_n_61 ,\b2[6].merge_i_n_62 ,\b2[6].merge_i_n_63 ,\b2[6].merge_i_n_64 ,\b2[6].merge_i_n_65 ,\b2[6].merge_i_n_66 ,\b2[6].merge_i_n_67 }),
        ._trace_valid(_trace_valid[5:4]),
        .\data_i_reg[63]_0 (\data_i_reg[63] ),
        .have_data0(have_data0_4),
        .have_data02_out(have_data02_out),
        .have_data02_out_0(have_data02_out_8),
        .have_data_reg_0(\b2[2].merge_i_n_0 ),
        .trace_clk(trace_clk),
        .valid_5(valid_5),
        .valid_6(valid_6),
        .wrote0_reg_0(wrote0_reg_1),
        .wrote0_reg_1(wrote0_reg_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_16 \b2[6].merge_i 
       (.D(D),
        .E(E),
        .Q({\b2[6].merge_i_n_4 ,\b2[6].merge_i_n_5 ,\b2[6].merge_i_n_6 ,\b2[6].merge_i_n_7 ,\b2[6].merge_i_n_8 ,\b2[6].merge_i_n_9 ,\b2[6].merge_i_n_10 ,\b2[6].merge_i_n_11 ,\b2[6].merge_i_n_12 ,\b2[6].merge_i_n_13 ,\b2[6].merge_i_n_14 ,\b2[6].merge_i_n_15 ,\b2[6].merge_i_n_16 ,\b2[6].merge_i_n_17 ,\b2[6].merge_i_n_18 ,\b2[6].merge_i_n_19 ,\b2[6].merge_i_n_20 ,\b2[6].merge_i_n_21 ,\b2[6].merge_i_n_22 ,\b2[6].merge_i_n_23 ,\b2[6].merge_i_n_24 ,\b2[6].merge_i_n_25 ,\b2[6].merge_i_n_26 ,\b2[6].merge_i_n_27 ,\b2[6].merge_i_n_28 ,\b2[6].merge_i_n_29 ,\b2[6].merge_i_n_30 ,\b2[6].merge_i_n_31 ,\b2[6].merge_i_n_32 ,\b2[6].merge_i_n_33 ,\b2[6].merge_i_n_34 ,\b2[6].merge_i_n_35 ,\b2[6].merge_i_n_36 ,\b2[6].merge_i_n_37 ,\b2[6].merge_i_n_38 ,\b2[6].merge_i_n_39 ,\b2[6].merge_i_n_40 ,\b2[6].merge_i_n_41 ,\b2[6].merge_i_n_42 ,\b2[6].merge_i_n_43 ,\b2[6].merge_i_n_44 ,\b2[6].merge_i_n_45 ,\b2[6].merge_i_n_46 ,\b2[6].merge_i_n_47 ,\b2[6].merge_i_n_48 ,\b2[6].merge_i_n_49 ,\b2[6].merge_i_n_50 ,\b2[6].merge_i_n_51 ,\b2[6].merge_i_n_52 ,\b2[6].merge_i_n_53 ,\b2[6].merge_i_n_54 ,\b2[6].merge_i_n_55 ,\b2[6].merge_i_n_56 ,\b2[6].merge_i_n_57 ,\b2[6].merge_i_n_58 ,\b2[6].merge_i_n_59 ,\b2[6].merge_i_n_60 ,\b2[6].merge_i_n_61 ,\b2[6].merge_i_n_62 ,\b2[6].merge_i_n_63 ,\b2[6].merge_i_n_64 ,\b2[6].merge_i_n_65 ,\b2[6].merge_i_n_66 ,\b2[6].merge_i_n_67 }),
        ._trace_valid(_trace_valid[7:6]),
        .have_data0(have_data0_4),
        .have_data02_out(have_data02_out_8),
        .have_data02_out_3(have_data02_out_3),
        .have_data0_0(have_data0_0),
        .have_data_reg_0(\b2[6].merge_i_n_3 ),
        .have_data_reg_1(\b2[2].merge_i_n_0 ),
        .trace_clk(trace_clk),
        .valid_5(valid_5),
        .valid_6(valid_6),
        .wrote0_reg_0(wrote0_reg_2),
        .wrote0_reg_1(wrote0_reg_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1
   (wrote0_reg_0,
    have_data0,
    have_data0_3,
    have_data0_0,
    have_data_reg_0,
    have_data0_1,
    have_data0_2,
    have_data0_4,
    E,
    out_data,
    have_data_reg_1,
    trace_clk,
    valid_6,
    ready_i_reg_reg,
    valid_5,
    out_ready,
    valid_1,
    valid_2,
    have_data02_out,
    have_data02_out_5,
    valid_3,
    wrote0_reg_1,
    valid_4,
    D);
  output wrote0_reg_0;
  output have_data0;
  output have_data0_3;
  output have_data0_0;
  output have_data_reg_0;
  output have_data0_1;
  output have_data0_2;
  output have_data0_4;
  output [0:0]E;
  output [63:0]out_data;
  input have_data_reg_1;
  input trace_clk;
  input valid_6;
  input ready_i_reg_reg;
  input valid_5;
  input out_ready;
  input valid_1;
  input valid_2;
  input have_data02_out;
  input have_data02_out_5;
  input valid_3;
  input wrote0_reg_1;
  input valid_4;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire data_i;
  wire have_data0;
  wire have_data02_out;
  wire have_data02_out_5;
  wire have_data0_0;
  wire have_data0_1;
  wire have_data0_2;
  wire have_data0_3;
  wire have_data0_4;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire have_data_reg_1;
  wire [63:0]out_data;
  wire out_ready;
  wire ready_i_reg_reg;
  wire trace_clk;
  wire valid_1;
  wire valid_2;
  wire valid_3;
  wire valid_4;
  wire valid_5;
  wire valid_6;
  wire wrote0_i_1_n_0;
  wire wrote0_reg_0;
  wire wrote0_reg_1;

  LUT5 #(
    .INIT(32'h45454500)) 
    \data_i[63]_i_1__0 
       (.I0(have_data_reg_1),
        .I1(out_ready),
        .I2(have_data_reg_0),
        .I3(valid_2),
        .I4(valid_1),
        .O(data_i));
  LUT4 #(
    .INIT(16'h4440)) 
    \data_i[63]_i_1__2 
       (.I0(have_data_reg_1),
        .I1(have_data0_3),
        .I2(valid_6),
        .I3(valid_5),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0BBBFFFF)) 
    \data_i[63]_i_3 
       (.I0(out_ready),
        .I1(have_data_reg_0),
        .I2(valid_2),
        .I3(wrote0_reg_0),
        .I4(valid_1),
        .O(have_data0_4));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[0]),
        .Q(out_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[10]),
        .Q(out_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[11]),
        .Q(out_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[12]),
        .Q(out_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[13]),
        .Q(out_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[14]),
        .Q(out_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[15]),
        .Q(out_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[16]),
        .Q(out_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[17]),
        .Q(out_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[18]),
        .Q(out_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[19]),
        .Q(out_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[1]),
        .Q(out_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[20]),
        .Q(out_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[21]),
        .Q(out_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[22]),
        .Q(out_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[23]),
        .Q(out_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[24]),
        .Q(out_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[25]),
        .Q(out_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[26]),
        .Q(out_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[27]),
        .Q(out_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[28]),
        .Q(out_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[29]),
        .Q(out_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[2]),
        .Q(out_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[30]),
        .Q(out_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[31]),
        .Q(out_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[32]),
        .Q(out_data[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[33]),
        .Q(out_data[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[34]),
        .Q(out_data[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[35]),
        .Q(out_data[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[36]),
        .Q(out_data[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[37]),
        .Q(out_data[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[38]),
        .Q(out_data[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[39]),
        .Q(out_data[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[3]),
        .Q(out_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[40]),
        .Q(out_data[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[41]),
        .Q(out_data[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[42]),
        .Q(out_data[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[43]),
        .Q(out_data[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[44]),
        .Q(out_data[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[45]),
        .Q(out_data[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[46]),
        .Q(out_data[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[47]),
        .Q(out_data[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[48]),
        .Q(out_data[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[49]),
        .Q(out_data[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[4]),
        .Q(out_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[50]),
        .Q(out_data[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[51]),
        .Q(out_data[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[52]),
        .Q(out_data[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[53]),
        .Q(out_data[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[54]),
        .Q(out_data[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[55]),
        .Q(out_data[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[56]),
        .Q(out_data[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[57]),
        .Q(out_data[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[58]),
        .Q(out_data[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[59]),
        .Q(out_data[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[5]),
        .Q(out_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[60]),
        .Q(out_data[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[61]),
        .Q(out_data[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[62]),
        .Q(out_data[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[63]),
        .Q(out_data[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[6]),
        .Q(out_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[7]),
        .Q(out_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[8]),
        .Q(out_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(data_i),
        .D(D[9]),
        .Q(out_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    have_data_i_1
       (.I0(out_ready),
        .I1(have_data_reg_0),
        .I2(valid_2),
        .I3(valid_1),
        .O(have_data_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB0BBFFFF)) 
    have_data_i_2
       (.I0(out_ready),
        .I1(have_data_reg_0),
        .I2(wrote0_reg_0),
        .I3(valid_1),
        .I4(valid_2),
        .O(have_data0_3));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(have_data_reg_0),
        .R(have_data_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2AFF)) 
    ready_i_reg_i_2
       (.I0(have_data0_3),
        .I1(valid_6),
        .I2(ready_i_reg_reg),
        .I3(valid_5),
        .O(have_data0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8AFF)) 
    ready_i_reg_i_2__0
       (.I0(have_data0_3),
        .I1(ready_i_reg_reg),
        .I2(valid_5),
        .I3(valid_6),
        .O(have_data0_0));
  LUT6 #(
    .INIT(64'hB0FF0000FFFFFFFF)) 
    ready_i_reg_i_2__1
       (.I0(out_ready),
        .I1(have_data_reg_0),
        .I2(have_data02_out),
        .I3(valid_1),
        .I4(have_data02_out_5),
        .I5(valid_3),
        .O(have_data0_1));
  LUT4 #(
    .INIT(16'h8AFF)) 
    ready_i_reg_i_2__2
       (.I0(have_data0_4),
        .I1(wrote0_reg_1),
        .I2(valid_3),
        .I3(valid_4),
        .O(have_data0_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5C5CF05C)) 
    wrote0_i_1
       (.I0(valid_2),
        .I1(valid_1),
        .I2(wrote0_reg_0),
        .I3(have_data_reg_0),
        .I4(out_ready),
        .O(wrote0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_i_1_n_0),
        .Q(wrote0_reg_0),
        .R(have_data_reg_1));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11
   (wrote0_reg_0,
    D,
    valid_1,
    wrote0_reg_1,
    wrote0_reg_2,
    trace_clk,
    valid_2,
    \data_i_reg[63]_0 ,
    Q,
    E,
    \data_i_reg[63]_1 ,
    valid_4,
    out_ready,
    have_data_reg_0,
    have_data02_out,
    have_data02_out_0);
  output wrote0_reg_0;
  output [63:0]D;
  output valid_1;
  input wrote0_reg_1;
  input wrote0_reg_2;
  input trace_clk;
  input valid_2;
  input \data_i_reg[63]_0 ;
  input [63:0]Q;
  input [0:0]E;
  input [63:0]\data_i_reg[63]_1 ;
  input valid_4;
  input out_ready;
  input have_data_reg_0;
  input have_data02_out;
  input have_data02_out_0;

  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire [63:0]data_i;
  wire \data_i_reg[63]_0 ;
  wire [63:0]\data_i_reg[63]_1 ;
  wire have_data02_out;
  wire have_data02_out_0;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire out_ready;
  wire trace_clk;
  wire valid_1;
  wire valid_2;
  wire valid_4;
  wire wrote0_reg_0;
  wire wrote0_reg_1;
  wire wrote0_reg_2;

  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1 
       (.I0(data_i[0]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1 
       (.I0(data_i[10]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1 
       (.I0(data_i[11]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1 
       (.I0(data_i[12]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1 
       (.I0(data_i[13]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1 
       (.I0(data_i[14]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1 
       (.I0(data_i[15]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1 
       (.I0(data_i[16]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1 
       (.I0(data_i[17]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1 
       (.I0(data_i[18]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1 
       (.I0(data_i[19]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1 
       (.I0(data_i[1]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1 
       (.I0(data_i[20]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1 
       (.I0(data_i[21]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1 
       (.I0(data_i[22]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1 
       (.I0(data_i[23]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1 
       (.I0(data_i[24]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1 
       (.I0(data_i[25]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1 
       (.I0(data_i[26]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1 
       (.I0(data_i[27]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1 
       (.I0(data_i[28]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1 
       (.I0(data_i[29]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1 
       (.I0(data_i[2]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1 
       (.I0(data_i[30]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1 
       (.I0(data_i[31]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[31]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1 
       (.I0(data_i[32]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[32]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1 
       (.I0(data_i[33]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[33]),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1 
       (.I0(data_i[34]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[34]),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1 
       (.I0(data_i[35]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[35]),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1 
       (.I0(data_i[36]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[36]),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1 
       (.I0(data_i[37]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[37]),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1 
       (.I0(data_i[38]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[38]),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1 
       (.I0(data_i[39]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[39]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1 
       (.I0(data_i[3]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1 
       (.I0(data_i[40]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[40]),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1 
       (.I0(data_i[41]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[41]),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1 
       (.I0(data_i[42]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[42]),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1 
       (.I0(data_i[43]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[43]),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1 
       (.I0(data_i[44]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[44]),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1 
       (.I0(data_i[45]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[45]),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1 
       (.I0(data_i[46]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[46]),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1 
       (.I0(data_i[47]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[47]),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1 
       (.I0(data_i[48]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[48]),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1 
       (.I0(data_i[49]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[49]),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1 
       (.I0(data_i[4]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1 
       (.I0(data_i[50]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[50]),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1 
       (.I0(data_i[51]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[51]),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1 
       (.I0(data_i[52]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[52]),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1 
       (.I0(data_i[53]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[53]),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1 
       (.I0(data_i[54]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[54]),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1 
       (.I0(data_i[55]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[55]),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1 
       (.I0(data_i[56]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[56]),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1 
       (.I0(data_i[57]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[57]),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1 
       (.I0(data_i[58]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[58]),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1 
       (.I0(data_i[59]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[59]),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1 
       (.I0(data_i[5]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1 
       (.I0(data_i[60]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[60]),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1 
       (.I0(data_i[61]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[61]),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1 
       (.I0(data_i[62]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[62]),
        .O(D[62]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2 
       (.I0(data_i[63]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[63]),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1 
       (.I0(data_i[6]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1 
       (.I0(data_i[7]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1 
       (.I0(data_i[8]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1 
       (.I0(data_i[9]),
        .I1(valid_2),
        .I2(valid_1),
        .I3(\data_i_reg[63]_0 ),
        .I4(Q[9]),
        .O(D[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [0]),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [10]),
        .Q(data_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [11]),
        .Q(data_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [12]),
        .Q(data_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [13]),
        .Q(data_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [14]),
        .Q(data_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [15]),
        .Q(data_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [16]),
        .Q(data_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [17]),
        .Q(data_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [18]),
        .Q(data_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [19]),
        .Q(data_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [1]),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [20]),
        .Q(data_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [21]),
        .Q(data_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [22]),
        .Q(data_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [23]),
        .Q(data_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [24]),
        .Q(data_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [25]),
        .Q(data_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [26]),
        .Q(data_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [27]),
        .Q(data_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [28]),
        .Q(data_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [29]),
        .Q(data_i[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [2]),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [30]),
        .Q(data_i[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [31]),
        .Q(data_i[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [32]),
        .Q(data_i[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [33]),
        .Q(data_i[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [34]),
        .Q(data_i[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [35]),
        .Q(data_i[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [36]),
        .Q(data_i[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [37]),
        .Q(data_i[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [38]),
        .Q(data_i[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [39]),
        .Q(data_i[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [3]),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [40]),
        .Q(data_i[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [41]),
        .Q(data_i[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [42]),
        .Q(data_i[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [43]),
        .Q(data_i[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [44]),
        .Q(data_i[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [45]),
        .Q(data_i[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [46]),
        .Q(data_i[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [47]),
        .Q(data_i[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [48]),
        .Q(data_i[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [49]),
        .Q(data_i[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [4]),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [50]),
        .Q(data_i[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [51]),
        .Q(data_i[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [52]),
        .Q(data_i[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [53]),
        .Q(data_i[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [54]),
        .Q(data_i[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [55]),
        .Q(data_i[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [56]),
        .Q(data_i[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [57]),
        .Q(data_i[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [58]),
        .Q(data_i[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [59]),
        .Q(data_i[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [5]),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [60]),
        .Q(data_i[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [61]),
        .Q(data_i[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [62]),
        .Q(data_i[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [63]),
        .Q(data_i[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [6]),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [7]),
        .Q(data_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [8]),
        .Q(data_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(E),
        .D(\data_i_reg[63]_1 [9]),
        .Q(data_i[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFAAAA)) 
    have_data_i_1
       (.I0(valid_4),
        .I1(out_ready),
        .I2(have_data_reg_0),
        .I3(have_data02_out),
        .I4(valid_1),
        .I5(have_data02_out_0),
        .O(have_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_1),
        .R(wrote0_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_reg_2),
        .Q(wrote0_reg_0),
        .R(wrote0_reg_1));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12
   (wrote0_reg_0,
    have_data02_out,
    valid_2,
    Q,
    wrote0_reg_1,
    wrote0_reg_2,
    trace_clk,
    valid_1,
    have_data_reg_0,
    have_data0,
    valid_6,
    valid_5,
    E,
    D);
  output wrote0_reg_0;
  output have_data02_out;
  output valid_2;
  output [63:0]Q;
  input wrote0_reg_1;
  input wrote0_reg_2;
  input trace_clk;
  input valid_1;
  input have_data_reg_0;
  input have_data0;
  input valid_6;
  input valid_5;
  input [0:0]E;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire have_data0;
  wire have_data02_out;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire trace_clk;
  wire valid_1;
  wire valid_2;
  wire valid_5;
  wire valid_6;
  wire wrote0_reg_0;
  wire wrote0_reg_1;
  wire wrote0_reg_2;

  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(E),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(E),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(E),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(E),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(E),
        .D(D[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(E),
        .D(D[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(E),
        .D(D[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(E),
        .D(D[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(E),
        .D(D[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(E),
        .D(D[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(E),
        .D(D[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(E),
        .D(D[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(E),
        .D(D[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(E),
        .D(D[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(E),
        .D(D[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(E),
        .D(D[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(E),
        .D(D[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(E),
        .D(D[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(E),
        .D(D[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(E),
        .D(D[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(E),
        .D(D[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(E),
        .D(D[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(E),
        .D(D[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(E),
        .D(D[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(E),
        .D(D[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(E),
        .D(D[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(E),
        .D(D[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(E),
        .D(D[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(E),
        .D(D[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(E),
        .D(D[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(E),
        .D(D[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(E),
        .D(D[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFDA8)) 
    have_data_i_1
       (.I0(have_data0),
        .I1(valid_6),
        .I2(valid_5),
        .I3(valid_2),
        .O(have_data_i_1_n_0));
  LUT3 #(
    .INIT(8'h4C)) 
    have_data_i_2__0
       (.I0(valid_2),
        .I1(valid_1),
        .I2(have_data_reg_0),
        .O(have_data02_out));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_2),
        .R(wrote0_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_reg_2),
        .Q(wrote0_reg_0),
        .R(wrote0_reg_1));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13
   (wrote0_reg_0,
    \data_i_reg[63]_0 ,
    valid_3,
    E,
    have_data_reg_0,
    trace_clk,
    valid_4,
    \data_i_reg[63]_1 ,
    Q,
    have_data0,
    _trace_valid,
    have_data0_1,
    \data_i_reg[0]_0 ,
    \data_i_reg[63]_2 );
  output wrote0_reg_0;
  output [63:0]\data_i_reg[63]_0 ;
  output valid_3;
  output [0:0]E;
  input have_data_reg_0;
  input trace_clk;
  input valid_4;
  input \data_i_reg[63]_1 ;
  input [63:0]Q;
  input have_data0;
  input [1:0]_trace_valid;
  input have_data0_1;
  input [0:0]\data_i_reg[0]_0 ;
  input [63:0]\data_i_reg[63]_2 ;

  wire [0:0]E;
  wire [63:0]Q;
  wire [1:0]_trace_valid;
  wire [0:0]\data_i_reg[0]_0 ;
  wire [63:0]\data_i_reg[63]_0 ;
  wire \data_i_reg[63]_1 ;
  wire [63:0]\data_i_reg[63]_2 ;
  wire \data_i_reg_n_0_[0] ;
  wire \data_i_reg_n_0_[10] ;
  wire \data_i_reg_n_0_[11] ;
  wire \data_i_reg_n_0_[12] ;
  wire \data_i_reg_n_0_[13] ;
  wire \data_i_reg_n_0_[14] ;
  wire \data_i_reg_n_0_[15] ;
  wire \data_i_reg_n_0_[16] ;
  wire \data_i_reg_n_0_[17] ;
  wire \data_i_reg_n_0_[18] ;
  wire \data_i_reg_n_0_[19] ;
  wire \data_i_reg_n_0_[1] ;
  wire \data_i_reg_n_0_[20] ;
  wire \data_i_reg_n_0_[21] ;
  wire \data_i_reg_n_0_[22] ;
  wire \data_i_reg_n_0_[23] ;
  wire \data_i_reg_n_0_[24] ;
  wire \data_i_reg_n_0_[25] ;
  wire \data_i_reg_n_0_[26] ;
  wire \data_i_reg_n_0_[27] ;
  wire \data_i_reg_n_0_[28] ;
  wire \data_i_reg_n_0_[29] ;
  wire \data_i_reg_n_0_[2] ;
  wire \data_i_reg_n_0_[30] ;
  wire \data_i_reg_n_0_[31] ;
  wire \data_i_reg_n_0_[32] ;
  wire \data_i_reg_n_0_[33] ;
  wire \data_i_reg_n_0_[34] ;
  wire \data_i_reg_n_0_[35] ;
  wire \data_i_reg_n_0_[36] ;
  wire \data_i_reg_n_0_[37] ;
  wire \data_i_reg_n_0_[38] ;
  wire \data_i_reg_n_0_[39] ;
  wire \data_i_reg_n_0_[3] ;
  wire \data_i_reg_n_0_[40] ;
  wire \data_i_reg_n_0_[41] ;
  wire \data_i_reg_n_0_[42] ;
  wire \data_i_reg_n_0_[43] ;
  wire \data_i_reg_n_0_[44] ;
  wire \data_i_reg_n_0_[45] ;
  wire \data_i_reg_n_0_[46] ;
  wire \data_i_reg_n_0_[47] ;
  wire \data_i_reg_n_0_[48] ;
  wire \data_i_reg_n_0_[49] ;
  wire \data_i_reg_n_0_[4] ;
  wire \data_i_reg_n_0_[50] ;
  wire \data_i_reg_n_0_[51] ;
  wire \data_i_reg_n_0_[52] ;
  wire \data_i_reg_n_0_[53] ;
  wire \data_i_reg_n_0_[54] ;
  wire \data_i_reg_n_0_[55] ;
  wire \data_i_reg_n_0_[56] ;
  wire \data_i_reg_n_0_[57] ;
  wire \data_i_reg_n_0_[58] ;
  wire \data_i_reg_n_0_[59] ;
  wire \data_i_reg_n_0_[5] ;
  wire \data_i_reg_n_0_[60] ;
  wire \data_i_reg_n_0_[61] ;
  wire \data_i_reg_n_0_[62] ;
  wire \data_i_reg_n_0_[63] ;
  wire \data_i_reg_n_0_[6] ;
  wire \data_i_reg_n_0_[7] ;
  wire \data_i_reg_n_0_[8] ;
  wire \data_i_reg_n_0_[9] ;
  wire have_data0;
  wire have_data0_1;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire trace_clk;
  wire valid_3;
  wire valid_4;
  wire wrote0_i_1__2_n_0;
  wire wrote0_reg_0;

  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__0 
       (.I0(\data_i_reg_n_0_[0] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[0]),
        .O(\data_i_reg[63]_0 [0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__0 
       (.I0(\data_i_reg_n_0_[10] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[10]),
        .O(\data_i_reg[63]_0 [10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__0 
       (.I0(\data_i_reg_n_0_[11] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[11]),
        .O(\data_i_reg[63]_0 [11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__0 
       (.I0(\data_i_reg_n_0_[12] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[12]),
        .O(\data_i_reg[63]_0 [12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__0 
       (.I0(\data_i_reg_n_0_[13] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[13]),
        .O(\data_i_reg[63]_0 [13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__0 
       (.I0(\data_i_reg_n_0_[14] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[14]),
        .O(\data_i_reg[63]_0 [14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__0 
       (.I0(\data_i_reg_n_0_[15] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[15]),
        .O(\data_i_reg[63]_0 [15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__0 
       (.I0(\data_i_reg_n_0_[16] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[16]),
        .O(\data_i_reg[63]_0 [16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__0 
       (.I0(\data_i_reg_n_0_[17] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[17]),
        .O(\data_i_reg[63]_0 [17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__0 
       (.I0(\data_i_reg_n_0_[18] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[18]),
        .O(\data_i_reg[63]_0 [18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__0 
       (.I0(\data_i_reg_n_0_[19] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[19]),
        .O(\data_i_reg[63]_0 [19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__0 
       (.I0(\data_i_reg_n_0_[1] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[1]),
        .O(\data_i_reg[63]_0 [1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__0 
       (.I0(\data_i_reg_n_0_[20] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[20]),
        .O(\data_i_reg[63]_0 [20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__0 
       (.I0(\data_i_reg_n_0_[21] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[21]),
        .O(\data_i_reg[63]_0 [21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__0 
       (.I0(\data_i_reg_n_0_[22] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[22]),
        .O(\data_i_reg[63]_0 [22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__0 
       (.I0(\data_i_reg_n_0_[23] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[23]),
        .O(\data_i_reg[63]_0 [23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__0 
       (.I0(\data_i_reg_n_0_[24] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[24]),
        .O(\data_i_reg[63]_0 [24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__0 
       (.I0(\data_i_reg_n_0_[25] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[25]),
        .O(\data_i_reg[63]_0 [25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__0 
       (.I0(\data_i_reg_n_0_[26] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[26]),
        .O(\data_i_reg[63]_0 [26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__0 
       (.I0(\data_i_reg_n_0_[27] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[27]),
        .O(\data_i_reg[63]_0 [27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__0 
       (.I0(\data_i_reg_n_0_[28] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[28]),
        .O(\data_i_reg[63]_0 [28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__0 
       (.I0(\data_i_reg_n_0_[29] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[29]),
        .O(\data_i_reg[63]_0 [29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__0 
       (.I0(\data_i_reg_n_0_[2] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[2]),
        .O(\data_i_reg[63]_0 [2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__0 
       (.I0(\data_i_reg_n_0_[30] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[30]),
        .O(\data_i_reg[63]_0 [30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__0 
       (.I0(\data_i_reg_n_0_[31] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[31]),
        .O(\data_i_reg[63]_0 [31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__0 
       (.I0(\data_i_reg_n_0_[32] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[32]),
        .O(\data_i_reg[63]_0 [32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__0 
       (.I0(\data_i_reg_n_0_[33] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[33]),
        .O(\data_i_reg[63]_0 [33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__0 
       (.I0(\data_i_reg_n_0_[34] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[34]),
        .O(\data_i_reg[63]_0 [34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__0 
       (.I0(\data_i_reg_n_0_[35] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[35]),
        .O(\data_i_reg[63]_0 [35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__0 
       (.I0(\data_i_reg_n_0_[36] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[36]),
        .O(\data_i_reg[63]_0 [36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__0 
       (.I0(\data_i_reg_n_0_[37] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[37]),
        .O(\data_i_reg[63]_0 [37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__0 
       (.I0(\data_i_reg_n_0_[38] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[38]),
        .O(\data_i_reg[63]_0 [38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__0 
       (.I0(\data_i_reg_n_0_[39] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[39]),
        .O(\data_i_reg[63]_0 [39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__0 
       (.I0(\data_i_reg_n_0_[3] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[3]),
        .O(\data_i_reg[63]_0 [3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__0 
       (.I0(\data_i_reg_n_0_[40] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[40]),
        .O(\data_i_reg[63]_0 [40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__0 
       (.I0(\data_i_reg_n_0_[41] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[41]),
        .O(\data_i_reg[63]_0 [41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__0 
       (.I0(\data_i_reg_n_0_[42] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[42]),
        .O(\data_i_reg[63]_0 [42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__0 
       (.I0(\data_i_reg_n_0_[43] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[43]),
        .O(\data_i_reg[63]_0 [43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__0 
       (.I0(\data_i_reg_n_0_[44] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[44]),
        .O(\data_i_reg[63]_0 [44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__0 
       (.I0(\data_i_reg_n_0_[45] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[45]),
        .O(\data_i_reg[63]_0 [45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__0 
       (.I0(\data_i_reg_n_0_[46] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[46]),
        .O(\data_i_reg[63]_0 [46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__0 
       (.I0(\data_i_reg_n_0_[47] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[47]),
        .O(\data_i_reg[63]_0 [47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__0 
       (.I0(\data_i_reg_n_0_[48] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[48]),
        .O(\data_i_reg[63]_0 [48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__0 
       (.I0(\data_i_reg_n_0_[49] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[49]),
        .O(\data_i_reg[63]_0 [49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__0 
       (.I0(\data_i_reg_n_0_[4] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[4]),
        .O(\data_i_reg[63]_0 [4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__0 
       (.I0(\data_i_reg_n_0_[50] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[50]),
        .O(\data_i_reg[63]_0 [50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__0 
       (.I0(\data_i_reg_n_0_[51] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[51]),
        .O(\data_i_reg[63]_0 [51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__0 
       (.I0(\data_i_reg_n_0_[52] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[52]),
        .O(\data_i_reg[63]_0 [52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__0 
       (.I0(\data_i_reg_n_0_[53] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[53]),
        .O(\data_i_reg[63]_0 [53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__0 
       (.I0(\data_i_reg_n_0_[54] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[54]),
        .O(\data_i_reg[63]_0 [54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__0 
       (.I0(\data_i_reg_n_0_[55] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[55]),
        .O(\data_i_reg[63]_0 [55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__0 
       (.I0(\data_i_reg_n_0_[56] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[56]),
        .O(\data_i_reg[63]_0 [56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__0 
       (.I0(\data_i_reg_n_0_[57] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[57]),
        .O(\data_i_reg[63]_0 [57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__0 
       (.I0(\data_i_reg_n_0_[58] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[58]),
        .O(\data_i_reg[63]_0 [58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__0 
       (.I0(\data_i_reg_n_0_[59] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[59]),
        .O(\data_i_reg[63]_0 [59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__0 
       (.I0(\data_i_reg_n_0_[5] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[5]),
        .O(\data_i_reg[63]_0 [5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__0 
       (.I0(\data_i_reg_n_0_[60] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[60]),
        .O(\data_i_reg[63]_0 [60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__0 
       (.I0(\data_i_reg_n_0_[61] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[61]),
        .O(\data_i_reg[63]_0 [61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__0 
       (.I0(\data_i_reg_n_0_[62] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[62]),
        .O(\data_i_reg[63]_0 [62]));
  LUT4 #(
    .INIT(16'h5400)) 
    \data_i[63]_i_1__1 
       (.I0(have_data_reg_0),
        .I1(valid_3),
        .I2(valid_4),
        .I3(have_data0),
        .O(E));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__0 
       (.I0(\data_i_reg_n_0_[63] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[63]),
        .O(\data_i_reg[63]_0 [63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__0 
       (.I0(\data_i_reg_n_0_[6] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[6]),
        .O(\data_i_reg[63]_0 [6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__0 
       (.I0(\data_i_reg_n_0_[7] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[7]),
        .O(\data_i_reg[63]_0 [7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__0 
       (.I0(\data_i_reg_n_0_[8] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[8]),
        .O(\data_i_reg[63]_0 [8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__0 
       (.I0(\data_i_reg_n_0_[9] ),
        .I1(valid_4),
        .I2(valid_3),
        .I3(\data_i_reg[63]_1 ),
        .I4(Q[9]),
        .O(\data_i_reg[63]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [0]),
        .Q(\data_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [10]),
        .Q(\data_i_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [11]),
        .Q(\data_i_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [12]),
        .Q(\data_i_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [13]),
        .Q(\data_i_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [14]),
        .Q(\data_i_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [15]),
        .Q(\data_i_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [16]),
        .Q(\data_i_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [17]),
        .Q(\data_i_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [18]),
        .Q(\data_i_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [19]),
        .Q(\data_i_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [1]),
        .Q(\data_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [20]),
        .Q(\data_i_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [21]),
        .Q(\data_i_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [22]),
        .Q(\data_i_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [23]),
        .Q(\data_i_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [24]),
        .Q(\data_i_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [25]),
        .Q(\data_i_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [26]),
        .Q(\data_i_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [27]),
        .Q(\data_i_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [28]),
        .Q(\data_i_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [29]),
        .Q(\data_i_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [2]),
        .Q(\data_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [30]),
        .Q(\data_i_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [31]),
        .Q(\data_i_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [32]),
        .Q(\data_i_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [33]),
        .Q(\data_i_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [34]),
        .Q(\data_i_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [35]),
        .Q(\data_i_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [36]),
        .Q(\data_i_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [37]),
        .Q(\data_i_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [38]),
        .Q(\data_i_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [39]),
        .Q(\data_i_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [3]),
        .Q(\data_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [40]),
        .Q(\data_i_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [41]),
        .Q(\data_i_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [42]),
        .Q(\data_i_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [43]),
        .Q(\data_i_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [44]),
        .Q(\data_i_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [45]),
        .Q(\data_i_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [46]),
        .Q(\data_i_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [47]),
        .Q(\data_i_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [48]),
        .Q(\data_i_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [49]),
        .Q(\data_i_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [4]),
        .Q(\data_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [50]),
        .Q(\data_i_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [51]),
        .Q(\data_i_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [52]),
        .Q(\data_i_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [53]),
        .Q(\data_i_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [54]),
        .Q(\data_i_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [55]),
        .Q(\data_i_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [56]),
        .Q(\data_i_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [57]),
        .Q(\data_i_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [58]),
        .Q(\data_i_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [59]),
        .Q(\data_i_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [5]),
        .Q(\data_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [60]),
        .Q(\data_i_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [61]),
        .Q(\data_i_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [62]),
        .Q(\data_i_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [63]),
        .Q(\data_i_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [6]),
        .Q(\data_i_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [7]),
        .Q(\data_i_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [8]),
        .Q(\data_i_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_2 [9]),
        .Q(\data_i_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFDA8)) 
    have_data_i_1
       (.I0(have_data0_1),
        .I1(_trace_valid[1]),
        .I2(_trace_valid[0]),
        .I3(valid_3),
        .O(have_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_3),
        .R(have_data_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5CF0)) 
    wrote0_i_1__2
       (.I0(_trace_valid[1]),
        .I1(_trace_valid[0]),
        .I2(wrote0_reg_0),
        .I3(have_data0_1),
        .O(wrote0_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_i_1__2_n_0),
        .Q(wrote0_reg_0),
        .R(have_data_reg_0));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_14
   (wrote0_reg_0,
    have_data02_out,
    valid_4,
    have_data_reg_0,
    Q,
    have_data_reg_1,
    trace_clk,
    valid_3,
    have_data_reg_2,
    have_data0,
    _trace_valid,
    have_data0_2,
    \data_i_reg[0]_0 ,
    \data_i_reg[63]_0 ,
    have_data02_out_4);
  output wrote0_reg_0;
  output have_data02_out;
  output valid_4;
  output have_data_reg_0;
  output [63:0]Q;
  input have_data_reg_1;
  input trace_clk;
  input valid_3;
  input have_data_reg_2;
  input have_data0;
  input [1:0]_trace_valid;
  input have_data0_2;
  input [0:0]\data_i_reg[0]_0 ;
  input [63:0]\data_i_reg[63]_0 ;
  input have_data02_out_4;

  wire [63:0]Q;
  wire [1:0]_trace_valid;
  wire [0:0]\data_i_reg[0]_0 ;
  wire [63:0]\data_i_reg[63]_0 ;
  wire have_data0;
  wire have_data02_out;
  wire have_data02_out_4;
  wire have_data0_2;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire have_data_reg_1;
  wire have_data_reg_2;
  wire trace_clk;
  wire valid_3;
  wire valid_4;
  wire wrote0_i_1__3_n_0;
  wire wrote0_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(\data_i_reg[0]_0 ),
        .D(\data_i_reg[63]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFBBAAAA)) 
    have_data_i_1
       (.I0(_trace_valid[1]),
        .I1(have_data0),
        .I2(have_data_reg_2),
        .I3(valid_3),
        .I4(valid_4),
        .I5(have_data02_out_4),
        .O(have_data_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    have_data_i_3
       (.I0(valid_4),
        .I1(valid_3),
        .I2(have_data_reg_2),
        .O(have_data02_out));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_4),
        .R(have_data_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h5CF0)) 
    wrote0_i_1__0
       (.I0(valid_4),
        .I1(valid_3),
        .I2(have_data_reg_2),
        .I3(have_data0),
        .O(have_data_reg_0));
  LUT4 #(
    .INIT(16'h5CF0)) 
    wrote0_i_1__3
       (.I0(_trace_valid[1]),
        .I1(_trace_valid[0]),
        .I2(wrote0_reg_0),
        .I3(have_data0_2),
        .O(wrote0_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_i_1__3_n_0),
        .Q(wrote0_reg_0),
        .R(have_data_reg_1));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_15
   (wrote0_reg_0,
    valid_5,
    D,
    wrote0_reg_1,
    trace_clk,
    have_data02_out,
    _trace_valid,
    have_data02_out_0,
    have_data0,
    valid_6,
    have_data_reg_0,
    Q,
    \data_i_reg[63]_0 );
  output wrote0_reg_0;
  output valid_5;
  output [63:0]D;
  input wrote0_reg_1;
  input trace_clk;
  input have_data02_out;
  input [1:0]_trace_valid;
  input have_data02_out_0;
  input have_data0;
  input valid_6;
  input have_data_reg_0;
  input [63:0]Q;
  input [63:0]\data_i_reg[63]_0 ;

  wire [63:0]D;
  wire [63:0]Q;
  wire [1:0]_trace_valid;
  wire data_i;
  wire [63:0]\data_i_reg[63]_0 ;
  wire \data_i_reg_n_0_[0] ;
  wire \data_i_reg_n_0_[10] ;
  wire \data_i_reg_n_0_[11] ;
  wire \data_i_reg_n_0_[12] ;
  wire \data_i_reg_n_0_[13] ;
  wire \data_i_reg_n_0_[14] ;
  wire \data_i_reg_n_0_[15] ;
  wire \data_i_reg_n_0_[16] ;
  wire \data_i_reg_n_0_[17] ;
  wire \data_i_reg_n_0_[18] ;
  wire \data_i_reg_n_0_[19] ;
  wire \data_i_reg_n_0_[1] ;
  wire \data_i_reg_n_0_[20] ;
  wire \data_i_reg_n_0_[21] ;
  wire \data_i_reg_n_0_[22] ;
  wire \data_i_reg_n_0_[23] ;
  wire \data_i_reg_n_0_[24] ;
  wire \data_i_reg_n_0_[25] ;
  wire \data_i_reg_n_0_[26] ;
  wire \data_i_reg_n_0_[27] ;
  wire \data_i_reg_n_0_[28] ;
  wire \data_i_reg_n_0_[29] ;
  wire \data_i_reg_n_0_[2] ;
  wire \data_i_reg_n_0_[30] ;
  wire \data_i_reg_n_0_[31] ;
  wire \data_i_reg_n_0_[32] ;
  wire \data_i_reg_n_0_[33] ;
  wire \data_i_reg_n_0_[34] ;
  wire \data_i_reg_n_0_[35] ;
  wire \data_i_reg_n_0_[36] ;
  wire \data_i_reg_n_0_[37] ;
  wire \data_i_reg_n_0_[38] ;
  wire \data_i_reg_n_0_[39] ;
  wire \data_i_reg_n_0_[3] ;
  wire \data_i_reg_n_0_[40] ;
  wire \data_i_reg_n_0_[41] ;
  wire \data_i_reg_n_0_[42] ;
  wire \data_i_reg_n_0_[43] ;
  wire \data_i_reg_n_0_[44] ;
  wire \data_i_reg_n_0_[45] ;
  wire \data_i_reg_n_0_[46] ;
  wire \data_i_reg_n_0_[47] ;
  wire \data_i_reg_n_0_[48] ;
  wire \data_i_reg_n_0_[49] ;
  wire \data_i_reg_n_0_[4] ;
  wire \data_i_reg_n_0_[50] ;
  wire \data_i_reg_n_0_[51] ;
  wire \data_i_reg_n_0_[52] ;
  wire \data_i_reg_n_0_[53] ;
  wire \data_i_reg_n_0_[54] ;
  wire \data_i_reg_n_0_[55] ;
  wire \data_i_reg_n_0_[56] ;
  wire \data_i_reg_n_0_[57] ;
  wire \data_i_reg_n_0_[58] ;
  wire \data_i_reg_n_0_[59] ;
  wire \data_i_reg_n_0_[5] ;
  wire \data_i_reg_n_0_[60] ;
  wire \data_i_reg_n_0_[61] ;
  wire \data_i_reg_n_0_[62] ;
  wire \data_i_reg_n_0_[63] ;
  wire \data_i_reg_n_0_[6] ;
  wire \data_i_reg_n_0_[7] ;
  wire \data_i_reg_n_0_[8] ;
  wire \data_i_reg_n_0_[9] ;
  wire have_data0;
  wire have_data02_out;
  wire have_data02_out_0;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire trace_clk;
  wire valid_5;
  wire valid_6;
  wire wrote0_i_1__4_n_0;
  wire wrote0_reg_0;
  wire wrote0_reg_1;

  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__3 
       (.I0(\data_i_reg_n_0_[0] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__3 
       (.I0(\data_i_reg_n_0_[10] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__3 
       (.I0(\data_i_reg_n_0_[11] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__3 
       (.I0(\data_i_reg_n_0_[12] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__3 
       (.I0(\data_i_reg_n_0_[13] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__3 
       (.I0(\data_i_reg_n_0_[14] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__3 
       (.I0(\data_i_reg_n_0_[15] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__3 
       (.I0(\data_i_reg_n_0_[16] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__3 
       (.I0(\data_i_reg_n_0_[17] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__3 
       (.I0(\data_i_reg_n_0_[18] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__3 
       (.I0(\data_i_reg_n_0_[19] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__3 
       (.I0(\data_i_reg_n_0_[1] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__3 
       (.I0(\data_i_reg_n_0_[20] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__3 
       (.I0(\data_i_reg_n_0_[21] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__3 
       (.I0(\data_i_reg_n_0_[22] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__3 
       (.I0(\data_i_reg_n_0_[23] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__3 
       (.I0(\data_i_reg_n_0_[24] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__3 
       (.I0(\data_i_reg_n_0_[25] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__3 
       (.I0(\data_i_reg_n_0_[26] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__3 
       (.I0(\data_i_reg_n_0_[27] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__3 
       (.I0(\data_i_reg_n_0_[28] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__3 
       (.I0(\data_i_reg_n_0_[29] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__3 
       (.I0(\data_i_reg_n_0_[2] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__3 
       (.I0(\data_i_reg_n_0_[30] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__3 
       (.I0(\data_i_reg_n_0_[31] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[31]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__3 
       (.I0(\data_i_reg_n_0_[32] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[32]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__3 
       (.I0(\data_i_reg_n_0_[33] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[33]),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__3 
       (.I0(\data_i_reg_n_0_[34] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[34]),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__3 
       (.I0(\data_i_reg_n_0_[35] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[35]),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__3 
       (.I0(\data_i_reg_n_0_[36] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[36]),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__3 
       (.I0(\data_i_reg_n_0_[37] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[37]),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__3 
       (.I0(\data_i_reg_n_0_[38] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[38]),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__3 
       (.I0(\data_i_reg_n_0_[39] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[39]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__3 
       (.I0(\data_i_reg_n_0_[3] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__3 
       (.I0(\data_i_reg_n_0_[40] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[40]),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__3 
       (.I0(\data_i_reg_n_0_[41] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[41]),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__3 
       (.I0(\data_i_reg_n_0_[42] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[42]),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__3 
       (.I0(\data_i_reg_n_0_[43] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[43]),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__3 
       (.I0(\data_i_reg_n_0_[44] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[44]),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__3 
       (.I0(\data_i_reg_n_0_[45] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[45]),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__3 
       (.I0(\data_i_reg_n_0_[46] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[46]),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__3 
       (.I0(\data_i_reg_n_0_[47] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[47]),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__3 
       (.I0(\data_i_reg_n_0_[48] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[48]),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__3 
       (.I0(\data_i_reg_n_0_[49] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[49]),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__3 
       (.I0(\data_i_reg_n_0_[4] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__3 
       (.I0(\data_i_reg_n_0_[50] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[50]),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__3 
       (.I0(\data_i_reg_n_0_[51] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[51]),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__3 
       (.I0(\data_i_reg_n_0_[52] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[52]),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__3 
       (.I0(\data_i_reg_n_0_[53] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[53]),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__3 
       (.I0(\data_i_reg_n_0_[54] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[54]),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__3 
       (.I0(\data_i_reg_n_0_[55] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[55]),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__3 
       (.I0(\data_i_reg_n_0_[56] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[56]),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__3 
       (.I0(\data_i_reg_n_0_[57] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[57]),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__3 
       (.I0(\data_i_reg_n_0_[58] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[58]),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__3 
       (.I0(\data_i_reg_n_0_[59] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[59]),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__3 
       (.I0(\data_i_reg_n_0_[5] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__3 
       (.I0(\data_i_reg_n_0_[60] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[60]),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__3 
       (.I0(\data_i_reg_n_0_[61] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[61]),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__3 
       (.I0(\data_i_reg_n_0_[62] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[62]),
        .O(D[62]));
  LUT6 #(
    .INIT(64'h5454005400540054)) 
    \data_i[63]_i_1 
       (.I0(wrote0_reg_1),
        .I1(have_data02_out),
        .I2(_trace_valid[1]),
        .I3(valid_5),
        .I4(have_data02_out_0),
        .I5(have_data0),
        .O(data_i));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__3 
       (.I0(\data_i_reg_n_0_[63] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[63]),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__3 
       (.I0(\data_i_reg_n_0_[6] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__3 
       (.I0(\data_i_reg_n_0_[7] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__3 
       (.I0(\data_i_reg_n_0_[8] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__3 
       (.I0(\data_i_reg_n_0_[9] ),
        .I1(valid_6),
        .I2(valid_5),
        .I3(have_data_reg_0),
        .I4(Q[9]),
        .O(D[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [0]),
        .Q(\data_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [10]),
        .Q(\data_i_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [11]),
        .Q(\data_i_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [12]),
        .Q(\data_i_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [13]),
        .Q(\data_i_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [14]),
        .Q(\data_i_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [15]),
        .Q(\data_i_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [16]),
        .Q(\data_i_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [17]),
        .Q(\data_i_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [18]),
        .Q(\data_i_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [19]),
        .Q(\data_i_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [1]),
        .Q(\data_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [20]),
        .Q(\data_i_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [21]),
        .Q(\data_i_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [22]),
        .Q(\data_i_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [23]),
        .Q(\data_i_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [24]),
        .Q(\data_i_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [25]),
        .Q(\data_i_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [26]),
        .Q(\data_i_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [27]),
        .Q(\data_i_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [28]),
        .Q(\data_i_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [29]),
        .Q(\data_i_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [2]),
        .Q(\data_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [30]),
        .Q(\data_i_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [31]),
        .Q(\data_i_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [32]),
        .Q(\data_i_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [33]),
        .Q(\data_i_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [34]),
        .Q(\data_i_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [35]),
        .Q(\data_i_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [36]),
        .Q(\data_i_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [37]),
        .Q(\data_i_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [38]),
        .Q(\data_i_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [39]),
        .Q(\data_i_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [3]),
        .Q(\data_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [40]),
        .Q(\data_i_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [41]),
        .Q(\data_i_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [42]),
        .Q(\data_i_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [43]),
        .Q(\data_i_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [44]),
        .Q(\data_i_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [45]),
        .Q(\data_i_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [46]),
        .Q(\data_i_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [47]),
        .Q(\data_i_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [48]),
        .Q(\data_i_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [49]),
        .Q(\data_i_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [4]),
        .Q(\data_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [50]),
        .Q(\data_i_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [51]),
        .Q(\data_i_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [52]),
        .Q(\data_i_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [53]),
        .Q(\data_i_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [54]),
        .Q(\data_i_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [55]),
        .Q(\data_i_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [56]),
        .Q(\data_i_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [57]),
        .Q(\data_i_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [58]),
        .Q(\data_i_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [59]),
        .Q(\data_i_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [5]),
        .Q(\data_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [60]),
        .Q(\data_i_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [61]),
        .Q(\data_i_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [62]),
        .Q(\data_i_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [63]),
        .Q(\data_i_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [6]),
        .Q(\data_i_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [7]),
        .Q(\data_i_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [8]),
        .Q(\data_i_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(data_i),
        .D(\data_i_reg[63]_0 [9]),
        .Q(\data_i_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBBBAAAA)) 
    have_data_i_1
       (.I0(_trace_valid[1]),
        .I1(have_data0),
        .I2(valid_6),
        .I3(have_data_reg_0),
        .I4(valid_5),
        .I5(have_data02_out),
        .O(have_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_5),
        .R(wrote0_reg_1));
  LUT6 #(
    .INIT(64'h5C5CF05CF05CF05C)) 
    wrote0_i_1__4
       (.I0(_trace_valid[1]),
        .I1(_trace_valid[0]),
        .I2(wrote0_reg_0),
        .I3(valid_5),
        .I4(have_data02_out_0),
        .I5(have_data0),
        .O(wrote0_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_i_1__4_n_0),
        .Q(wrote0_reg_0),
        .R(wrote0_reg_1));
endmodule

(* ORIG_REF_NAME = "stream_merge2to1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_16
   (wrote0_reg_0,
    have_data02_out,
    valid_6,
    have_data_reg_0,
    Q,
    wrote0_reg_1,
    trace_clk,
    valid_5,
    have_data_reg_1,
    have_data0,
    _trace_valid,
    have_data0_0,
    have_data02_out_3,
    E,
    D);
  output wrote0_reg_0;
  output have_data02_out;
  output valid_6;
  output have_data_reg_0;
  output [63:0]Q;
  input wrote0_reg_1;
  input trace_clk;
  input valid_5;
  input have_data_reg_1;
  input have_data0;
  input [1:0]_trace_valid;
  input have_data0_0;
  input have_data02_out_3;
  input [0:0]E;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire [1:0]_trace_valid;
  wire have_data0;
  wire have_data02_out;
  wire have_data02_out_3;
  wire have_data0_0;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire have_data_reg_1;
  wire trace_clk;
  wire valid_5;
  wire valid_6;
  wire wrote0_i_1__5_n_0;
  wire wrote0_reg_0;
  wire wrote0_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    \data_i[63]_i_4 
       (.I0(valid_6),
        .I1(valid_5),
        .I2(have_data_reg_1),
        .O(have_data02_out));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[0] 
       (.C(trace_clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[10] 
       (.C(trace_clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[11] 
       (.C(trace_clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[12] 
       (.C(trace_clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[13] 
       (.C(trace_clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[14] 
       (.C(trace_clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[15] 
       (.C(trace_clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[16] 
       (.C(trace_clk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[17] 
       (.C(trace_clk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[18] 
       (.C(trace_clk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[19] 
       (.C(trace_clk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[1] 
       (.C(trace_clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[20] 
       (.C(trace_clk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[21] 
       (.C(trace_clk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[22] 
       (.C(trace_clk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[23] 
       (.C(trace_clk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[24] 
       (.C(trace_clk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[25] 
       (.C(trace_clk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[26] 
       (.C(trace_clk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[27] 
       (.C(trace_clk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[28] 
       (.C(trace_clk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[29] 
       (.C(trace_clk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[2] 
       (.C(trace_clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[30] 
       (.C(trace_clk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[31] 
       (.C(trace_clk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(trace_clk),
        .CE(E),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(trace_clk),
        .CE(E),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(trace_clk),
        .CE(E),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(trace_clk),
        .CE(E),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(trace_clk),
        .CE(E),
        .D(D[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(trace_clk),
        .CE(E),
        .D(D[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(trace_clk),
        .CE(E),
        .D(D[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(trace_clk),
        .CE(E),
        .D(D[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[3] 
       (.C(trace_clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(trace_clk),
        .CE(E),
        .D(D[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(trace_clk),
        .CE(E),
        .D(D[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(trace_clk),
        .CE(E),
        .D(D[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(trace_clk),
        .CE(E),
        .D(D[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(trace_clk),
        .CE(E),
        .D(D[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(trace_clk),
        .CE(E),
        .D(D[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(trace_clk),
        .CE(E),
        .D(D[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(trace_clk),
        .CE(E),
        .D(D[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[48] 
       (.C(trace_clk),
        .CE(E),
        .D(D[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[49] 
       (.C(trace_clk),
        .CE(E),
        .D(D[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[4] 
       (.C(trace_clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[50] 
       (.C(trace_clk),
        .CE(E),
        .D(D[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[51] 
       (.C(trace_clk),
        .CE(E),
        .D(D[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[52] 
       (.C(trace_clk),
        .CE(E),
        .D(D[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[53] 
       (.C(trace_clk),
        .CE(E),
        .D(D[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[54] 
       (.C(trace_clk),
        .CE(E),
        .D(D[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[55] 
       (.C(trace_clk),
        .CE(E),
        .D(D[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[56] 
       (.C(trace_clk),
        .CE(E),
        .D(D[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[57] 
       (.C(trace_clk),
        .CE(E),
        .D(D[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[58] 
       (.C(trace_clk),
        .CE(E),
        .D(D[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[59] 
       (.C(trace_clk),
        .CE(E),
        .D(D[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[5] 
       (.C(trace_clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[60] 
       (.C(trace_clk),
        .CE(E),
        .D(D[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[61] 
       (.C(trace_clk),
        .CE(E),
        .D(D[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[62] 
       (.C(trace_clk),
        .CE(E),
        .D(D[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[63] 
       (.C(trace_clk),
        .CE(E),
        .D(D[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[6] 
       (.C(trace_clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[7] 
       (.C(trace_clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[8] 
       (.C(trace_clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[9] 
       (.C(trace_clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFBBAAAA)) 
    have_data_i_1
       (.I0(_trace_valid[1]),
        .I1(have_data0),
        .I2(have_data_reg_1),
        .I3(valid_5),
        .I4(valid_6),
        .I5(have_data02_out_3),
        .O(have_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(valid_6),
        .R(wrote0_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5CF0)) 
    wrote0_i_1__1
       (.I0(valid_6),
        .I1(valid_5),
        .I2(have_data_reg_1),
        .I3(have_data0),
        .O(have_data_reg_0));
  LUT4 #(
    .INIT(16'h5CF0)) 
    wrote0_i_1__5
       (.I0(_trace_valid[1]),
        .I1(_trace_valid[0]),
        .I2(wrote0_reg_0),
        .I3(have_data0_0),
        .O(wrote0_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrote0_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(wrote0_i_1__5_n_0),
        .Q(wrote0_reg_0),
        .R(wrote0_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice
   (_trace_valid,
    sw_read,
    D,
    E,
    trace_clk,
    empty,
    ready_i_reg_reg_0,
    ready_i_reg_reg_1,
    have_data0,
    have_data_reg_0,
    \data_i_reg[63] ,
    \data_i_reg[62] ,
    \data_i_reg[61] ,
    \data_i_reg[60] ,
    \data_i_reg[59] ,
    \data_i_reg[58] ,
    \data_i_reg[57] ,
    \data_i_reg[56] ,
    \data_i_reg[55] ,
    \data_i_reg[54] ,
    \data_i_reg[53] ,
    \data_i_reg[52] ,
    \data_i_reg[51] ,
    \data_i_reg[50] ,
    \data_i_reg[49] ,
    \data_i_reg[48] ,
    \data_i_reg[47] ,
    \data_i_reg[46] ,
    \data_i_reg[45] ,
    \data_i_reg[44] ,
    \data_i_reg[43] ,
    \data_i_reg[42] ,
    \data_i_reg[41] ,
    \data_i_reg[40] ,
    \data_i_reg[39] ,
    \data_i_reg[38] ,
    \data_i_reg[37] ,
    \data_i_reg[36] ,
    \data_i_reg[35] ,
    \data_i_reg[34] ,
    \data_i_reg[33] ,
    \data_i_reg[32] ,
    \data_i_reg[31] ,
    \data_i_reg[30] ,
    \data_i_reg[29] ,
    \data_i_reg[28] ,
    \data_i_reg[27] ,
    \data_i_reg[26] ,
    \data_i_reg[25] ,
    \data_i_reg[24] ,
    \data_i_reg[23] ,
    \data_i_reg[22] ,
    \data_i_reg[21] ,
    \data_i_reg[20] ,
    \data_i_reg[19] ,
    \data_i_reg[18] ,
    \data_i_reg[17] ,
    \data_i_reg[16] ,
    \data_i_reg[15] ,
    \data_i_reg[14] ,
    \data_i_reg[13] ,
    \data_i_reg[12] ,
    \data_i_reg[11] ,
    \data_i_reg[10] ,
    \data_i_reg[9] ,
    \data_i_reg[8] ,
    \data_i_reg[7] ,
    \data_i_reg[6] ,
    \data_i_reg[5] ,
    \data_i_reg[4] ,
    \data_i_reg[3] ,
    \data_i_reg[2] ,
    \data_i_reg[1] ,
    \data_i_reg[0] ,
    dout);
  output [0:0]_trace_valid;
  output sw_read;
  output [63:0]D;
  output [0:0]E;
  input trace_clk;
  input empty;
  input ready_i_reg_reg_0;
  input [0:0]ready_i_reg_reg_1;
  input have_data0;
  input have_data_reg_0;
  input \data_i_reg[63] ;
  input \data_i_reg[62] ;
  input \data_i_reg[61] ;
  input \data_i_reg[60] ;
  input \data_i_reg[59] ;
  input \data_i_reg[58] ;
  input \data_i_reg[57] ;
  input \data_i_reg[56] ;
  input \data_i_reg[55] ;
  input \data_i_reg[54] ;
  input \data_i_reg[53] ;
  input \data_i_reg[52] ;
  input \data_i_reg[51] ;
  input \data_i_reg[50] ;
  input \data_i_reg[49] ;
  input \data_i_reg[48] ;
  input \data_i_reg[47] ;
  input \data_i_reg[46] ;
  input \data_i_reg[45] ;
  input \data_i_reg[44] ;
  input \data_i_reg[43] ;
  input \data_i_reg[42] ;
  input \data_i_reg[41] ;
  input \data_i_reg[40] ;
  input \data_i_reg[39] ;
  input \data_i_reg[38] ;
  input \data_i_reg[37] ;
  input \data_i_reg[36] ;
  input \data_i_reg[35] ;
  input \data_i_reg[34] ;
  input \data_i_reg[33] ;
  input \data_i_reg[32] ;
  input \data_i_reg[31] ;
  input \data_i_reg[30] ;
  input \data_i_reg[29] ;
  input \data_i_reg[28] ;
  input \data_i_reg[27] ;
  input \data_i_reg[26] ;
  input \data_i_reg[25] ;
  input \data_i_reg[24] ;
  input \data_i_reg[23] ;
  input \data_i_reg[22] ;
  input \data_i_reg[21] ;
  input \data_i_reg[20] ;
  input \data_i_reg[19] ;
  input \data_i_reg[18] ;
  input \data_i_reg[17] ;
  input \data_i_reg[16] ;
  input \data_i_reg[15] ;
  input \data_i_reg[14] ;
  input \data_i_reg[13] ;
  input \data_i_reg[12] ;
  input \data_i_reg[11] ;
  input \data_i_reg[10] ;
  input \data_i_reg[9] ;
  input \data_i_reg[8] ;
  input \data_i_reg[7] ;
  input \data_i_reg[6] ;
  input \data_i_reg[5] ;
  input \data_i_reg[4] ;
  input \data_i_reg[3] ;
  input \data_i_reg[2] ;
  input \data_i_reg[1] ;
  input \data_i_reg[0] ;
  input [63:0]dout;

  wire [63:0]D;
  wire [0:0]E;
  wire [0:0]_trace_valid;
  wire [63:0]buffer;
  wire \buffer[63]_i_1_n_0 ;
  wire \buffer[63]_i_2__4_n_0 ;
  wire \data_i_reg[0] ;
  wire \data_i_reg[10] ;
  wire \data_i_reg[11] ;
  wire \data_i_reg[12] ;
  wire \data_i_reg[13] ;
  wire \data_i_reg[14] ;
  wire \data_i_reg[15] ;
  wire \data_i_reg[16] ;
  wire \data_i_reg[17] ;
  wire \data_i_reg[18] ;
  wire \data_i_reg[19] ;
  wire \data_i_reg[1] ;
  wire \data_i_reg[20] ;
  wire \data_i_reg[21] ;
  wire \data_i_reg[22] ;
  wire \data_i_reg[23] ;
  wire \data_i_reg[24] ;
  wire \data_i_reg[25] ;
  wire \data_i_reg[26] ;
  wire \data_i_reg[27] ;
  wire \data_i_reg[28] ;
  wire \data_i_reg[29] ;
  wire \data_i_reg[2] ;
  wire \data_i_reg[30] ;
  wire \data_i_reg[31] ;
  wire \data_i_reg[32] ;
  wire \data_i_reg[33] ;
  wire \data_i_reg[34] ;
  wire \data_i_reg[35] ;
  wire \data_i_reg[36] ;
  wire \data_i_reg[37] ;
  wire \data_i_reg[38] ;
  wire \data_i_reg[39] ;
  wire \data_i_reg[3] ;
  wire \data_i_reg[40] ;
  wire \data_i_reg[41] ;
  wire \data_i_reg[42] ;
  wire \data_i_reg[43] ;
  wire \data_i_reg[44] ;
  wire \data_i_reg[45] ;
  wire \data_i_reg[46] ;
  wire \data_i_reg[47] ;
  wire \data_i_reg[48] ;
  wire \data_i_reg[49] ;
  wire \data_i_reg[4] ;
  wire \data_i_reg[50] ;
  wire \data_i_reg[51] ;
  wire \data_i_reg[52] ;
  wire \data_i_reg[53] ;
  wire \data_i_reg[54] ;
  wire \data_i_reg[55] ;
  wire \data_i_reg[56] ;
  wire \data_i_reg[57] ;
  wire \data_i_reg[58] ;
  wire \data_i_reg[59] ;
  wire \data_i_reg[5] ;
  wire \data_i_reg[60] ;
  wire \data_i_reg[61] ;
  wire \data_i_reg[62] ;
  wire \data_i_reg[63] ;
  wire \data_i_reg[6] ;
  wire \data_i_reg[7] ;
  wire \data_i_reg[8] ;
  wire \data_i_reg[9] ;
  wire [63:0]dout;
  wire empty;
  wire have_data0;
  wire have_data_i_1__4_n_0;
  wire have_data_reg_0;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire [0:0]ready_i_reg_reg_1;
  wire sw_read;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1 
       (.I0(have_data_reg_0),
        .I1(sw_read),
        .O(\buffer[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F550000)) 
    \buffer[63]_i_2__4 
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_0),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(sw_read),
        .I5(have_data_reg_0),
        .O(\buffer[63]_i_2__4_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[0]),
        .Q(buffer[0]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[10]),
        .Q(buffer[10]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[11]),
        .Q(buffer[11]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[12]),
        .Q(buffer[12]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[13]),
        .Q(buffer[13]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[14]),
        .Q(buffer[14]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[15]),
        .Q(buffer[15]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[16]),
        .Q(buffer[16]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[17]),
        .Q(buffer[17]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[18]),
        .Q(buffer[18]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[19]),
        .Q(buffer[19]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[1]),
        .Q(buffer[1]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[20]),
        .Q(buffer[20]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[21]),
        .Q(buffer[21]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[22]),
        .Q(buffer[22]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[23]),
        .Q(buffer[23]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[24]),
        .Q(buffer[24]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[25]),
        .Q(buffer[25]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[26]),
        .Q(buffer[26]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[27]),
        .Q(buffer[27]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[28]),
        .Q(buffer[28]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[29]),
        .Q(buffer[29]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[2]),
        .Q(buffer[2]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[30]),
        .Q(buffer[30]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[31]),
        .Q(buffer[31]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[32]),
        .Q(buffer[32]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[33]),
        .Q(buffer[33]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[34]),
        .Q(buffer[34]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[35]),
        .Q(buffer[35]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[36]),
        .Q(buffer[36]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[37]),
        .Q(buffer[37]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[38]),
        .Q(buffer[38]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[39]),
        .Q(buffer[39]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[3]),
        .Q(buffer[3]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[40]),
        .Q(buffer[40]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[41]),
        .Q(buffer[41]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[42]),
        .Q(buffer[42]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[43]),
        .Q(buffer[43]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[44]),
        .Q(buffer[44]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[45]),
        .Q(buffer[45]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[46]),
        .Q(buffer[46]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[47]),
        .Q(buffer[47]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[48]),
        .Q(buffer[48]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[49]),
        .Q(buffer[49]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[4]),
        .Q(buffer[4]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[50]),
        .Q(buffer[50]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[51]),
        .Q(buffer[51]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[52]),
        .Q(buffer[52]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[53]),
        .Q(buffer[53]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[54]),
        .Q(buffer[54]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[55]),
        .Q(buffer[55]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[56]),
        .Q(buffer[56]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[57]),
        .Q(buffer[57]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[58]),
        .Q(buffer[58]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[59]),
        .Q(buffer[59]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[5]),
        .Q(buffer[5]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[60]),
        .Q(buffer[60]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[61]),
        .Q(buffer[61]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[62]),
        .Q(buffer[62]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[63]),
        .Q(buffer[63]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[6]),
        .Q(buffer[6]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[7]),
        .Q(buffer[7]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[8]),
        .Q(buffer[8]),
        .R(\buffer[63]_i_1_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__4_n_0 ),
        .D(dout[9]),
        .Q(buffer[9]),
        .R(\buffer[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__1 
       (.I0(buffer[0]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__1 
       (.I0(buffer[10]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__1 
       (.I0(buffer[11]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__1 
       (.I0(buffer[12]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__1 
       (.I0(buffer[13]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__1 
       (.I0(buffer[14]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__1 
       (.I0(buffer[15]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__1 
       (.I0(buffer[16]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__1 
       (.I0(buffer[17]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__1 
       (.I0(buffer[18]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__1 
       (.I0(buffer[19]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__1 
       (.I0(buffer[1]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__1 
       (.I0(buffer[20]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__1 
       (.I0(buffer[21]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__1 
       (.I0(buffer[22]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__1 
       (.I0(buffer[23]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[23] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__1 
       (.I0(buffer[24]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[24] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__1 
       (.I0(buffer[25]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[25] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__1 
       (.I0(buffer[26]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[26] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__1 
       (.I0(buffer[27]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[27] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__1 
       (.I0(buffer[28]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[28] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__1 
       (.I0(buffer[29]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[29] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__1 
       (.I0(buffer[2]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__1 
       (.I0(buffer[30]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[30] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__1 
       (.I0(buffer[31]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[31] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__1 
       (.I0(buffer[32]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[32] ),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__1 
       (.I0(buffer[33]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[33] ),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__1 
       (.I0(buffer[34]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[34] ),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__1 
       (.I0(buffer[35]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[35] ),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__1 
       (.I0(buffer[36]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[36] ),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__1 
       (.I0(buffer[37]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[37] ),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__1 
       (.I0(buffer[38]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[38] ),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__1 
       (.I0(buffer[39]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[39] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__1 
       (.I0(buffer[3]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__1 
       (.I0(buffer[40]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[40] ),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__1 
       (.I0(buffer[41]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[41] ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__1 
       (.I0(buffer[42]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[42] ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__1 
       (.I0(buffer[43]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[43] ),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__1 
       (.I0(buffer[44]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[44] ),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__1 
       (.I0(buffer[45]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[45] ),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__1 
       (.I0(buffer[46]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[46] ),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__1 
       (.I0(buffer[47]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[47] ),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__1 
       (.I0(buffer[48]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[48] ),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__1 
       (.I0(buffer[49]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[49] ),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__1 
       (.I0(buffer[4]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__1 
       (.I0(buffer[50]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[50] ),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__1 
       (.I0(buffer[51]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[51] ),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__1 
       (.I0(buffer[52]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[52] ),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__1 
       (.I0(buffer[53]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[53] ),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__1 
       (.I0(buffer[54]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[54] ),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__1 
       (.I0(buffer[55]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[55] ),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__1 
       (.I0(buffer[56]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[56] ),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__1 
       (.I0(buffer[57]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[57] ),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__1 
       (.I0(buffer[58]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[58] ),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__1 
       (.I0(buffer[59]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[59] ),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__1 
       (.I0(buffer[5]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__1 
       (.I0(buffer[60]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[60] ),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__1 
       (.I0(buffer[61]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[61] ),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__1 
       (.I0(buffer[62]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[62] ),
        .O(D[62]));
  LUT4 #(
    .INIT(16'h5400)) 
    \data_i[63]_i_1__3 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .O(E));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__1 
       (.I0(buffer[63]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[63] ),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__1 
       (.I0(buffer[6]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__1 
       (.I0(buffer[7]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__1 
       (.I0(buffer[8]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__1 
       (.I0(buffer[9]),
        .I1(ready_i_reg_reg_1),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(\data_i_reg[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000080AA)) 
    have_data_i_1__4
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_0),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(have_data_reg_0),
        .I5(sw_read),
        .O(have_data_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__4_n_0),
        .Q(_trace_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0111111101010101)) 
    ready_i_reg_i_1__4
       (.I0(sw_read),
        .I1(empty),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_0),
        .I4(ready_i_reg_reg_1),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(sw_read),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0
   (have_data_reg_0,
    ready_i_reg_reg_0,
    \buffer_reg[63]_0 ,
    \buffer_reg[62]_0 ,
    \buffer_reg[61]_0 ,
    \buffer_reg[60]_0 ,
    \buffer_reg[59]_0 ,
    \buffer_reg[58]_0 ,
    \buffer_reg[57]_0 ,
    \buffer_reg[56]_0 ,
    \buffer_reg[55]_0 ,
    \buffer_reg[54]_0 ,
    \buffer_reg[53]_0 ,
    \buffer_reg[52]_0 ,
    \buffer_reg[51]_0 ,
    \buffer_reg[50]_0 ,
    \buffer_reg[49]_0 ,
    \buffer_reg[48]_0 ,
    \buffer_reg[47]_0 ,
    \buffer_reg[46]_0 ,
    \buffer_reg[45]_0 ,
    \buffer_reg[44]_0 ,
    \buffer_reg[43]_0 ,
    \buffer_reg[42]_0 ,
    \buffer_reg[41]_0 ,
    \buffer_reg[40]_0 ,
    \buffer_reg[39]_0 ,
    \buffer_reg[38]_0 ,
    \buffer_reg[37]_0 ,
    \buffer_reg[36]_0 ,
    \buffer_reg[35]_0 ,
    \buffer_reg[34]_0 ,
    \buffer_reg[33]_0 ,
    \buffer_reg[32]_0 ,
    \buffer_reg[31]_0 ,
    \buffer_reg[30]_0 ,
    \buffer_reg[29]_0 ,
    \buffer_reg[28]_0 ,
    \buffer_reg[27]_0 ,
    \buffer_reg[26]_0 ,
    \buffer_reg[25]_0 ,
    \buffer_reg[24]_0 ,
    \buffer_reg[23]_0 ,
    \buffer_reg[22]_0 ,
    \buffer_reg[21]_0 ,
    \buffer_reg[20]_0 ,
    \buffer_reg[19]_0 ,
    \buffer_reg[18]_0 ,
    \buffer_reg[17]_0 ,
    \buffer_reg[16]_0 ,
    \buffer_reg[15]_0 ,
    \buffer_reg[14]_0 ,
    \buffer_reg[13]_0 ,
    \buffer_reg[12]_0 ,
    \buffer_reg[11]_0 ,
    \buffer_reg[10]_0 ,
    \buffer_reg[9]_0 ,
    \buffer_reg[8]_0 ,
    \buffer_reg[7]_0 ,
    \buffer_reg[6]_0 ,
    \buffer_reg[5]_0 ,
    \buffer_reg[4]_0 ,
    \buffer_reg[3]_0 ,
    \buffer_reg[2]_0 ,
    \buffer_reg[1]_0 ,
    \buffer_reg[0]_0 ,
    trace_clk,
    trace0_valid,
    _trace_valid,
    ready_i_reg_reg_1,
    have_data0,
    have_data_reg_1,
    trace0_data);
  output [0:0]have_data_reg_0;
  output ready_i_reg_reg_0;
  output \buffer_reg[63]_0 ;
  output \buffer_reg[62]_0 ;
  output \buffer_reg[61]_0 ;
  output \buffer_reg[60]_0 ;
  output \buffer_reg[59]_0 ;
  output \buffer_reg[58]_0 ;
  output \buffer_reg[57]_0 ;
  output \buffer_reg[56]_0 ;
  output \buffer_reg[55]_0 ;
  output \buffer_reg[54]_0 ;
  output \buffer_reg[53]_0 ;
  output \buffer_reg[52]_0 ;
  output \buffer_reg[51]_0 ;
  output \buffer_reg[50]_0 ;
  output \buffer_reg[49]_0 ;
  output \buffer_reg[48]_0 ;
  output \buffer_reg[47]_0 ;
  output \buffer_reg[46]_0 ;
  output \buffer_reg[45]_0 ;
  output \buffer_reg[44]_0 ;
  output \buffer_reg[43]_0 ;
  output \buffer_reg[42]_0 ;
  output \buffer_reg[41]_0 ;
  output \buffer_reg[40]_0 ;
  output \buffer_reg[39]_0 ;
  output \buffer_reg[38]_0 ;
  output \buffer_reg[37]_0 ;
  output \buffer_reg[36]_0 ;
  output \buffer_reg[35]_0 ;
  output \buffer_reg[34]_0 ;
  output \buffer_reg[33]_0 ;
  output \buffer_reg[32]_0 ;
  output \buffer_reg[31]_0 ;
  output \buffer_reg[30]_0 ;
  output \buffer_reg[29]_0 ;
  output \buffer_reg[28]_0 ;
  output \buffer_reg[27]_0 ;
  output \buffer_reg[26]_0 ;
  output \buffer_reg[25]_0 ;
  output \buffer_reg[24]_0 ;
  output \buffer_reg[23]_0 ;
  output \buffer_reg[22]_0 ;
  output \buffer_reg[21]_0 ;
  output \buffer_reg[20]_0 ;
  output \buffer_reg[19]_0 ;
  output \buffer_reg[18]_0 ;
  output \buffer_reg[17]_0 ;
  output \buffer_reg[16]_0 ;
  output \buffer_reg[15]_0 ;
  output \buffer_reg[14]_0 ;
  output \buffer_reg[13]_0 ;
  output \buffer_reg[12]_0 ;
  output \buffer_reg[11]_0 ;
  output \buffer_reg[10]_0 ;
  output \buffer_reg[9]_0 ;
  output \buffer_reg[8]_0 ;
  output \buffer_reg[7]_0 ;
  output \buffer_reg[6]_0 ;
  output \buffer_reg[5]_0 ;
  output \buffer_reg[4]_0 ;
  output \buffer_reg[3]_0 ;
  output \buffer_reg[2]_0 ;
  output \buffer_reg[1]_0 ;
  output \buffer_reg[0]_0 ;
  input trace_clk;
  input trace0_valid;
  input [0:0]_trace_valid;
  input ready_i_reg_reg_1;
  input have_data0;
  input have_data_reg_1;
  input [63:0]trace0_data;

  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__0_n_0 ;
  wire \buffer[63]_i_2__3_n_0 ;
  wire \buffer_reg[0]_0 ;
  wire \buffer_reg[10]_0 ;
  wire \buffer_reg[11]_0 ;
  wire \buffer_reg[12]_0 ;
  wire \buffer_reg[13]_0 ;
  wire \buffer_reg[14]_0 ;
  wire \buffer_reg[15]_0 ;
  wire \buffer_reg[16]_0 ;
  wire \buffer_reg[17]_0 ;
  wire \buffer_reg[18]_0 ;
  wire \buffer_reg[19]_0 ;
  wire \buffer_reg[1]_0 ;
  wire \buffer_reg[20]_0 ;
  wire \buffer_reg[21]_0 ;
  wire \buffer_reg[22]_0 ;
  wire \buffer_reg[23]_0 ;
  wire \buffer_reg[24]_0 ;
  wire \buffer_reg[25]_0 ;
  wire \buffer_reg[26]_0 ;
  wire \buffer_reg[27]_0 ;
  wire \buffer_reg[28]_0 ;
  wire \buffer_reg[29]_0 ;
  wire \buffer_reg[2]_0 ;
  wire \buffer_reg[30]_0 ;
  wire \buffer_reg[31]_0 ;
  wire \buffer_reg[32]_0 ;
  wire \buffer_reg[33]_0 ;
  wire \buffer_reg[34]_0 ;
  wire \buffer_reg[35]_0 ;
  wire \buffer_reg[36]_0 ;
  wire \buffer_reg[37]_0 ;
  wire \buffer_reg[38]_0 ;
  wire \buffer_reg[39]_0 ;
  wire \buffer_reg[3]_0 ;
  wire \buffer_reg[40]_0 ;
  wire \buffer_reg[41]_0 ;
  wire \buffer_reg[42]_0 ;
  wire \buffer_reg[43]_0 ;
  wire \buffer_reg[44]_0 ;
  wire \buffer_reg[45]_0 ;
  wire \buffer_reg[46]_0 ;
  wire \buffer_reg[47]_0 ;
  wire \buffer_reg[48]_0 ;
  wire \buffer_reg[49]_0 ;
  wire \buffer_reg[4]_0 ;
  wire \buffer_reg[50]_0 ;
  wire \buffer_reg[51]_0 ;
  wire \buffer_reg[52]_0 ;
  wire \buffer_reg[53]_0 ;
  wire \buffer_reg[54]_0 ;
  wire \buffer_reg[55]_0 ;
  wire \buffer_reg[56]_0 ;
  wire \buffer_reg[57]_0 ;
  wire \buffer_reg[58]_0 ;
  wire \buffer_reg[59]_0 ;
  wire \buffer_reg[5]_0 ;
  wire \buffer_reg[60]_0 ;
  wire \buffer_reg[61]_0 ;
  wire \buffer_reg[62]_0 ;
  wire \buffer_reg[63]_0 ;
  wire \buffer_reg[6]_0 ;
  wire \buffer_reg[7]_0 ;
  wire \buffer_reg[8]_0 ;
  wire \buffer_reg[9]_0 ;
  wire have_data0;
  wire have_data_i_1__3_n_0;
  wire [0:0]have_data_reg_0;
  wire have_data_reg_1;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [63:0]trace0_data;
  wire trace0_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__0 
       (.I0(have_data_reg_1),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \buffer[63]_i_2__3 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_1),
        .O(\buffer[63]_i_2__3_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[0]),
        .Q(\buffer_reg[0]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[10]),
        .Q(\buffer_reg[10]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[11]),
        .Q(\buffer_reg[11]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[12]),
        .Q(\buffer_reg[12]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[13]),
        .Q(\buffer_reg[13]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[14]),
        .Q(\buffer_reg[14]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[15]),
        .Q(\buffer_reg[15]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[16]),
        .Q(\buffer_reg[16]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[17]),
        .Q(\buffer_reg[17]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[18]),
        .Q(\buffer_reg[18]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[19]),
        .Q(\buffer_reg[19]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[1]),
        .Q(\buffer_reg[1]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[20]),
        .Q(\buffer_reg[20]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[21]),
        .Q(\buffer_reg[21]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[22]),
        .Q(\buffer_reg[22]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[23]),
        .Q(\buffer_reg[23]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[24]),
        .Q(\buffer_reg[24]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[25]),
        .Q(\buffer_reg[25]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[26]),
        .Q(\buffer_reg[26]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[27]),
        .Q(\buffer_reg[27]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[28]),
        .Q(\buffer_reg[28]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[29]),
        .Q(\buffer_reg[29]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[2]),
        .Q(\buffer_reg[2]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[30]),
        .Q(\buffer_reg[30]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[31]),
        .Q(\buffer_reg[31]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[32]),
        .Q(\buffer_reg[32]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[33]),
        .Q(\buffer_reg[33]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[34]),
        .Q(\buffer_reg[34]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[35]),
        .Q(\buffer_reg[35]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[36]),
        .Q(\buffer_reg[36]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[37]),
        .Q(\buffer_reg[37]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[38]),
        .Q(\buffer_reg[38]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[39]),
        .Q(\buffer_reg[39]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[3]),
        .Q(\buffer_reg[3]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[40]),
        .Q(\buffer_reg[40]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[41]),
        .Q(\buffer_reg[41]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[42]),
        .Q(\buffer_reg[42]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[43]),
        .Q(\buffer_reg[43]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[44]),
        .Q(\buffer_reg[44]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[45]),
        .Q(\buffer_reg[45]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[46]),
        .Q(\buffer_reg[46]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[47]),
        .Q(\buffer_reg[47]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[48]),
        .Q(\buffer_reg[48]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[49]),
        .Q(\buffer_reg[49]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[4]),
        .Q(\buffer_reg[4]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[50]),
        .Q(\buffer_reg[50]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[51]),
        .Q(\buffer_reg[51]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[52]),
        .Q(\buffer_reg[52]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[53]),
        .Q(\buffer_reg[53]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[54]),
        .Q(\buffer_reg[54]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[55]),
        .Q(\buffer_reg[55]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[56]),
        .Q(\buffer_reg[56]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[57]),
        .Q(\buffer_reg[57]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[58]),
        .Q(\buffer_reg[58]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[59]),
        .Q(\buffer_reg[59]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[5]),
        .Q(\buffer_reg[5]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[60]),
        .Q(\buffer_reg[60]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[61]),
        .Q(\buffer_reg[61]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[62]),
        .Q(\buffer_reg[62]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[63]),
        .Q(\buffer_reg[63]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[6]),
        .Q(\buffer_reg[6]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[7]),
        .Q(\buffer_reg[7]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[8]),
        .Q(\buffer_reg[8]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__3_n_0 ),
        .D(trace0_data[9]),
        .Q(\buffer_reg[9]_0 ),
        .R(\buffer[63]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000008AA)) 
    have_data_i_1__3
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(have_data_reg_1),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__3_n_0),
        .Q(have_data_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444044404040404)) 
    ready_i_reg_i_1__3
       (.I0(ready_i_reg_reg_0),
        .I1(trace0_valid),
        .I2(have_data_reg_0),
        .I3(_trace_valid),
        .I4(ready_i_reg_reg_1),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1
   (_trace_valid,
    ready_i_reg_reg_0,
    D,
    E,
    trace_clk,
    trace1_valid,
    ready_i_reg_reg_1,
    ready_i_reg_reg_2,
    have_data0,
    have_data_reg_0,
    \data_i_reg[63] ,
    \data_i_reg[62] ,
    \data_i_reg[61] ,
    \data_i_reg[60] ,
    \data_i_reg[59] ,
    \data_i_reg[58] ,
    \data_i_reg[57] ,
    \data_i_reg[56] ,
    \data_i_reg[55] ,
    \data_i_reg[54] ,
    \data_i_reg[53] ,
    \data_i_reg[52] ,
    \data_i_reg[51] ,
    \data_i_reg[50] ,
    \data_i_reg[49] ,
    \data_i_reg[48] ,
    \data_i_reg[47] ,
    \data_i_reg[46] ,
    \data_i_reg[45] ,
    \data_i_reg[44] ,
    \data_i_reg[43] ,
    \data_i_reg[42] ,
    \data_i_reg[41] ,
    \data_i_reg[40] ,
    \data_i_reg[39] ,
    \data_i_reg[38] ,
    \data_i_reg[37] ,
    \data_i_reg[36] ,
    \data_i_reg[35] ,
    \data_i_reg[34] ,
    \data_i_reg[33] ,
    \data_i_reg[32] ,
    \data_i_reg[31] ,
    \data_i_reg[30] ,
    \data_i_reg[29] ,
    \data_i_reg[28] ,
    \data_i_reg[27] ,
    \data_i_reg[26] ,
    \data_i_reg[25] ,
    \data_i_reg[24] ,
    \data_i_reg[23] ,
    \data_i_reg[22] ,
    \data_i_reg[21] ,
    \data_i_reg[20] ,
    \data_i_reg[19] ,
    \data_i_reg[18] ,
    \data_i_reg[17] ,
    \data_i_reg[16] ,
    \data_i_reg[15] ,
    \data_i_reg[14] ,
    \data_i_reg[13] ,
    \data_i_reg[12] ,
    \data_i_reg[11] ,
    \data_i_reg[10] ,
    \data_i_reg[9] ,
    \data_i_reg[8] ,
    \data_i_reg[7] ,
    \data_i_reg[6] ,
    \data_i_reg[5] ,
    \data_i_reg[4] ,
    \data_i_reg[3] ,
    \data_i_reg[2] ,
    \data_i_reg[1] ,
    \data_i_reg[0] ,
    trace1_data);
  output [0:0]_trace_valid;
  output ready_i_reg_reg_0;
  output [63:0]D;
  output [0:0]E;
  input trace_clk;
  input trace1_valid;
  input ready_i_reg_reg_1;
  input [0:0]ready_i_reg_reg_2;
  input have_data0;
  input have_data_reg_0;
  input \data_i_reg[63] ;
  input \data_i_reg[62] ;
  input \data_i_reg[61] ;
  input \data_i_reg[60] ;
  input \data_i_reg[59] ;
  input \data_i_reg[58] ;
  input \data_i_reg[57] ;
  input \data_i_reg[56] ;
  input \data_i_reg[55] ;
  input \data_i_reg[54] ;
  input \data_i_reg[53] ;
  input \data_i_reg[52] ;
  input \data_i_reg[51] ;
  input \data_i_reg[50] ;
  input \data_i_reg[49] ;
  input \data_i_reg[48] ;
  input \data_i_reg[47] ;
  input \data_i_reg[46] ;
  input \data_i_reg[45] ;
  input \data_i_reg[44] ;
  input \data_i_reg[43] ;
  input \data_i_reg[42] ;
  input \data_i_reg[41] ;
  input \data_i_reg[40] ;
  input \data_i_reg[39] ;
  input \data_i_reg[38] ;
  input \data_i_reg[37] ;
  input \data_i_reg[36] ;
  input \data_i_reg[35] ;
  input \data_i_reg[34] ;
  input \data_i_reg[33] ;
  input \data_i_reg[32] ;
  input \data_i_reg[31] ;
  input \data_i_reg[30] ;
  input \data_i_reg[29] ;
  input \data_i_reg[28] ;
  input \data_i_reg[27] ;
  input \data_i_reg[26] ;
  input \data_i_reg[25] ;
  input \data_i_reg[24] ;
  input \data_i_reg[23] ;
  input \data_i_reg[22] ;
  input \data_i_reg[21] ;
  input \data_i_reg[20] ;
  input \data_i_reg[19] ;
  input \data_i_reg[18] ;
  input \data_i_reg[17] ;
  input \data_i_reg[16] ;
  input \data_i_reg[15] ;
  input \data_i_reg[14] ;
  input \data_i_reg[13] ;
  input \data_i_reg[12] ;
  input \data_i_reg[11] ;
  input \data_i_reg[10] ;
  input \data_i_reg[9] ;
  input \data_i_reg[8] ;
  input \data_i_reg[7] ;
  input \data_i_reg[6] ;
  input \data_i_reg[5] ;
  input \data_i_reg[4] ;
  input \data_i_reg[3] ;
  input \data_i_reg[2] ;
  input \data_i_reg[1] ;
  input \data_i_reg[0] ;
  input [63:0]trace1_data;

  wire [63:0]D;
  wire [0:0]E;
  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__1_n_0 ;
  wire \buffer[63]_i_2__5_n_0 ;
  wire \buffer_reg_n_0_[0] ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[16] ;
  wire \buffer_reg_n_0_[17] ;
  wire \buffer_reg_n_0_[18] ;
  wire \buffer_reg_n_0_[19] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[20] ;
  wire \buffer_reg_n_0_[21] ;
  wire \buffer_reg_n_0_[22] ;
  wire \buffer_reg_n_0_[23] ;
  wire \buffer_reg_n_0_[24] ;
  wire \buffer_reg_n_0_[25] ;
  wire \buffer_reg_n_0_[26] ;
  wire \buffer_reg_n_0_[27] ;
  wire \buffer_reg_n_0_[28] ;
  wire \buffer_reg_n_0_[29] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[30] ;
  wire \buffer_reg_n_0_[31] ;
  wire \buffer_reg_n_0_[32] ;
  wire \buffer_reg_n_0_[33] ;
  wire \buffer_reg_n_0_[34] ;
  wire \buffer_reg_n_0_[35] ;
  wire \buffer_reg_n_0_[36] ;
  wire \buffer_reg_n_0_[37] ;
  wire \buffer_reg_n_0_[38] ;
  wire \buffer_reg_n_0_[39] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[40] ;
  wire \buffer_reg_n_0_[41] ;
  wire \buffer_reg_n_0_[42] ;
  wire \buffer_reg_n_0_[43] ;
  wire \buffer_reg_n_0_[44] ;
  wire \buffer_reg_n_0_[45] ;
  wire \buffer_reg_n_0_[46] ;
  wire \buffer_reg_n_0_[47] ;
  wire \buffer_reg_n_0_[48] ;
  wire \buffer_reg_n_0_[49] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[50] ;
  wire \buffer_reg_n_0_[51] ;
  wire \buffer_reg_n_0_[52] ;
  wire \buffer_reg_n_0_[53] ;
  wire \buffer_reg_n_0_[54] ;
  wire \buffer_reg_n_0_[55] ;
  wire \buffer_reg_n_0_[56] ;
  wire \buffer_reg_n_0_[57] ;
  wire \buffer_reg_n_0_[58] ;
  wire \buffer_reg_n_0_[59] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[60] ;
  wire \buffer_reg_n_0_[61] ;
  wire \buffer_reg_n_0_[62] ;
  wire \buffer_reg_n_0_[63] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire \data_i_reg[0] ;
  wire \data_i_reg[10] ;
  wire \data_i_reg[11] ;
  wire \data_i_reg[12] ;
  wire \data_i_reg[13] ;
  wire \data_i_reg[14] ;
  wire \data_i_reg[15] ;
  wire \data_i_reg[16] ;
  wire \data_i_reg[17] ;
  wire \data_i_reg[18] ;
  wire \data_i_reg[19] ;
  wire \data_i_reg[1] ;
  wire \data_i_reg[20] ;
  wire \data_i_reg[21] ;
  wire \data_i_reg[22] ;
  wire \data_i_reg[23] ;
  wire \data_i_reg[24] ;
  wire \data_i_reg[25] ;
  wire \data_i_reg[26] ;
  wire \data_i_reg[27] ;
  wire \data_i_reg[28] ;
  wire \data_i_reg[29] ;
  wire \data_i_reg[2] ;
  wire \data_i_reg[30] ;
  wire \data_i_reg[31] ;
  wire \data_i_reg[32] ;
  wire \data_i_reg[33] ;
  wire \data_i_reg[34] ;
  wire \data_i_reg[35] ;
  wire \data_i_reg[36] ;
  wire \data_i_reg[37] ;
  wire \data_i_reg[38] ;
  wire \data_i_reg[39] ;
  wire \data_i_reg[3] ;
  wire \data_i_reg[40] ;
  wire \data_i_reg[41] ;
  wire \data_i_reg[42] ;
  wire \data_i_reg[43] ;
  wire \data_i_reg[44] ;
  wire \data_i_reg[45] ;
  wire \data_i_reg[46] ;
  wire \data_i_reg[47] ;
  wire \data_i_reg[48] ;
  wire \data_i_reg[49] ;
  wire \data_i_reg[4] ;
  wire \data_i_reg[50] ;
  wire \data_i_reg[51] ;
  wire \data_i_reg[52] ;
  wire \data_i_reg[53] ;
  wire \data_i_reg[54] ;
  wire \data_i_reg[55] ;
  wire \data_i_reg[56] ;
  wire \data_i_reg[57] ;
  wire \data_i_reg[58] ;
  wire \data_i_reg[59] ;
  wire \data_i_reg[5] ;
  wire \data_i_reg[60] ;
  wire \data_i_reg[61] ;
  wire \data_i_reg[62] ;
  wire \data_i_reg[63] ;
  wire \data_i_reg[6] ;
  wire \data_i_reg[7] ;
  wire \data_i_reg[8] ;
  wire \data_i_reg[9] ;
  wire have_data0;
  wire have_data_i_1__5_n_0;
  wire have_data_reg_0;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [0:0]ready_i_reg_reg_2;
  wire [63:0]trace1_data;
  wire trace1_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__1 
       (.I0(have_data_reg_0),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F550000)) 
    \buffer[63]_i_2__5 
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_0),
        .O(\buffer[63]_i_2__5_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[0]),
        .Q(\buffer_reg_n_0_[0] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[15]),
        .Q(\buffer_reg_n_0_[15] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[16]),
        .Q(\buffer_reg_n_0_[16] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[17]),
        .Q(\buffer_reg_n_0_[17] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[18]),
        .Q(\buffer_reg_n_0_[18] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[19]),
        .Q(\buffer_reg_n_0_[19] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[20]),
        .Q(\buffer_reg_n_0_[20] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[21]),
        .Q(\buffer_reg_n_0_[21] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[22]),
        .Q(\buffer_reg_n_0_[22] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[23]),
        .Q(\buffer_reg_n_0_[23] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[24]),
        .Q(\buffer_reg_n_0_[24] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[25]),
        .Q(\buffer_reg_n_0_[25] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[26]),
        .Q(\buffer_reg_n_0_[26] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[27]),
        .Q(\buffer_reg_n_0_[27] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[28]),
        .Q(\buffer_reg_n_0_[28] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[29]),
        .Q(\buffer_reg_n_0_[29] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[30]),
        .Q(\buffer_reg_n_0_[30] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[31]),
        .Q(\buffer_reg_n_0_[31] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[32]),
        .Q(\buffer_reg_n_0_[32] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[33]),
        .Q(\buffer_reg_n_0_[33] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[34]),
        .Q(\buffer_reg_n_0_[34] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[35]),
        .Q(\buffer_reg_n_0_[35] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[36]),
        .Q(\buffer_reg_n_0_[36] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[37]),
        .Q(\buffer_reg_n_0_[37] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[38]),
        .Q(\buffer_reg_n_0_[38] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[39]),
        .Q(\buffer_reg_n_0_[39] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[40]),
        .Q(\buffer_reg_n_0_[40] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[41]),
        .Q(\buffer_reg_n_0_[41] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[42]),
        .Q(\buffer_reg_n_0_[42] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[43]),
        .Q(\buffer_reg_n_0_[43] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[44]),
        .Q(\buffer_reg_n_0_[44] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[45]),
        .Q(\buffer_reg_n_0_[45] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[46]),
        .Q(\buffer_reg_n_0_[46] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[47]),
        .Q(\buffer_reg_n_0_[47] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[48]),
        .Q(\buffer_reg_n_0_[48] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[49]),
        .Q(\buffer_reg_n_0_[49] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[50]),
        .Q(\buffer_reg_n_0_[50] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[51]),
        .Q(\buffer_reg_n_0_[51] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[52]),
        .Q(\buffer_reg_n_0_[52] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[53]),
        .Q(\buffer_reg_n_0_[53] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[54]),
        .Q(\buffer_reg_n_0_[54] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[55]),
        .Q(\buffer_reg_n_0_[55] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[56]),
        .Q(\buffer_reg_n_0_[56] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[57]),
        .Q(\buffer_reg_n_0_[57] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[58]),
        .Q(\buffer_reg_n_0_[58] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[59]),
        .Q(\buffer_reg_n_0_[59] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[60]),
        .Q(\buffer_reg_n_0_[60] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[61]),
        .Q(\buffer_reg_n_0_[61] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[62]),
        .Q(\buffer_reg_n_0_[62] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[63]),
        .Q(\buffer_reg_n_0_[63] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__5_n_0 ),
        .D(trace1_data[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(\buffer[63]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__2 
       (.I0(\buffer_reg_n_0_[0] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__2 
       (.I0(\buffer_reg_n_0_[10] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__2 
       (.I0(\buffer_reg_n_0_[11] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__2 
       (.I0(\buffer_reg_n_0_[12] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__2 
       (.I0(\buffer_reg_n_0_[13] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__2 
       (.I0(\buffer_reg_n_0_[14] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__2 
       (.I0(\buffer_reg_n_0_[15] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__2 
       (.I0(\buffer_reg_n_0_[16] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__2 
       (.I0(\buffer_reg_n_0_[17] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__2 
       (.I0(\buffer_reg_n_0_[18] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__2 
       (.I0(\buffer_reg_n_0_[19] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__2 
       (.I0(\buffer_reg_n_0_[1] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__2 
       (.I0(\buffer_reg_n_0_[20] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__2 
       (.I0(\buffer_reg_n_0_[21] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__2 
       (.I0(\buffer_reg_n_0_[22] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__2 
       (.I0(\buffer_reg_n_0_[23] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[23] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__2 
       (.I0(\buffer_reg_n_0_[24] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[24] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__2 
       (.I0(\buffer_reg_n_0_[25] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[25] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__2 
       (.I0(\buffer_reg_n_0_[26] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[26] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__2 
       (.I0(\buffer_reg_n_0_[27] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[27] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__2 
       (.I0(\buffer_reg_n_0_[28] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[28] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__2 
       (.I0(\buffer_reg_n_0_[29] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[29] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__2 
       (.I0(\buffer_reg_n_0_[2] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__2 
       (.I0(\buffer_reg_n_0_[30] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[30] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__2 
       (.I0(\buffer_reg_n_0_[31] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[31] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__2 
       (.I0(\buffer_reg_n_0_[32] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[32] ),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__2 
       (.I0(\buffer_reg_n_0_[33] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[33] ),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__2 
       (.I0(\buffer_reg_n_0_[34] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[34] ),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__2 
       (.I0(\buffer_reg_n_0_[35] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[35] ),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__2 
       (.I0(\buffer_reg_n_0_[36] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[36] ),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__2 
       (.I0(\buffer_reg_n_0_[37] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[37] ),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__2 
       (.I0(\buffer_reg_n_0_[38] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[38] ),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__2 
       (.I0(\buffer_reg_n_0_[39] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[39] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__2 
       (.I0(\buffer_reg_n_0_[3] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__2 
       (.I0(\buffer_reg_n_0_[40] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[40] ),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__2 
       (.I0(\buffer_reg_n_0_[41] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[41] ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__2 
       (.I0(\buffer_reg_n_0_[42] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[42] ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__2 
       (.I0(\buffer_reg_n_0_[43] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[43] ),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__2 
       (.I0(\buffer_reg_n_0_[44] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[44] ),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__2 
       (.I0(\buffer_reg_n_0_[45] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[45] ),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__2 
       (.I0(\buffer_reg_n_0_[46] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[46] ),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__2 
       (.I0(\buffer_reg_n_0_[47] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[47] ),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__2 
       (.I0(\buffer_reg_n_0_[48] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[48] ),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__2 
       (.I0(\buffer_reg_n_0_[49] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[49] ),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__2 
       (.I0(\buffer_reg_n_0_[4] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__2 
       (.I0(\buffer_reg_n_0_[50] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[50] ),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__2 
       (.I0(\buffer_reg_n_0_[51] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[51] ),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__2 
       (.I0(\buffer_reg_n_0_[52] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[52] ),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__2 
       (.I0(\buffer_reg_n_0_[53] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[53] ),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__2 
       (.I0(\buffer_reg_n_0_[54] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[54] ),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__2 
       (.I0(\buffer_reg_n_0_[55] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[55] ),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__2 
       (.I0(\buffer_reg_n_0_[56] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[56] ),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__2 
       (.I0(\buffer_reg_n_0_[57] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[57] ),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__2 
       (.I0(\buffer_reg_n_0_[58] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[58] ),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__2 
       (.I0(\buffer_reg_n_0_[59] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[59] ),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__2 
       (.I0(\buffer_reg_n_0_[5] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__2 
       (.I0(\buffer_reg_n_0_[60] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[60] ),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__2 
       (.I0(\buffer_reg_n_0_[61] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[61] ),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__2 
       (.I0(\buffer_reg_n_0_[62] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[62] ),
        .O(D[62]));
  LUT4 #(
    .INIT(16'h5400)) 
    \data_i[63]_i_1__4 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .O(E));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__2 
       (.I0(\buffer_reg_n_0_[63] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[63] ),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__2 
       (.I0(\buffer_reg_n_0_[6] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__2 
       (.I0(\buffer_reg_n_0_[7] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__2 
       (.I0(\buffer_reg_n_0_[8] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__2 
       (.I0(\buffer_reg_n_0_[9] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000080AA)) 
    have_data_i_1__5
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(have_data_reg_0),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__5_n_0),
        .Q(_trace_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0444444404040404)) 
    ready_i_reg_i_1__5
       (.I0(ready_i_reg_reg_0),
        .I1(trace1_valid),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(ready_i_reg_reg_2),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2
   (have_data_reg_0,
    ready_i_reg_reg_0,
    have_data02_out,
    \buffer_reg[63]_0 ,
    \buffer_reg[62]_0 ,
    \buffer_reg[61]_0 ,
    \buffer_reg[60]_0 ,
    \buffer_reg[59]_0 ,
    \buffer_reg[58]_0 ,
    \buffer_reg[57]_0 ,
    \buffer_reg[56]_0 ,
    \buffer_reg[55]_0 ,
    \buffer_reg[54]_0 ,
    \buffer_reg[53]_0 ,
    \buffer_reg[52]_0 ,
    \buffer_reg[51]_0 ,
    \buffer_reg[50]_0 ,
    \buffer_reg[49]_0 ,
    \buffer_reg[48]_0 ,
    \buffer_reg[47]_0 ,
    \buffer_reg[46]_0 ,
    \buffer_reg[45]_0 ,
    \buffer_reg[44]_0 ,
    \buffer_reg[43]_0 ,
    \buffer_reg[42]_0 ,
    \buffer_reg[41]_0 ,
    \buffer_reg[40]_0 ,
    \buffer_reg[39]_0 ,
    \buffer_reg[38]_0 ,
    \buffer_reg[37]_0 ,
    \buffer_reg[36]_0 ,
    \buffer_reg[35]_0 ,
    \buffer_reg[34]_0 ,
    \buffer_reg[33]_0 ,
    \buffer_reg[32]_0 ,
    \buffer_reg[31]_0 ,
    \buffer_reg[30]_0 ,
    \buffer_reg[29]_0 ,
    \buffer_reg[28]_0 ,
    \buffer_reg[27]_0 ,
    \buffer_reg[26]_0 ,
    \buffer_reg[25]_0 ,
    \buffer_reg[24]_0 ,
    \buffer_reg[23]_0 ,
    \buffer_reg[22]_0 ,
    \buffer_reg[21]_0 ,
    \buffer_reg[20]_0 ,
    \buffer_reg[19]_0 ,
    \buffer_reg[18]_0 ,
    \buffer_reg[17]_0 ,
    \buffer_reg[16]_0 ,
    \buffer_reg[15]_0 ,
    \buffer_reg[14]_0 ,
    \buffer_reg[13]_0 ,
    \buffer_reg[12]_0 ,
    \buffer_reg[11]_0 ,
    \buffer_reg[10]_0 ,
    \buffer_reg[9]_0 ,
    \buffer_reg[8]_0 ,
    \buffer_reg[7]_0 ,
    \buffer_reg[6]_0 ,
    \buffer_reg[5]_0 ,
    \buffer_reg[4]_0 ,
    \buffer_reg[3]_0 ,
    \buffer_reg[2]_0 ,
    \buffer_reg[1]_0 ,
    \buffer_reg[0]_0 ,
    trace_clk,
    trace2_valid,
    _trace_valid,
    ready_i_reg_reg_1,
    have_data0,
    have_data_reg_1,
    trace2_data);
  output [0:0]have_data_reg_0;
  output ready_i_reg_reg_0;
  output have_data02_out;
  output \buffer_reg[63]_0 ;
  output \buffer_reg[62]_0 ;
  output \buffer_reg[61]_0 ;
  output \buffer_reg[60]_0 ;
  output \buffer_reg[59]_0 ;
  output \buffer_reg[58]_0 ;
  output \buffer_reg[57]_0 ;
  output \buffer_reg[56]_0 ;
  output \buffer_reg[55]_0 ;
  output \buffer_reg[54]_0 ;
  output \buffer_reg[53]_0 ;
  output \buffer_reg[52]_0 ;
  output \buffer_reg[51]_0 ;
  output \buffer_reg[50]_0 ;
  output \buffer_reg[49]_0 ;
  output \buffer_reg[48]_0 ;
  output \buffer_reg[47]_0 ;
  output \buffer_reg[46]_0 ;
  output \buffer_reg[45]_0 ;
  output \buffer_reg[44]_0 ;
  output \buffer_reg[43]_0 ;
  output \buffer_reg[42]_0 ;
  output \buffer_reg[41]_0 ;
  output \buffer_reg[40]_0 ;
  output \buffer_reg[39]_0 ;
  output \buffer_reg[38]_0 ;
  output \buffer_reg[37]_0 ;
  output \buffer_reg[36]_0 ;
  output \buffer_reg[35]_0 ;
  output \buffer_reg[34]_0 ;
  output \buffer_reg[33]_0 ;
  output \buffer_reg[32]_0 ;
  output \buffer_reg[31]_0 ;
  output \buffer_reg[30]_0 ;
  output \buffer_reg[29]_0 ;
  output \buffer_reg[28]_0 ;
  output \buffer_reg[27]_0 ;
  output \buffer_reg[26]_0 ;
  output \buffer_reg[25]_0 ;
  output \buffer_reg[24]_0 ;
  output \buffer_reg[23]_0 ;
  output \buffer_reg[22]_0 ;
  output \buffer_reg[21]_0 ;
  output \buffer_reg[20]_0 ;
  output \buffer_reg[19]_0 ;
  output \buffer_reg[18]_0 ;
  output \buffer_reg[17]_0 ;
  output \buffer_reg[16]_0 ;
  output \buffer_reg[15]_0 ;
  output \buffer_reg[14]_0 ;
  output \buffer_reg[13]_0 ;
  output \buffer_reg[12]_0 ;
  output \buffer_reg[11]_0 ;
  output \buffer_reg[10]_0 ;
  output \buffer_reg[9]_0 ;
  output \buffer_reg[8]_0 ;
  output \buffer_reg[7]_0 ;
  output \buffer_reg[6]_0 ;
  output \buffer_reg[5]_0 ;
  output \buffer_reg[4]_0 ;
  output \buffer_reg[3]_0 ;
  output \buffer_reg[2]_0 ;
  output \buffer_reg[1]_0 ;
  output \buffer_reg[0]_0 ;
  input trace_clk;
  input trace2_valid;
  input [0:0]_trace_valid;
  input ready_i_reg_reg_1;
  input have_data0;
  input have_data_reg_1;
  input [63:0]trace2_data;

  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__2_n_0 ;
  wire \buffer[63]_i_2__6_n_0 ;
  wire \buffer_reg[0]_0 ;
  wire \buffer_reg[10]_0 ;
  wire \buffer_reg[11]_0 ;
  wire \buffer_reg[12]_0 ;
  wire \buffer_reg[13]_0 ;
  wire \buffer_reg[14]_0 ;
  wire \buffer_reg[15]_0 ;
  wire \buffer_reg[16]_0 ;
  wire \buffer_reg[17]_0 ;
  wire \buffer_reg[18]_0 ;
  wire \buffer_reg[19]_0 ;
  wire \buffer_reg[1]_0 ;
  wire \buffer_reg[20]_0 ;
  wire \buffer_reg[21]_0 ;
  wire \buffer_reg[22]_0 ;
  wire \buffer_reg[23]_0 ;
  wire \buffer_reg[24]_0 ;
  wire \buffer_reg[25]_0 ;
  wire \buffer_reg[26]_0 ;
  wire \buffer_reg[27]_0 ;
  wire \buffer_reg[28]_0 ;
  wire \buffer_reg[29]_0 ;
  wire \buffer_reg[2]_0 ;
  wire \buffer_reg[30]_0 ;
  wire \buffer_reg[31]_0 ;
  wire \buffer_reg[32]_0 ;
  wire \buffer_reg[33]_0 ;
  wire \buffer_reg[34]_0 ;
  wire \buffer_reg[35]_0 ;
  wire \buffer_reg[36]_0 ;
  wire \buffer_reg[37]_0 ;
  wire \buffer_reg[38]_0 ;
  wire \buffer_reg[39]_0 ;
  wire \buffer_reg[3]_0 ;
  wire \buffer_reg[40]_0 ;
  wire \buffer_reg[41]_0 ;
  wire \buffer_reg[42]_0 ;
  wire \buffer_reg[43]_0 ;
  wire \buffer_reg[44]_0 ;
  wire \buffer_reg[45]_0 ;
  wire \buffer_reg[46]_0 ;
  wire \buffer_reg[47]_0 ;
  wire \buffer_reg[48]_0 ;
  wire \buffer_reg[49]_0 ;
  wire \buffer_reg[4]_0 ;
  wire \buffer_reg[50]_0 ;
  wire \buffer_reg[51]_0 ;
  wire \buffer_reg[52]_0 ;
  wire \buffer_reg[53]_0 ;
  wire \buffer_reg[54]_0 ;
  wire \buffer_reg[55]_0 ;
  wire \buffer_reg[56]_0 ;
  wire \buffer_reg[57]_0 ;
  wire \buffer_reg[58]_0 ;
  wire \buffer_reg[59]_0 ;
  wire \buffer_reg[5]_0 ;
  wire \buffer_reg[60]_0 ;
  wire \buffer_reg[61]_0 ;
  wire \buffer_reg[62]_0 ;
  wire \buffer_reg[63]_0 ;
  wire \buffer_reg[6]_0 ;
  wire \buffer_reg[7]_0 ;
  wire \buffer_reg[8]_0 ;
  wire \buffer_reg[9]_0 ;
  wire have_data0;
  wire have_data02_out;
  wire have_data_i_1__6_n_0;
  wire [0:0]have_data_reg_0;
  wire have_data_reg_1;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [63:0]trace2_data;
  wire trace2_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__2 
       (.I0(have_data_reg_1),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \buffer[63]_i_2__6 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_1),
        .O(\buffer[63]_i_2__6_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[0]),
        .Q(\buffer_reg[0]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[10]),
        .Q(\buffer_reg[10]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[11]),
        .Q(\buffer_reg[11]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[12]),
        .Q(\buffer_reg[12]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[13]),
        .Q(\buffer_reg[13]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[14]),
        .Q(\buffer_reg[14]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[15]),
        .Q(\buffer_reg[15]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[16]),
        .Q(\buffer_reg[16]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[17]),
        .Q(\buffer_reg[17]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[18]),
        .Q(\buffer_reg[18]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[19]),
        .Q(\buffer_reg[19]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[1]),
        .Q(\buffer_reg[1]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[20]),
        .Q(\buffer_reg[20]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[21]),
        .Q(\buffer_reg[21]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[22]),
        .Q(\buffer_reg[22]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[23]),
        .Q(\buffer_reg[23]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[24]),
        .Q(\buffer_reg[24]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[25]),
        .Q(\buffer_reg[25]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[26]),
        .Q(\buffer_reg[26]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[27]),
        .Q(\buffer_reg[27]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[28]),
        .Q(\buffer_reg[28]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[29]),
        .Q(\buffer_reg[29]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[2]),
        .Q(\buffer_reg[2]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[30]),
        .Q(\buffer_reg[30]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[31]),
        .Q(\buffer_reg[31]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[32]),
        .Q(\buffer_reg[32]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[33]),
        .Q(\buffer_reg[33]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[34]),
        .Q(\buffer_reg[34]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[35]),
        .Q(\buffer_reg[35]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[36]),
        .Q(\buffer_reg[36]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[37]),
        .Q(\buffer_reg[37]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[38]),
        .Q(\buffer_reg[38]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[39]),
        .Q(\buffer_reg[39]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[3]),
        .Q(\buffer_reg[3]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[40]),
        .Q(\buffer_reg[40]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[41]),
        .Q(\buffer_reg[41]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[42]),
        .Q(\buffer_reg[42]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[43]),
        .Q(\buffer_reg[43]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[44]),
        .Q(\buffer_reg[44]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[45]),
        .Q(\buffer_reg[45]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[46]),
        .Q(\buffer_reg[46]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[47]),
        .Q(\buffer_reg[47]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[48]),
        .Q(\buffer_reg[48]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[49]),
        .Q(\buffer_reg[49]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[4]),
        .Q(\buffer_reg[4]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[50]),
        .Q(\buffer_reg[50]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[51]),
        .Q(\buffer_reg[51]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[52]),
        .Q(\buffer_reg[52]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[53]),
        .Q(\buffer_reg[53]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[54]),
        .Q(\buffer_reg[54]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[55]),
        .Q(\buffer_reg[55]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[56]),
        .Q(\buffer_reg[56]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[57]),
        .Q(\buffer_reg[57]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[58]),
        .Q(\buffer_reg[58]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[59]),
        .Q(\buffer_reg[59]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[5]),
        .Q(\buffer_reg[5]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[60]),
        .Q(\buffer_reg[60]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[61]),
        .Q(\buffer_reg[61]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[62]),
        .Q(\buffer_reg[62]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[63]),
        .Q(\buffer_reg[63]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[6]),
        .Q(\buffer_reg[6]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[7]),
        .Q(\buffer_reg[7]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[8]),
        .Q(\buffer_reg[8]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__6_n_0 ),
        .D(trace2_data[9]),
        .Q(\buffer_reg[9]_0 ),
        .R(\buffer[63]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000008AA)) 
    have_data_i_1__6
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(have_data_reg_1),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__6_n_0));
  LUT3 #(
    .INIT(8'h4C)) 
    have_data_i_2__1
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .O(have_data02_out));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__6_n_0),
        .Q(have_data_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444044404040404)) 
    ready_i_reg_i_1__6
       (.I0(ready_i_reg_reg_0),
        .I1(trace2_valid),
        .I2(have_data_reg_0),
        .I3(_trace_valid),
        .I4(ready_i_reg_reg_1),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3
   (_trace_valid,
    ready_i_reg_reg_0,
    D,
    trace_clk,
    trace3_valid,
    ready_i_reg_reg_1,
    ready_i_reg_reg_2,
    have_data0,
    have_data_reg_0,
    \data_i_reg[63] ,
    \data_i_reg[62] ,
    \data_i_reg[61] ,
    \data_i_reg[60] ,
    \data_i_reg[59] ,
    \data_i_reg[58] ,
    \data_i_reg[57] ,
    \data_i_reg[56] ,
    \data_i_reg[55] ,
    \data_i_reg[54] ,
    \data_i_reg[53] ,
    \data_i_reg[52] ,
    \data_i_reg[51] ,
    \data_i_reg[50] ,
    \data_i_reg[49] ,
    \data_i_reg[48] ,
    \data_i_reg[47] ,
    \data_i_reg[46] ,
    \data_i_reg[45] ,
    \data_i_reg[44] ,
    \data_i_reg[43] ,
    \data_i_reg[42] ,
    \data_i_reg[41] ,
    \data_i_reg[40] ,
    \data_i_reg[39] ,
    \data_i_reg[38] ,
    \data_i_reg[37] ,
    \data_i_reg[36] ,
    \data_i_reg[35] ,
    \data_i_reg[34] ,
    \data_i_reg[33] ,
    \data_i_reg[32] ,
    \data_i_reg[31] ,
    \data_i_reg[30] ,
    \data_i_reg[29] ,
    \data_i_reg[28] ,
    \data_i_reg[27] ,
    \data_i_reg[26] ,
    \data_i_reg[25] ,
    \data_i_reg[24] ,
    \data_i_reg[23] ,
    \data_i_reg[22] ,
    \data_i_reg[21] ,
    \data_i_reg[20] ,
    \data_i_reg[19] ,
    \data_i_reg[18] ,
    \data_i_reg[17] ,
    \data_i_reg[16] ,
    \data_i_reg[15] ,
    \data_i_reg[14] ,
    \data_i_reg[13] ,
    \data_i_reg[12] ,
    \data_i_reg[11] ,
    \data_i_reg[10] ,
    \data_i_reg[9] ,
    \data_i_reg[8] ,
    \data_i_reg[7] ,
    \data_i_reg[6] ,
    \data_i_reg[5] ,
    \data_i_reg[4] ,
    \data_i_reg[3] ,
    \data_i_reg[2] ,
    \data_i_reg[1] ,
    \data_i_reg[0] ,
    trace3_data);
  output [0:0]_trace_valid;
  output ready_i_reg_reg_0;
  output [63:0]D;
  input trace_clk;
  input trace3_valid;
  input ready_i_reg_reg_1;
  input [0:0]ready_i_reg_reg_2;
  input have_data0;
  input have_data_reg_0;
  input \data_i_reg[63] ;
  input \data_i_reg[62] ;
  input \data_i_reg[61] ;
  input \data_i_reg[60] ;
  input \data_i_reg[59] ;
  input \data_i_reg[58] ;
  input \data_i_reg[57] ;
  input \data_i_reg[56] ;
  input \data_i_reg[55] ;
  input \data_i_reg[54] ;
  input \data_i_reg[53] ;
  input \data_i_reg[52] ;
  input \data_i_reg[51] ;
  input \data_i_reg[50] ;
  input \data_i_reg[49] ;
  input \data_i_reg[48] ;
  input \data_i_reg[47] ;
  input \data_i_reg[46] ;
  input \data_i_reg[45] ;
  input \data_i_reg[44] ;
  input \data_i_reg[43] ;
  input \data_i_reg[42] ;
  input \data_i_reg[41] ;
  input \data_i_reg[40] ;
  input \data_i_reg[39] ;
  input \data_i_reg[38] ;
  input \data_i_reg[37] ;
  input \data_i_reg[36] ;
  input \data_i_reg[35] ;
  input \data_i_reg[34] ;
  input \data_i_reg[33] ;
  input \data_i_reg[32] ;
  input \data_i_reg[31] ;
  input \data_i_reg[30] ;
  input \data_i_reg[29] ;
  input \data_i_reg[28] ;
  input \data_i_reg[27] ;
  input \data_i_reg[26] ;
  input \data_i_reg[25] ;
  input \data_i_reg[24] ;
  input \data_i_reg[23] ;
  input \data_i_reg[22] ;
  input \data_i_reg[21] ;
  input \data_i_reg[20] ;
  input \data_i_reg[19] ;
  input \data_i_reg[18] ;
  input \data_i_reg[17] ;
  input \data_i_reg[16] ;
  input \data_i_reg[15] ;
  input \data_i_reg[14] ;
  input \data_i_reg[13] ;
  input \data_i_reg[12] ;
  input \data_i_reg[11] ;
  input \data_i_reg[10] ;
  input \data_i_reg[9] ;
  input \data_i_reg[8] ;
  input \data_i_reg[7] ;
  input \data_i_reg[6] ;
  input \data_i_reg[5] ;
  input \data_i_reg[4] ;
  input \data_i_reg[3] ;
  input \data_i_reg[2] ;
  input \data_i_reg[1] ;
  input \data_i_reg[0] ;
  input [63:0]trace3_data;

  wire [63:0]D;
  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__3_n_0 ;
  wire \buffer[63]_i_2_n_0 ;
  wire \buffer_reg_n_0_[0] ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[16] ;
  wire \buffer_reg_n_0_[17] ;
  wire \buffer_reg_n_0_[18] ;
  wire \buffer_reg_n_0_[19] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[20] ;
  wire \buffer_reg_n_0_[21] ;
  wire \buffer_reg_n_0_[22] ;
  wire \buffer_reg_n_0_[23] ;
  wire \buffer_reg_n_0_[24] ;
  wire \buffer_reg_n_0_[25] ;
  wire \buffer_reg_n_0_[26] ;
  wire \buffer_reg_n_0_[27] ;
  wire \buffer_reg_n_0_[28] ;
  wire \buffer_reg_n_0_[29] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[30] ;
  wire \buffer_reg_n_0_[31] ;
  wire \buffer_reg_n_0_[32] ;
  wire \buffer_reg_n_0_[33] ;
  wire \buffer_reg_n_0_[34] ;
  wire \buffer_reg_n_0_[35] ;
  wire \buffer_reg_n_0_[36] ;
  wire \buffer_reg_n_0_[37] ;
  wire \buffer_reg_n_0_[38] ;
  wire \buffer_reg_n_0_[39] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[40] ;
  wire \buffer_reg_n_0_[41] ;
  wire \buffer_reg_n_0_[42] ;
  wire \buffer_reg_n_0_[43] ;
  wire \buffer_reg_n_0_[44] ;
  wire \buffer_reg_n_0_[45] ;
  wire \buffer_reg_n_0_[46] ;
  wire \buffer_reg_n_0_[47] ;
  wire \buffer_reg_n_0_[48] ;
  wire \buffer_reg_n_0_[49] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[50] ;
  wire \buffer_reg_n_0_[51] ;
  wire \buffer_reg_n_0_[52] ;
  wire \buffer_reg_n_0_[53] ;
  wire \buffer_reg_n_0_[54] ;
  wire \buffer_reg_n_0_[55] ;
  wire \buffer_reg_n_0_[56] ;
  wire \buffer_reg_n_0_[57] ;
  wire \buffer_reg_n_0_[58] ;
  wire \buffer_reg_n_0_[59] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[60] ;
  wire \buffer_reg_n_0_[61] ;
  wire \buffer_reg_n_0_[62] ;
  wire \buffer_reg_n_0_[63] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire \data_i_reg[0] ;
  wire \data_i_reg[10] ;
  wire \data_i_reg[11] ;
  wire \data_i_reg[12] ;
  wire \data_i_reg[13] ;
  wire \data_i_reg[14] ;
  wire \data_i_reg[15] ;
  wire \data_i_reg[16] ;
  wire \data_i_reg[17] ;
  wire \data_i_reg[18] ;
  wire \data_i_reg[19] ;
  wire \data_i_reg[1] ;
  wire \data_i_reg[20] ;
  wire \data_i_reg[21] ;
  wire \data_i_reg[22] ;
  wire \data_i_reg[23] ;
  wire \data_i_reg[24] ;
  wire \data_i_reg[25] ;
  wire \data_i_reg[26] ;
  wire \data_i_reg[27] ;
  wire \data_i_reg[28] ;
  wire \data_i_reg[29] ;
  wire \data_i_reg[2] ;
  wire \data_i_reg[30] ;
  wire \data_i_reg[31] ;
  wire \data_i_reg[32] ;
  wire \data_i_reg[33] ;
  wire \data_i_reg[34] ;
  wire \data_i_reg[35] ;
  wire \data_i_reg[36] ;
  wire \data_i_reg[37] ;
  wire \data_i_reg[38] ;
  wire \data_i_reg[39] ;
  wire \data_i_reg[3] ;
  wire \data_i_reg[40] ;
  wire \data_i_reg[41] ;
  wire \data_i_reg[42] ;
  wire \data_i_reg[43] ;
  wire \data_i_reg[44] ;
  wire \data_i_reg[45] ;
  wire \data_i_reg[46] ;
  wire \data_i_reg[47] ;
  wire \data_i_reg[48] ;
  wire \data_i_reg[49] ;
  wire \data_i_reg[4] ;
  wire \data_i_reg[50] ;
  wire \data_i_reg[51] ;
  wire \data_i_reg[52] ;
  wire \data_i_reg[53] ;
  wire \data_i_reg[54] ;
  wire \data_i_reg[55] ;
  wire \data_i_reg[56] ;
  wire \data_i_reg[57] ;
  wire \data_i_reg[58] ;
  wire \data_i_reg[59] ;
  wire \data_i_reg[5] ;
  wire \data_i_reg[60] ;
  wire \data_i_reg[61] ;
  wire \data_i_reg[62] ;
  wire \data_i_reg[63] ;
  wire \data_i_reg[6] ;
  wire \data_i_reg[7] ;
  wire \data_i_reg[8] ;
  wire \data_i_reg[9] ;
  wire have_data0;
  wire have_data_i_1_n_0;
  wire have_data_reg_0;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [0:0]ready_i_reg_reg_2;
  wire [63:0]trace3_data;
  wire trace3_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__3 
       (.I0(have_data_reg_0),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F550000)) 
    \buffer[63]_i_2 
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_0),
        .O(\buffer[63]_i_2_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[0]),
        .Q(\buffer_reg_n_0_[0] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[15]),
        .Q(\buffer_reg_n_0_[15] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[16]),
        .Q(\buffer_reg_n_0_[16] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[17]),
        .Q(\buffer_reg_n_0_[17] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[18]),
        .Q(\buffer_reg_n_0_[18] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[19]),
        .Q(\buffer_reg_n_0_[19] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[20]),
        .Q(\buffer_reg_n_0_[20] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[21]),
        .Q(\buffer_reg_n_0_[21] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[22]),
        .Q(\buffer_reg_n_0_[22] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[23]),
        .Q(\buffer_reg_n_0_[23] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[24]),
        .Q(\buffer_reg_n_0_[24] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[25]),
        .Q(\buffer_reg_n_0_[25] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[26]),
        .Q(\buffer_reg_n_0_[26] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[27]),
        .Q(\buffer_reg_n_0_[27] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[28]),
        .Q(\buffer_reg_n_0_[28] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[29]),
        .Q(\buffer_reg_n_0_[29] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[30]),
        .Q(\buffer_reg_n_0_[30] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[31]),
        .Q(\buffer_reg_n_0_[31] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[32]),
        .Q(\buffer_reg_n_0_[32] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[33]),
        .Q(\buffer_reg_n_0_[33] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[34]),
        .Q(\buffer_reg_n_0_[34] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[35]),
        .Q(\buffer_reg_n_0_[35] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[36]),
        .Q(\buffer_reg_n_0_[36] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[37]),
        .Q(\buffer_reg_n_0_[37] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[38]),
        .Q(\buffer_reg_n_0_[38] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[39]),
        .Q(\buffer_reg_n_0_[39] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[40]),
        .Q(\buffer_reg_n_0_[40] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[41]),
        .Q(\buffer_reg_n_0_[41] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[42]),
        .Q(\buffer_reg_n_0_[42] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[43]),
        .Q(\buffer_reg_n_0_[43] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[44]),
        .Q(\buffer_reg_n_0_[44] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[45]),
        .Q(\buffer_reg_n_0_[45] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[46]),
        .Q(\buffer_reg_n_0_[46] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[47]),
        .Q(\buffer_reg_n_0_[47] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[48]),
        .Q(\buffer_reg_n_0_[48] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[49]),
        .Q(\buffer_reg_n_0_[49] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[50]),
        .Q(\buffer_reg_n_0_[50] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[51]),
        .Q(\buffer_reg_n_0_[51] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[52]),
        .Q(\buffer_reg_n_0_[52] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[53]),
        .Q(\buffer_reg_n_0_[53] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[54]),
        .Q(\buffer_reg_n_0_[54] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[55]),
        .Q(\buffer_reg_n_0_[55] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[56]),
        .Q(\buffer_reg_n_0_[56] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[57]),
        .Q(\buffer_reg_n_0_[57] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[58]),
        .Q(\buffer_reg_n_0_[58] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[59]),
        .Q(\buffer_reg_n_0_[59] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[60]),
        .Q(\buffer_reg_n_0_[60] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[61]),
        .Q(\buffer_reg_n_0_[61] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[62]),
        .Q(\buffer_reg_n_0_[62] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[63]),
        .Q(\buffer_reg_n_0_[63] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(trace3_data[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(\buffer[63]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__4 
       (.I0(\buffer_reg_n_0_[0] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__4 
       (.I0(\buffer_reg_n_0_[10] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__4 
       (.I0(\buffer_reg_n_0_[11] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__4 
       (.I0(\buffer_reg_n_0_[12] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__4 
       (.I0(\buffer_reg_n_0_[13] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__4 
       (.I0(\buffer_reg_n_0_[14] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__4 
       (.I0(\buffer_reg_n_0_[15] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__4 
       (.I0(\buffer_reg_n_0_[16] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__4 
       (.I0(\buffer_reg_n_0_[17] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__4 
       (.I0(\buffer_reg_n_0_[18] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__4 
       (.I0(\buffer_reg_n_0_[19] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__4 
       (.I0(\buffer_reg_n_0_[1] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__4 
       (.I0(\buffer_reg_n_0_[20] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__4 
       (.I0(\buffer_reg_n_0_[21] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__4 
       (.I0(\buffer_reg_n_0_[22] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__4 
       (.I0(\buffer_reg_n_0_[23] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[23] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__4 
       (.I0(\buffer_reg_n_0_[24] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[24] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__4 
       (.I0(\buffer_reg_n_0_[25] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[25] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__4 
       (.I0(\buffer_reg_n_0_[26] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[26] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__4 
       (.I0(\buffer_reg_n_0_[27] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[27] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__4 
       (.I0(\buffer_reg_n_0_[28] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[28] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__4 
       (.I0(\buffer_reg_n_0_[29] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[29] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__4 
       (.I0(\buffer_reg_n_0_[2] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__4 
       (.I0(\buffer_reg_n_0_[30] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[30] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__4 
       (.I0(\buffer_reg_n_0_[31] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[31] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__4 
       (.I0(\buffer_reg_n_0_[32] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[32] ),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__4 
       (.I0(\buffer_reg_n_0_[33] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[33] ),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__4 
       (.I0(\buffer_reg_n_0_[34] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[34] ),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__4 
       (.I0(\buffer_reg_n_0_[35] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[35] ),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__4 
       (.I0(\buffer_reg_n_0_[36] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[36] ),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__4 
       (.I0(\buffer_reg_n_0_[37] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[37] ),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__4 
       (.I0(\buffer_reg_n_0_[38] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[38] ),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__4 
       (.I0(\buffer_reg_n_0_[39] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[39] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__4 
       (.I0(\buffer_reg_n_0_[3] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__4 
       (.I0(\buffer_reg_n_0_[40] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[40] ),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__4 
       (.I0(\buffer_reg_n_0_[41] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[41] ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__4 
       (.I0(\buffer_reg_n_0_[42] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[42] ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__4 
       (.I0(\buffer_reg_n_0_[43] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[43] ),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__4 
       (.I0(\buffer_reg_n_0_[44] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[44] ),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__4 
       (.I0(\buffer_reg_n_0_[45] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[45] ),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__4 
       (.I0(\buffer_reg_n_0_[46] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[46] ),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__4 
       (.I0(\buffer_reg_n_0_[47] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[47] ),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__4 
       (.I0(\buffer_reg_n_0_[48] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[48] ),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__4 
       (.I0(\buffer_reg_n_0_[49] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[49] ),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__4 
       (.I0(\buffer_reg_n_0_[4] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__4 
       (.I0(\buffer_reg_n_0_[50] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[50] ),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__4 
       (.I0(\buffer_reg_n_0_[51] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[51] ),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__4 
       (.I0(\buffer_reg_n_0_[52] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[52] ),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__4 
       (.I0(\buffer_reg_n_0_[53] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[53] ),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__4 
       (.I0(\buffer_reg_n_0_[54] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[54] ),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__4 
       (.I0(\buffer_reg_n_0_[55] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[55] ),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__4 
       (.I0(\buffer_reg_n_0_[56] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[56] ),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__4 
       (.I0(\buffer_reg_n_0_[57] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[57] ),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__4 
       (.I0(\buffer_reg_n_0_[58] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[58] ),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__4 
       (.I0(\buffer_reg_n_0_[59] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[59] ),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__4 
       (.I0(\buffer_reg_n_0_[5] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__4 
       (.I0(\buffer_reg_n_0_[60] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[60] ),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__4 
       (.I0(\buffer_reg_n_0_[61] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[61] ),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__4 
       (.I0(\buffer_reg_n_0_[62] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[62] ),
        .O(D[62]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__4 
       (.I0(\buffer_reg_n_0_[63] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[63] ),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__4 
       (.I0(\buffer_reg_n_0_[6] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__4 
       (.I0(\buffer_reg_n_0_[7] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__4 
       (.I0(\buffer_reg_n_0_[8] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__4 
       (.I0(\buffer_reg_n_0_[9] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000080AA)) 
    have_data_i_1
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(have_data_reg_0),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1_n_0),
        .Q(_trace_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0444444404040404)) 
    ready_i_reg_i_1
       (.I0(ready_i_reg_reg_0),
        .I1(trace3_valid),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(ready_i_reg_reg_2),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4
   (have_data_reg_0,
    ready_i_reg_reg_0,
    have_data02_out,
    \buffer_reg[63]_0 ,
    \buffer_reg[62]_0 ,
    \buffer_reg[61]_0 ,
    \buffer_reg[60]_0 ,
    \buffer_reg[59]_0 ,
    \buffer_reg[58]_0 ,
    \buffer_reg[57]_0 ,
    \buffer_reg[56]_0 ,
    \buffer_reg[55]_0 ,
    \buffer_reg[54]_0 ,
    \buffer_reg[53]_0 ,
    \buffer_reg[52]_0 ,
    \buffer_reg[51]_0 ,
    \buffer_reg[50]_0 ,
    \buffer_reg[49]_0 ,
    \buffer_reg[48]_0 ,
    \buffer_reg[47]_0 ,
    \buffer_reg[46]_0 ,
    \buffer_reg[45]_0 ,
    \buffer_reg[44]_0 ,
    \buffer_reg[43]_0 ,
    \buffer_reg[42]_0 ,
    \buffer_reg[41]_0 ,
    \buffer_reg[40]_0 ,
    \buffer_reg[39]_0 ,
    \buffer_reg[38]_0 ,
    \buffer_reg[37]_0 ,
    \buffer_reg[36]_0 ,
    \buffer_reg[35]_0 ,
    \buffer_reg[34]_0 ,
    \buffer_reg[33]_0 ,
    \buffer_reg[32]_0 ,
    \buffer_reg[31]_0 ,
    \buffer_reg[30]_0 ,
    \buffer_reg[29]_0 ,
    \buffer_reg[28]_0 ,
    \buffer_reg[27]_0 ,
    \buffer_reg[26]_0 ,
    \buffer_reg[25]_0 ,
    \buffer_reg[24]_0 ,
    \buffer_reg[23]_0 ,
    \buffer_reg[22]_0 ,
    \buffer_reg[21]_0 ,
    \buffer_reg[20]_0 ,
    \buffer_reg[19]_0 ,
    \buffer_reg[18]_0 ,
    \buffer_reg[17]_0 ,
    \buffer_reg[16]_0 ,
    \buffer_reg[15]_0 ,
    \buffer_reg[14]_0 ,
    \buffer_reg[13]_0 ,
    \buffer_reg[12]_0 ,
    \buffer_reg[11]_0 ,
    \buffer_reg[10]_0 ,
    \buffer_reg[9]_0 ,
    \buffer_reg[8]_0 ,
    \buffer_reg[7]_0 ,
    \buffer_reg[6]_0 ,
    \buffer_reg[5]_0 ,
    \buffer_reg[4]_0 ,
    \buffer_reg[3]_0 ,
    \buffer_reg[2]_0 ,
    \buffer_reg[1]_0 ,
    \buffer_reg[0]_0 ,
    trace_clk,
    trace4_valid,
    _trace_valid,
    ready_i_reg_reg_1,
    have_data0,
    have_data_reg_1,
    trace4_data);
  output [0:0]have_data_reg_0;
  output ready_i_reg_reg_0;
  output have_data02_out;
  output \buffer_reg[63]_0 ;
  output \buffer_reg[62]_0 ;
  output \buffer_reg[61]_0 ;
  output \buffer_reg[60]_0 ;
  output \buffer_reg[59]_0 ;
  output \buffer_reg[58]_0 ;
  output \buffer_reg[57]_0 ;
  output \buffer_reg[56]_0 ;
  output \buffer_reg[55]_0 ;
  output \buffer_reg[54]_0 ;
  output \buffer_reg[53]_0 ;
  output \buffer_reg[52]_0 ;
  output \buffer_reg[51]_0 ;
  output \buffer_reg[50]_0 ;
  output \buffer_reg[49]_0 ;
  output \buffer_reg[48]_0 ;
  output \buffer_reg[47]_0 ;
  output \buffer_reg[46]_0 ;
  output \buffer_reg[45]_0 ;
  output \buffer_reg[44]_0 ;
  output \buffer_reg[43]_0 ;
  output \buffer_reg[42]_0 ;
  output \buffer_reg[41]_0 ;
  output \buffer_reg[40]_0 ;
  output \buffer_reg[39]_0 ;
  output \buffer_reg[38]_0 ;
  output \buffer_reg[37]_0 ;
  output \buffer_reg[36]_0 ;
  output \buffer_reg[35]_0 ;
  output \buffer_reg[34]_0 ;
  output \buffer_reg[33]_0 ;
  output \buffer_reg[32]_0 ;
  output \buffer_reg[31]_0 ;
  output \buffer_reg[30]_0 ;
  output \buffer_reg[29]_0 ;
  output \buffer_reg[28]_0 ;
  output \buffer_reg[27]_0 ;
  output \buffer_reg[26]_0 ;
  output \buffer_reg[25]_0 ;
  output \buffer_reg[24]_0 ;
  output \buffer_reg[23]_0 ;
  output \buffer_reg[22]_0 ;
  output \buffer_reg[21]_0 ;
  output \buffer_reg[20]_0 ;
  output \buffer_reg[19]_0 ;
  output \buffer_reg[18]_0 ;
  output \buffer_reg[17]_0 ;
  output \buffer_reg[16]_0 ;
  output \buffer_reg[15]_0 ;
  output \buffer_reg[14]_0 ;
  output \buffer_reg[13]_0 ;
  output \buffer_reg[12]_0 ;
  output \buffer_reg[11]_0 ;
  output \buffer_reg[10]_0 ;
  output \buffer_reg[9]_0 ;
  output \buffer_reg[8]_0 ;
  output \buffer_reg[7]_0 ;
  output \buffer_reg[6]_0 ;
  output \buffer_reg[5]_0 ;
  output \buffer_reg[4]_0 ;
  output \buffer_reg[3]_0 ;
  output \buffer_reg[2]_0 ;
  output \buffer_reg[1]_0 ;
  output \buffer_reg[0]_0 ;
  input trace_clk;
  input trace4_valid;
  input [0:0]_trace_valid;
  input ready_i_reg_reg_1;
  input have_data0;
  input have_data_reg_1;
  input [63:0]trace4_data;

  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__4_n_0 ;
  wire \buffer[63]_i_2__0_n_0 ;
  wire \buffer_reg[0]_0 ;
  wire \buffer_reg[10]_0 ;
  wire \buffer_reg[11]_0 ;
  wire \buffer_reg[12]_0 ;
  wire \buffer_reg[13]_0 ;
  wire \buffer_reg[14]_0 ;
  wire \buffer_reg[15]_0 ;
  wire \buffer_reg[16]_0 ;
  wire \buffer_reg[17]_0 ;
  wire \buffer_reg[18]_0 ;
  wire \buffer_reg[19]_0 ;
  wire \buffer_reg[1]_0 ;
  wire \buffer_reg[20]_0 ;
  wire \buffer_reg[21]_0 ;
  wire \buffer_reg[22]_0 ;
  wire \buffer_reg[23]_0 ;
  wire \buffer_reg[24]_0 ;
  wire \buffer_reg[25]_0 ;
  wire \buffer_reg[26]_0 ;
  wire \buffer_reg[27]_0 ;
  wire \buffer_reg[28]_0 ;
  wire \buffer_reg[29]_0 ;
  wire \buffer_reg[2]_0 ;
  wire \buffer_reg[30]_0 ;
  wire \buffer_reg[31]_0 ;
  wire \buffer_reg[32]_0 ;
  wire \buffer_reg[33]_0 ;
  wire \buffer_reg[34]_0 ;
  wire \buffer_reg[35]_0 ;
  wire \buffer_reg[36]_0 ;
  wire \buffer_reg[37]_0 ;
  wire \buffer_reg[38]_0 ;
  wire \buffer_reg[39]_0 ;
  wire \buffer_reg[3]_0 ;
  wire \buffer_reg[40]_0 ;
  wire \buffer_reg[41]_0 ;
  wire \buffer_reg[42]_0 ;
  wire \buffer_reg[43]_0 ;
  wire \buffer_reg[44]_0 ;
  wire \buffer_reg[45]_0 ;
  wire \buffer_reg[46]_0 ;
  wire \buffer_reg[47]_0 ;
  wire \buffer_reg[48]_0 ;
  wire \buffer_reg[49]_0 ;
  wire \buffer_reg[4]_0 ;
  wire \buffer_reg[50]_0 ;
  wire \buffer_reg[51]_0 ;
  wire \buffer_reg[52]_0 ;
  wire \buffer_reg[53]_0 ;
  wire \buffer_reg[54]_0 ;
  wire \buffer_reg[55]_0 ;
  wire \buffer_reg[56]_0 ;
  wire \buffer_reg[57]_0 ;
  wire \buffer_reg[58]_0 ;
  wire \buffer_reg[59]_0 ;
  wire \buffer_reg[5]_0 ;
  wire \buffer_reg[60]_0 ;
  wire \buffer_reg[61]_0 ;
  wire \buffer_reg[62]_0 ;
  wire \buffer_reg[63]_0 ;
  wire \buffer_reg[6]_0 ;
  wire \buffer_reg[7]_0 ;
  wire \buffer_reg[8]_0 ;
  wire \buffer_reg[9]_0 ;
  wire have_data0;
  wire have_data02_out;
  wire have_data_i_1__0_n_0;
  wire [0:0]have_data_reg_0;
  wire have_data_reg_1;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [63:0]trace4_data;
  wire trace4_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__4 
       (.I0(have_data_reg_1),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \buffer[63]_i_2__0 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_1),
        .O(\buffer[63]_i_2__0_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[0]),
        .Q(\buffer_reg[0]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[10]),
        .Q(\buffer_reg[10]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[11]),
        .Q(\buffer_reg[11]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[12]),
        .Q(\buffer_reg[12]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[13]),
        .Q(\buffer_reg[13]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[14]),
        .Q(\buffer_reg[14]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[15]),
        .Q(\buffer_reg[15]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[16]),
        .Q(\buffer_reg[16]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[17]),
        .Q(\buffer_reg[17]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[18]),
        .Q(\buffer_reg[18]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[19]),
        .Q(\buffer_reg[19]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[1]),
        .Q(\buffer_reg[1]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[20]),
        .Q(\buffer_reg[20]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[21]),
        .Q(\buffer_reg[21]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[22]),
        .Q(\buffer_reg[22]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[23]),
        .Q(\buffer_reg[23]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[24]),
        .Q(\buffer_reg[24]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[25]),
        .Q(\buffer_reg[25]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[26]),
        .Q(\buffer_reg[26]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[27]),
        .Q(\buffer_reg[27]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[28]),
        .Q(\buffer_reg[28]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[29]),
        .Q(\buffer_reg[29]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[2]),
        .Q(\buffer_reg[2]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[30]),
        .Q(\buffer_reg[30]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[31]),
        .Q(\buffer_reg[31]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[32]),
        .Q(\buffer_reg[32]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[33]),
        .Q(\buffer_reg[33]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[34]),
        .Q(\buffer_reg[34]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[35]),
        .Q(\buffer_reg[35]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[36]),
        .Q(\buffer_reg[36]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[37]),
        .Q(\buffer_reg[37]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[38]),
        .Q(\buffer_reg[38]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[39]),
        .Q(\buffer_reg[39]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[3]),
        .Q(\buffer_reg[3]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[40]),
        .Q(\buffer_reg[40]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[41]),
        .Q(\buffer_reg[41]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[42]),
        .Q(\buffer_reg[42]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[43]),
        .Q(\buffer_reg[43]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[44]),
        .Q(\buffer_reg[44]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[45]),
        .Q(\buffer_reg[45]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[46]),
        .Q(\buffer_reg[46]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[47]),
        .Q(\buffer_reg[47]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[48]),
        .Q(\buffer_reg[48]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[49]),
        .Q(\buffer_reg[49]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[4]),
        .Q(\buffer_reg[4]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[50]),
        .Q(\buffer_reg[50]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[51]),
        .Q(\buffer_reg[51]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[52]),
        .Q(\buffer_reg[52]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[53]),
        .Q(\buffer_reg[53]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[54]),
        .Q(\buffer_reg[54]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[55]),
        .Q(\buffer_reg[55]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[56]),
        .Q(\buffer_reg[56]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[57]),
        .Q(\buffer_reg[57]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[58]),
        .Q(\buffer_reg[58]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[59]),
        .Q(\buffer_reg[59]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[5]),
        .Q(\buffer_reg[5]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[60]),
        .Q(\buffer_reg[60]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[61]),
        .Q(\buffer_reg[61]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[62]),
        .Q(\buffer_reg[62]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[63]),
        .Q(\buffer_reg[63]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[6]),
        .Q(\buffer_reg[6]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[7]),
        .Q(\buffer_reg[7]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[8]),
        .Q(\buffer_reg[8]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__0_n_0 ),
        .D(trace4_data[9]),
        .Q(\buffer_reg[9]_0 ),
        .R(\buffer[63]_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h4C)) 
    \data_i[63]_i_3__0 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .O(have_data02_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF000008AA)) 
    have_data_i_1__0
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(have_data_reg_1),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__0_n_0),
        .Q(have_data_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444044404040404)) 
    ready_i_reg_i_1__0
       (.I0(ready_i_reg_reg_0),
        .I1(trace4_valid),
        .I2(have_data_reg_0),
        .I3(_trace_valid),
        .I4(ready_i_reg_reg_1),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_5
   (_trace_valid,
    ready_i_reg_reg_0,
    D,
    E,
    trace_clk,
    trace5_valid,
    ready_i_reg_reg_1,
    ready_i_reg_reg_2,
    have_data0,
    have_data_reg_0,
    \data_i_reg[63] ,
    \data_i_reg[62] ,
    \data_i_reg[61] ,
    \data_i_reg[60] ,
    \data_i_reg[59] ,
    \data_i_reg[58] ,
    \data_i_reg[57] ,
    \data_i_reg[56] ,
    \data_i_reg[55] ,
    \data_i_reg[54] ,
    \data_i_reg[53] ,
    \data_i_reg[52] ,
    \data_i_reg[51] ,
    \data_i_reg[50] ,
    \data_i_reg[49] ,
    \data_i_reg[48] ,
    \data_i_reg[47] ,
    \data_i_reg[46] ,
    \data_i_reg[45] ,
    \data_i_reg[44] ,
    \data_i_reg[43] ,
    \data_i_reg[42] ,
    \data_i_reg[41] ,
    \data_i_reg[40] ,
    \data_i_reg[39] ,
    \data_i_reg[38] ,
    \data_i_reg[37] ,
    \data_i_reg[36] ,
    \data_i_reg[35] ,
    \data_i_reg[34] ,
    \data_i_reg[33] ,
    \data_i_reg[32] ,
    \data_i_reg[31] ,
    \data_i_reg[30] ,
    \data_i_reg[29] ,
    \data_i_reg[28] ,
    \data_i_reg[27] ,
    \data_i_reg[26] ,
    \data_i_reg[25] ,
    \data_i_reg[24] ,
    \data_i_reg[23] ,
    \data_i_reg[22] ,
    \data_i_reg[21] ,
    \data_i_reg[20] ,
    \data_i_reg[19] ,
    \data_i_reg[18] ,
    \data_i_reg[17] ,
    \data_i_reg[16] ,
    \data_i_reg[15] ,
    \data_i_reg[14] ,
    \data_i_reg[13] ,
    \data_i_reg[12] ,
    \data_i_reg[11] ,
    \data_i_reg[10] ,
    \data_i_reg[9] ,
    \data_i_reg[8] ,
    \data_i_reg[7] ,
    \data_i_reg[6] ,
    \data_i_reg[5] ,
    \data_i_reg[4] ,
    \data_i_reg[3] ,
    \data_i_reg[2] ,
    \data_i_reg[1] ,
    \data_i_reg[0] ,
    trace5_data);
  output [0:0]_trace_valid;
  output ready_i_reg_reg_0;
  output [63:0]D;
  output [0:0]E;
  input trace_clk;
  input trace5_valid;
  input ready_i_reg_reg_1;
  input [0:0]ready_i_reg_reg_2;
  input have_data0;
  input have_data_reg_0;
  input \data_i_reg[63] ;
  input \data_i_reg[62] ;
  input \data_i_reg[61] ;
  input \data_i_reg[60] ;
  input \data_i_reg[59] ;
  input \data_i_reg[58] ;
  input \data_i_reg[57] ;
  input \data_i_reg[56] ;
  input \data_i_reg[55] ;
  input \data_i_reg[54] ;
  input \data_i_reg[53] ;
  input \data_i_reg[52] ;
  input \data_i_reg[51] ;
  input \data_i_reg[50] ;
  input \data_i_reg[49] ;
  input \data_i_reg[48] ;
  input \data_i_reg[47] ;
  input \data_i_reg[46] ;
  input \data_i_reg[45] ;
  input \data_i_reg[44] ;
  input \data_i_reg[43] ;
  input \data_i_reg[42] ;
  input \data_i_reg[41] ;
  input \data_i_reg[40] ;
  input \data_i_reg[39] ;
  input \data_i_reg[38] ;
  input \data_i_reg[37] ;
  input \data_i_reg[36] ;
  input \data_i_reg[35] ;
  input \data_i_reg[34] ;
  input \data_i_reg[33] ;
  input \data_i_reg[32] ;
  input \data_i_reg[31] ;
  input \data_i_reg[30] ;
  input \data_i_reg[29] ;
  input \data_i_reg[28] ;
  input \data_i_reg[27] ;
  input \data_i_reg[26] ;
  input \data_i_reg[25] ;
  input \data_i_reg[24] ;
  input \data_i_reg[23] ;
  input \data_i_reg[22] ;
  input \data_i_reg[21] ;
  input \data_i_reg[20] ;
  input \data_i_reg[19] ;
  input \data_i_reg[18] ;
  input \data_i_reg[17] ;
  input \data_i_reg[16] ;
  input \data_i_reg[15] ;
  input \data_i_reg[14] ;
  input \data_i_reg[13] ;
  input \data_i_reg[12] ;
  input \data_i_reg[11] ;
  input \data_i_reg[10] ;
  input \data_i_reg[9] ;
  input \data_i_reg[8] ;
  input \data_i_reg[7] ;
  input \data_i_reg[6] ;
  input \data_i_reg[5] ;
  input \data_i_reg[4] ;
  input \data_i_reg[3] ;
  input \data_i_reg[2] ;
  input \data_i_reg[1] ;
  input \data_i_reg[0] ;
  input [63:0]trace5_data;

  wire [63:0]D;
  wire [0:0]E;
  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__5_n_0 ;
  wire \buffer[63]_i_2__1_n_0 ;
  wire \buffer_reg_n_0_[0] ;
  wire \buffer_reg_n_0_[10] ;
  wire \buffer_reg_n_0_[11] ;
  wire \buffer_reg_n_0_[12] ;
  wire \buffer_reg_n_0_[13] ;
  wire \buffer_reg_n_0_[14] ;
  wire \buffer_reg_n_0_[15] ;
  wire \buffer_reg_n_0_[16] ;
  wire \buffer_reg_n_0_[17] ;
  wire \buffer_reg_n_0_[18] ;
  wire \buffer_reg_n_0_[19] ;
  wire \buffer_reg_n_0_[1] ;
  wire \buffer_reg_n_0_[20] ;
  wire \buffer_reg_n_0_[21] ;
  wire \buffer_reg_n_0_[22] ;
  wire \buffer_reg_n_0_[23] ;
  wire \buffer_reg_n_0_[24] ;
  wire \buffer_reg_n_0_[25] ;
  wire \buffer_reg_n_0_[26] ;
  wire \buffer_reg_n_0_[27] ;
  wire \buffer_reg_n_0_[28] ;
  wire \buffer_reg_n_0_[29] ;
  wire \buffer_reg_n_0_[2] ;
  wire \buffer_reg_n_0_[30] ;
  wire \buffer_reg_n_0_[31] ;
  wire \buffer_reg_n_0_[32] ;
  wire \buffer_reg_n_0_[33] ;
  wire \buffer_reg_n_0_[34] ;
  wire \buffer_reg_n_0_[35] ;
  wire \buffer_reg_n_0_[36] ;
  wire \buffer_reg_n_0_[37] ;
  wire \buffer_reg_n_0_[38] ;
  wire \buffer_reg_n_0_[39] ;
  wire \buffer_reg_n_0_[3] ;
  wire \buffer_reg_n_0_[40] ;
  wire \buffer_reg_n_0_[41] ;
  wire \buffer_reg_n_0_[42] ;
  wire \buffer_reg_n_0_[43] ;
  wire \buffer_reg_n_0_[44] ;
  wire \buffer_reg_n_0_[45] ;
  wire \buffer_reg_n_0_[46] ;
  wire \buffer_reg_n_0_[47] ;
  wire \buffer_reg_n_0_[48] ;
  wire \buffer_reg_n_0_[49] ;
  wire \buffer_reg_n_0_[4] ;
  wire \buffer_reg_n_0_[50] ;
  wire \buffer_reg_n_0_[51] ;
  wire \buffer_reg_n_0_[52] ;
  wire \buffer_reg_n_0_[53] ;
  wire \buffer_reg_n_0_[54] ;
  wire \buffer_reg_n_0_[55] ;
  wire \buffer_reg_n_0_[56] ;
  wire \buffer_reg_n_0_[57] ;
  wire \buffer_reg_n_0_[58] ;
  wire \buffer_reg_n_0_[59] ;
  wire \buffer_reg_n_0_[5] ;
  wire \buffer_reg_n_0_[60] ;
  wire \buffer_reg_n_0_[61] ;
  wire \buffer_reg_n_0_[62] ;
  wire \buffer_reg_n_0_[63] ;
  wire \buffer_reg_n_0_[6] ;
  wire \buffer_reg_n_0_[7] ;
  wire \buffer_reg_n_0_[8] ;
  wire \buffer_reg_n_0_[9] ;
  wire \data_i_reg[0] ;
  wire \data_i_reg[10] ;
  wire \data_i_reg[11] ;
  wire \data_i_reg[12] ;
  wire \data_i_reg[13] ;
  wire \data_i_reg[14] ;
  wire \data_i_reg[15] ;
  wire \data_i_reg[16] ;
  wire \data_i_reg[17] ;
  wire \data_i_reg[18] ;
  wire \data_i_reg[19] ;
  wire \data_i_reg[1] ;
  wire \data_i_reg[20] ;
  wire \data_i_reg[21] ;
  wire \data_i_reg[22] ;
  wire \data_i_reg[23] ;
  wire \data_i_reg[24] ;
  wire \data_i_reg[25] ;
  wire \data_i_reg[26] ;
  wire \data_i_reg[27] ;
  wire \data_i_reg[28] ;
  wire \data_i_reg[29] ;
  wire \data_i_reg[2] ;
  wire \data_i_reg[30] ;
  wire \data_i_reg[31] ;
  wire \data_i_reg[32] ;
  wire \data_i_reg[33] ;
  wire \data_i_reg[34] ;
  wire \data_i_reg[35] ;
  wire \data_i_reg[36] ;
  wire \data_i_reg[37] ;
  wire \data_i_reg[38] ;
  wire \data_i_reg[39] ;
  wire \data_i_reg[3] ;
  wire \data_i_reg[40] ;
  wire \data_i_reg[41] ;
  wire \data_i_reg[42] ;
  wire \data_i_reg[43] ;
  wire \data_i_reg[44] ;
  wire \data_i_reg[45] ;
  wire \data_i_reg[46] ;
  wire \data_i_reg[47] ;
  wire \data_i_reg[48] ;
  wire \data_i_reg[49] ;
  wire \data_i_reg[4] ;
  wire \data_i_reg[50] ;
  wire \data_i_reg[51] ;
  wire \data_i_reg[52] ;
  wire \data_i_reg[53] ;
  wire \data_i_reg[54] ;
  wire \data_i_reg[55] ;
  wire \data_i_reg[56] ;
  wire \data_i_reg[57] ;
  wire \data_i_reg[58] ;
  wire \data_i_reg[59] ;
  wire \data_i_reg[5] ;
  wire \data_i_reg[60] ;
  wire \data_i_reg[61] ;
  wire \data_i_reg[62] ;
  wire \data_i_reg[63] ;
  wire \data_i_reg[6] ;
  wire \data_i_reg[7] ;
  wire \data_i_reg[8] ;
  wire \data_i_reg[9] ;
  wire have_data0;
  wire have_data_i_1__1_n_0;
  wire have_data_reg_0;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [0:0]ready_i_reg_reg_2;
  wire [63:0]trace5_data;
  wire trace5_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__5 
       (.I0(have_data_reg_0),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F550000)) 
    \buffer[63]_i_2__1 
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_0),
        .O(\buffer[63]_i_2__1_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[0]),
        .Q(\buffer_reg_n_0_[0] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[10]),
        .Q(\buffer_reg_n_0_[10] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[11]),
        .Q(\buffer_reg_n_0_[11] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[12]),
        .Q(\buffer_reg_n_0_[12] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[13]),
        .Q(\buffer_reg_n_0_[13] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[14]),
        .Q(\buffer_reg_n_0_[14] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[15]),
        .Q(\buffer_reg_n_0_[15] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[16]),
        .Q(\buffer_reg_n_0_[16] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[17]),
        .Q(\buffer_reg_n_0_[17] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[18]),
        .Q(\buffer_reg_n_0_[18] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[19]),
        .Q(\buffer_reg_n_0_[19] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[1]),
        .Q(\buffer_reg_n_0_[1] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[20]),
        .Q(\buffer_reg_n_0_[20] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[21]),
        .Q(\buffer_reg_n_0_[21] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[22]),
        .Q(\buffer_reg_n_0_[22] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[23]),
        .Q(\buffer_reg_n_0_[23] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[24]),
        .Q(\buffer_reg_n_0_[24] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[25]),
        .Q(\buffer_reg_n_0_[25] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[26]),
        .Q(\buffer_reg_n_0_[26] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[27]),
        .Q(\buffer_reg_n_0_[27] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[28]),
        .Q(\buffer_reg_n_0_[28] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[29]),
        .Q(\buffer_reg_n_0_[29] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[2]),
        .Q(\buffer_reg_n_0_[2] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[30]),
        .Q(\buffer_reg_n_0_[30] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[31]),
        .Q(\buffer_reg_n_0_[31] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[32]),
        .Q(\buffer_reg_n_0_[32] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[33]),
        .Q(\buffer_reg_n_0_[33] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[34]),
        .Q(\buffer_reg_n_0_[34] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[35]),
        .Q(\buffer_reg_n_0_[35] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[36]),
        .Q(\buffer_reg_n_0_[36] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[37]),
        .Q(\buffer_reg_n_0_[37] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[38]),
        .Q(\buffer_reg_n_0_[38] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[39]),
        .Q(\buffer_reg_n_0_[39] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[3]),
        .Q(\buffer_reg_n_0_[3] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[40]),
        .Q(\buffer_reg_n_0_[40] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[41]),
        .Q(\buffer_reg_n_0_[41] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[42]),
        .Q(\buffer_reg_n_0_[42] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[43]),
        .Q(\buffer_reg_n_0_[43] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[44]),
        .Q(\buffer_reg_n_0_[44] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[45]),
        .Q(\buffer_reg_n_0_[45] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[46]),
        .Q(\buffer_reg_n_0_[46] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[47]),
        .Q(\buffer_reg_n_0_[47] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[48]),
        .Q(\buffer_reg_n_0_[48] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[49]),
        .Q(\buffer_reg_n_0_[49] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[4]),
        .Q(\buffer_reg_n_0_[4] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[50]),
        .Q(\buffer_reg_n_0_[50] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[51]),
        .Q(\buffer_reg_n_0_[51] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[52]),
        .Q(\buffer_reg_n_0_[52] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[53]),
        .Q(\buffer_reg_n_0_[53] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[54]),
        .Q(\buffer_reg_n_0_[54] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[55]),
        .Q(\buffer_reg_n_0_[55] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[56]),
        .Q(\buffer_reg_n_0_[56] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[57]),
        .Q(\buffer_reg_n_0_[57] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[58]),
        .Q(\buffer_reg_n_0_[58] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[59]),
        .Q(\buffer_reg_n_0_[59] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[5]),
        .Q(\buffer_reg_n_0_[5] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[60]),
        .Q(\buffer_reg_n_0_[60] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[61]),
        .Q(\buffer_reg_n_0_[61] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[62]),
        .Q(\buffer_reg_n_0_[62] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[63]),
        .Q(\buffer_reg_n_0_[63] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[6]),
        .Q(\buffer_reg_n_0_[6] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[7]),
        .Q(\buffer_reg_n_0_[7] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[8]),
        .Q(\buffer_reg_n_0_[8] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__1_n_0 ),
        .D(trace5_data[9]),
        .Q(\buffer_reg_n_0_[9] ),
        .R(\buffer[63]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[0]_i_1__5 
       (.I0(\buffer_reg_n_0_[0] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[10]_i_1__5 
       (.I0(\buffer_reg_n_0_[10] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[10] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[11]_i_1__5 
       (.I0(\buffer_reg_n_0_[11] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[11] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[12]_i_1__5 
       (.I0(\buffer_reg_n_0_[12] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[12] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[13]_i_1__5 
       (.I0(\buffer_reg_n_0_[13] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[13] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[14]_i_1__5 
       (.I0(\buffer_reg_n_0_[14] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[14] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[15]_i_1__5 
       (.I0(\buffer_reg_n_0_[15] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[15] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[16]_i_1__5 
       (.I0(\buffer_reg_n_0_[16] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[16] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[17]_i_1__5 
       (.I0(\buffer_reg_n_0_[17] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[17] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[18]_i_1__5 
       (.I0(\buffer_reg_n_0_[18] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[18] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[19]_i_1__5 
       (.I0(\buffer_reg_n_0_[19] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[19] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[1]_i_1__5 
       (.I0(\buffer_reg_n_0_[1] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[20]_i_1__5 
       (.I0(\buffer_reg_n_0_[20] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[20] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[21]_i_1__5 
       (.I0(\buffer_reg_n_0_[21] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[21] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[22]_i_1__5 
       (.I0(\buffer_reg_n_0_[22] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[22] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[23]_i_1__5 
       (.I0(\buffer_reg_n_0_[23] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[23] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[24]_i_1__5 
       (.I0(\buffer_reg_n_0_[24] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[24] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[25]_i_1__5 
       (.I0(\buffer_reg_n_0_[25] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[25] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[26]_i_1__5 
       (.I0(\buffer_reg_n_0_[26] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[26] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[27]_i_1__5 
       (.I0(\buffer_reg_n_0_[27] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[27] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[28]_i_1__5 
       (.I0(\buffer_reg_n_0_[28] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[28] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[29]_i_1__5 
       (.I0(\buffer_reg_n_0_[29] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[29] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[2]_i_1__5 
       (.I0(\buffer_reg_n_0_[2] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[30]_i_1__5 
       (.I0(\buffer_reg_n_0_[30] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[30] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[31]_i_1__5 
       (.I0(\buffer_reg_n_0_[31] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[31] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[32]_i_1__5 
       (.I0(\buffer_reg_n_0_[32] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[32] ),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[33]_i_1__5 
       (.I0(\buffer_reg_n_0_[33] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[33] ),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[34]_i_1__5 
       (.I0(\buffer_reg_n_0_[34] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[34] ),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[35]_i_1__5 
       (.I0(\buffer_reg_n_0_[35] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[35] ),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[36]_i_1__5 
       (.I0(\buffer_reg_n_0_[36] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[36] ),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[37]_i_1__5 
       (.I0(\buffer_reg_n_0_[37] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[37] ),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[38]_i_1__5 
       (.I0(\buffer_reg_n_0_[38] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[38] ),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[39]_i_1__5 
       (.I0(\buffer_reg_n_0_[39] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[39] ),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[3]_i_1__5 
       (.I0(\buffer_reg_n_0_[3] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[40]_i_1__5 
       (.I0(\buffer_reg_n_0_[40] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[40] ),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[41]_i_1__5 
       (.I0(\buffer_reg_n_0_[41] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[41] ),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[42]_i_1__5 
       (.I0(\buffer_reg_n_0_[42] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[42] ),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[43]_i_1__5 
       (.I0(\buffer_reg_n_0_[43] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[43] ),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[44]_i_1__5 
       (.I0(\buffer_reg_n_0_[44] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[44] ),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[45]_i_1__5 
       (.I0(\buffer_reg_n_0_[45] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[45] ),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[46]_i_1__5 
       (.I0(\buffer_reg_n_0_[46] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[46] ),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[47]_i_1__5 
       (.I0(\buffer_reg_n_0_[47] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[47] ),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[48]_i_1__5 
       (.I0(\buffer_reg_n_0_[48] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[48] ),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[49]_i_1__5 
       (.I0(\buffer_reg_n_0_[49] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[49] ),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[4]_i_1__5 
       (.I0(\buffer_reg_n_0_[4] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[50]_i_1__5 
       (.I0(\buffer_reg_n_0_[50] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[50] ),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[51]_i_1__5 
       (.I0(\buffer_reg_n_0_[51] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[51] ),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[52]_i_1__5 
       (.I0(\buffer_reg_n_0_[52] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[52] ),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[53]_i_1__5 
       (.I0(\buffer_reg_n_0_[53] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[53] ),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[54]_i_1__5 
       (.I0(\buffer_reg_n_0_[54] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[54] ),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[55]_i_1__5 
       (.I0(\buffer_reg_n_0_[55] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[55] ),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[56]_i_1__5 
       (.I0(\buffer_reg_n_0_[56] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[56] ),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[57]_i_1__5 
       (.I0(\buffer_reg_n_0_[57] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[57] ),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[58]_i_1__5 
       (.I0(\buffer_reg_n_0_[58] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[58] ),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[59]_i_1__5 
       (.I0(\buffer_reg_n_0_[59] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[59] ),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[5]_i_1__5 
       (.I0(\buffer_reg_n_0_[5] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[60]_i_1__5 
       (.I0(\buffer_reg_n_0_[60] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[60] ),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[61]_i_1__5 
       (.I0(\buffer_reg_n_0_[61] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[61] ),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[62]_i_1__5 
       (.I0(\buffer_reg_n_0_[62] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[62] ),
        .O(D[62]));
  LUT4 #(
    .INIT(16'h5400)) 
    \data_i[63]_i_1__5 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .O(E));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[63]_i_2__5 
       (.I0(\buffer_reg_n_0_[63] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[63] ),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[6]_i_1__5 
       (.I0(\buffer_reg_n_0_[6] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[7]_i_1__5 
       (.I0(\buffer_reg_n_0_[7] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[7] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[8]_i_1__5 
       (.I0(\buffer_reg_n_0_[8] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[8] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hEFAF20A0)) 
    \data_i[9]_i_1__5 
       (.I0(\buffer_reg_n_0_[9] ),
        .I1(ready_i_reg_reg_2),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(\data_i_reg[9] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000080AA)) 
    have_data_i_1__1
       (.I0(_trace_valid),
        .I1(ready_i_reg_reg_1),
        .I2(ready_i_reg_reg_2),
        .I3(have_data0),
        .I4(have_data_reg_0),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__1_n_0),
        .Q(_trace_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0444444404040404)) 
    ready_i_reg_i_1__1
       (.I0(ready_i_reg_reg_0),
        .I1(trace5_valid),
        .I2(_trace_valid),
        .I3(ready_i_reg_reg_1),
        .I4(ready_i_reg_reg_2),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "stream_slice" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_6
   (have_data_reg_0,
    ready_i_reg_reg_0,
    have_data02_out,
    \buffer_reg[63]_0 ,
    \buffer_reg[62]_0 ,
    \buffer_reg[61]_0 ,
    \buffer_reg[60]_0 ,
    \buffer_reg[59]_0 ,
    \buffer_reg[58]_0 ,
    \buffer_reg[57]_0 ,
    \buffer_reg[56]_0 ,
    \buffer_reg[55]_0 ,
    \buffer_reg[54]_0 ,
    \buffer_reg[53]_0 ,
    \buffer_reg[52]_0 ,
    \buffer_reg[51]_0 ,
    \buffer_reg[50]_0 ,
    \buffer_reg[49]_0 ,
    \buffer_reg[48]_0 ,
    \buffer_reg[47]_0 ,
    \buffer_reg[46]_0 ,
    \buffer_reg[45]_0 ,
    \buffer_reg[44]_0 ,
    \buffer_reg[43]_0 ,
    \buffer_reg[42]_0 ,
    \buffer_reg[41]_0 ,
    \buffer_reg[40]_0 ,
    \buffer_reg[39]_0 ,
    \buffer_reg[38]_0 ,
    \buffer_reg[37]_0 ,
    \buffer_reg[36]_0 ,
    \buffer_reg[35]_0 ,
    \buffer_reg[34]_0 ,
    \buffer_reg[33]_0 ,
    \buffer_reg[32]_0 ,
    \buffer_reg[31]_0 ,
    \buffer_reg[30]_0 ,
    \buffer_reg[29]_0 ,
    \buffer_reg[28]_0 ,
    \buffer_reg[27]_0 ,
    \buffer_reg[26]_0 ,
    \buffer_reg[25]_0 ,
    \buffer_reg[24]_0 ,
    \buffer_reg[23]_0 ,
    \buffer_reg[22]_0 ,
    \buffer_reg[21]_0 ,
    \buffer_reg[20]_0 ,
    \buffer_reg[19]_0 ,
    \buffer_reg[18]_0 ,
    \buffer_reg[17]_0 ,
    \buffer_reg[16]_0 ,
    \buffer_reg[15]_0 ,
    \buffer_reg[14]_0 ,
    \buffer_reg[13]_0 ,
    \buffer_reg[12]_0 ,
    \buffer_reg[11]_0 ,
    \buffer_reg[10]_0 ,
    \buffer_reg[9]_0 ,
    \buffer_reg[8]_0 ,
    \buffer_reg[7]_0 ,
    \buffer_reg[6]_0 ,
    \buffer_reg[5]_0 ,
    \buffer_reg[4]_0 ,
    \buffer_reg[3]_0 ,
    \buffer_reg[2]_0 ,
    \buffer_reg[1]_0 ,
    \buffer_reg[0]_0 ,
    trace_clk,
    trace6_valid,
    _trace_valid,
    ready_i_reg_reg_1,
    have_data0,
    have_data_reg_1,
    trace6_data);
  output [0:0]have_data_reg_0;
  output ready_i_reg_reg_0;
  output have_data02_out;
  output \buffer_reg[63]_0 ;
  output \buffer_reg[62]_0 ;
  output \buffer_reg[61]_0 ;
  output \buffer_reg[60]_0 ;
  output \buffer_reg[59]_0 ;
  output \buffer_reg[58]_0 ;
  output \buffer_reg[57]_0 ;
  output \buffer_reg[56]_0 ;
  output \buffer_reg[55]_0 ;
  output \buffer_reg[54]_0 ;
  output \buffer_reg[53]_0 ;
  output \buffer_reg[52]_0 ;
  output \buffer_reg[51]_0 ;
  output \buffer_reg[50]_0 ;
  output \buffer_reg[49]_0 ;
  output \buffer_reg[48]_0 ;
  output \buffer_reg[47]_0 ;
  output \buffer_reg[46]_0 ;
  output \buffer_reg[45]_0 ;
  output \buffer_reg[44]_0 ;
  output \buffer_reg[43]_0 ;
  output \buffer_reg[42]_0 ;
  output \buffer_reg[41]_0 ;
  output \buffer_reg[40]_0 ;
  output \buffer_reg[39]_0 ;
  output \buffer_reg[38]_0 ;
  output \buffer_reg[37]_0 ;
  output \buffer_reg[36]_0 ;
  output \buffer_reg[35]_0 ;
  output \buffer_reg[34]_0 ;
  output \buffer_reg[33]_0 ;
  output \buffer_reg[32]_0 ;
  output \buffer_reg[31]_0 ;
  output \buffer_reg[30]_0 ;
  output \buffer_reg[29]_0 ;
  output \buffer_reg[28]_0 ;
  output \buffer_reg[27]_0 ;
  output \buffer_reg[26]_0 ;
  output \buffer_reg[25]_0 ;
  output \buffer_reg[24]_0 ;
  output \buffer_reg[23]_0 ;
  output \buffer_reg[22]_0 ;
  output \buffer_reg[21]_0 ;
  output \buffer_reg[20]_0 ;
  output \buffer_reg[19]_0 ;
  output \buffer_reg[18]_0 ;
  output \buffer_reg[17]_0 ;
  output \buffer_reg[16]_0 ;
  output \buffer_reg[15]_0 ;
  output \buffer_reg[14]_0 ;
  output \buffer_reg[13]_0 ;
  output \buffer_reg[12]_0 ;
  output \buffer_reg[11]_0 ;
  output \buffer_reg[10]_0 ;
  output \buffer_reg[9]_0 ;
  output \buffer_reg[8]_0 ;
  output \buffer_reg[7]_0 ;
  output \buffer_reg[6]_0 ;
  output \buffer_reg[5]_0 ;
  output \buffer_reg[4]_0 ;
  output \buffer_reg[3]_0 ;
  output \buffer_reg[2]_0 ;
  output \buffer_reg[1]_0 ;
  output \buffer_reg[0]_0 ;
  input trace_clk;
  input trace6_valid;
  input [0:0]_trace_valid;
  input ready_i_reg_reg_1;
  input have_data0;
  input have_data_reg_1;
  input [63:0]trace6_data;

  wire [0:0]_trace_valid;
  wire \buffer[63]_i_1__6_n_0 ;
  wire \buffer[63]_i_2__2_n_0 ;
  wire \buffer_reg[0]_0 ;
  wire \buffer_reg[10]_0 ;
  wire \buffer_reg[11]_0 ;
  wire \buffer_reg[12]_0 ;
  wire \buffer_reg[13]_0 ;
  wire \buffer_reg[14]_0 ;
  wire \buffer_reg[15]_0 ;
  wire \buffer_reg[16]_0 ;
  wire \buffer_reg[17]_0 ;
  wire \buffer_reg[18]_0 ;
  wire \buffer_reg[19]_0 ;
  wire \buffer_reg[1]_0 ;
  wire \buffer_reg[20]_0 ;
  wire \buffer_reg[21]_0 ;
  wire \buffer_reg[22]_0 ;
  wire \buffer_reg[23]_0 ;
  wire \buffer_reg[24]_0 ;
  wire \buffer_reg[25]_0 ;
  wire \buffer_reg[26]_0 ;
  wire \buffer_reg[27]_0 ;
  wire \buffer_reg[28]_0 ;
  wire \buffer_reg[29]_0 ;
  wire \buffer_reg[2]_0 ;
  wire \buffer_reg[30]_0 ;
  wire \buffer_reg[31]_0 ;
  wire \buffer_reg[32]_0 ;
  wire \buffer_reg[33]_0 ;
  wire \buffer_reg[34]_0 ;
  wire \buffer_reg[35]_0 ;
  wire \buffer_reg[36]_0 ;
  wire \buffer_reg[37]_0 ;
  wire \buffer_reg[38]_0 ;
  wire \buffer_reg[39]_0 ;
  wire \buffer_reg[3]_0 ;
  wire \buffer_reg[40]_0 ;
  wire \buffer_reg[41]_0 ;
  wire \buffer_reg[42]_0 ;
  wire \buffer_reg[43]_0 ;
  wire \buffer_reg[44]_0 ;
  wire \buffer_reg[45]_0 ;
  wire \buffer_reg[46]_0 ;
  wire \buffer_reg[47]_0 ;
  wire \buffer_reg[48]_0 ;
  wire \buffer_reg[49]_0 ;
  wire \buffer_reg[4]_0 ;
  wire \buffer_reg[50]_0 ;
  wire \buffer_reg[51]_0 ;
  wire \buffer_reg[52]_0 ;
  wire \buffer_reg[53]_0 ;
  wire \buffer_reg[54]_0 ;
  wire \buffer_reg[55]_0 ;
  wire \buffer_reg[56]_0 ;
  wire \buffer_reg[57]_0 ;
  wire \buffer_reg[58]_0 ;
  wire \buffer_reg[59]_0 ;
  wire \buffer_reg[5]_0 ;
  wire \buffer_reg[60]_0 ;
  wire \buffer_reg[61]_0 ;
  wire \buffer_reg[62]_0 ;
  wire \buffer_reg[63]_0 ;
  wire \buffer_reg[6]_0 ;
  wire \buffer_reg[7]_0 ;
  wire \buffer_reg[8]_0 ;
  wire \buffer_reg[9]_0 ;
  wire have_data0;
  wire have_data02_out;
  wire have_data_i_1__2_n_0;
  wire [0:0]have_data_reg_0;
  wire have_data_reg_1;
  wire ready_i_reg0;
  wire ready_i_reg_reg_0;
  wire ready_i_reg_reg_1;
  wire [63:0]trace6_data;
  wire trace6_valid;
  wire trace_clk;

  LUT2 #(
    .INIT(4'h2)) 
    \buffer[63]_i_1__6 
       (.I0(have_data_reg_1),
        .I1(ready_i_reg_reg_0),
        .O(\buffer[63]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7550000)) 
    \buffer[63]_i_2__2 
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(ready_i_reg_reg_0),
        .I5(have_data_reg_1),
        .O(\buffer[63]_i_2__2_n_0 ));
  FDRE \buffer_reg[0] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[0]),
        .Q(\buffer_reg[0]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[10] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[10]),
        .Q(\buffer_reg[10]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[11] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[11]),
        .Q(\buffer_reg[11]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[12] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[12]),
        .Q(\buffer_reg[12]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[13] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[13]),
        .Q(\buffer_reg[13]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[14] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[14]),
        .Q(\buffer_reg[14]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[15] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[15]),
        .Q(\buffer_reg[15]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[16] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[16]),
        .Q(\buffer_reg[16]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[17] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[17]),
        .Q(\buffer_reg[17]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[18] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[18]),
        .Q(\buffer_reg[18]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[19] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[19]),
        .Q(\buffer_reg[19]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[1] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[1]),
        .Q(\buffer_reg[1]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[20] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[20]),
        .Q(\buffer_reg[20]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[21] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[21]),
        .Q(\buffer_reg[21]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[22] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[22]),
        .Q(\buffer_reg[22]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[23] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[23]),
        .Q(\buffer_reg[23]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[24] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[24]),
        .Q(\buffer_reg[24]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[25] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[25]),
        .Q(\buffer_reg[25]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[26] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[26]),
        .Q(\buffer_reg[26]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[27] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[27]),
        .Q(\buffer_reg[27]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[28] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[28]),
        .Q(\buffer_reg[28]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[29] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[29]),
        .Q(\buffer_reg[29]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[2] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[2]),
        .Q(\buffer_reg[2]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[30] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[30]),
        .Q(\buffer_reg[30]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[31] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[31]),
        .Q(\buffer_reg[31]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[32] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[32]),
        .Q(\buffer_reg[32]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[33] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[33]),
        .Q(\buffer_reg[33]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[34] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[34]),
        .Q(\buffer_reg[34]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[35] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[35]),
        .Q(\buffer_reg[35]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[36] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[36]),
        .Q(\buffer_reg[36]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[37] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[37]),
        .Q(\buffer_reg[37]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[38] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[38]),
        .Q(\buffer_reg[38]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[39] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[39]),
        .Q(\buffer_reg[39]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[3] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[3]),
        .Q(\buffer_reg[3]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[40] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[40]),
        .Q(\buffer_reg[40]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[41] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[41]),
        .Q(\buffer_reg[41]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[42] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[42]),
        .Q(\buffer_reg[42]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[43] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[43]),
        .Q(\buffer_reg[43]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[44] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[44]),
        .Q(\buffer_reg[44]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[45] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[45]),
        .Q(\buffer_reg[45]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[46] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[46]),
        .Q(\buffer_reg[46]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[47] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[47]),
        .Q(\buffer_reg[47]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[48] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[48]),
        .Q(\buffer_reg[48]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[49] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[49]),
        .Q(\buffer_reg[49]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[4] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[4]),
        .Q(\buffer_reg[4]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[50] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[50]),
        .Q(\buffer_reg[50]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[51] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[51]),
        .Q(\buffer_reg[51]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[52] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[52]),
        .Q(\buffer_reg[52]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[53] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[53]),
        .Q(\buffer_reg[53]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[54] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[54]),
        .Q(\buffer_reg[54]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[55] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[55]),
        .Q(\buffer_reg[55]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[56] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[56]),
        .Q(\buffer_reg[56]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[57] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[57]),
        .Q(\buffer_reg[57]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[58] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[58]),
        .Q(\buffer_reg[58]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[59] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[59]),
        .Q(\buffer_reg[59]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[5] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[5]),
        .Q(\buffer_reg[5]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[60] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[60]),
        .Q(\buffer_reg[60]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[61] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[61]),
        .Q(\buffer_reg[61]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[62] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[62]),
        .Q(\buffer_reg[62]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[63] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[63]),
        .Q(\buffer_reg[63]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[6] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[6]),
        .Q(\buffer_reg[6]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[7] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[7]),
        .Q(\buffer_reg[7]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[8] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[8]),
        .Q(\buffer_reg[8]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  FDRE \buffer_reg[9] 
       (.C(trace_clk),
        .CE(\buffer[63]_i_2__2_n_0 ),
        .D(trace6_data[9]),
        .Q(\buffer_reg[9]_0 ),
        .R(\buffer[63]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000008AA)) 
    have_data_i_1__2
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .I3(have_data0),
        .I4(have_data_reg_1),
        .I5(ready_i_reg_reg_0),
        .O(have_data_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h4C)) 
    have_data_i_3__0
       (.I0(have_data_reg_0),
        .I1(_trace_valid),
        .I2(ready_i_reg_reg_1),
        .O(have_data02_out));
  FDRE #(
    .INIT(1'b0)) 
    have_data_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(have_data_i_1__2_n_0),
        .Q(have_data_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444044404040404)) 
    ready_i_reg_i_1__2
       (.I0(ready_i_reg_reg_0),
        .I1(trace6_valid),
        .I2(have_data_reg_0),
        .I3(_trace_valid),
        .I4(ready_i_reg_reg_1),
        .I5(have_data0),
        .O(ready_i_reg0));
  FDRE ready_i_reg_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ready_i_reg0),
        .Q(ready_i_reg_reg_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper
   (dout,
    empty,
    error_reg_0,
    trace_clk,
    din,
    sw_read,
    error_reg_1);
  output [63:0]dout;
  output empty;
  input error_reg_0;
  input trace_clk;
  input [61:0]din;
  input sw_read;
  input error_reg_1;

  wire [61:0]din;
  wire [63:0]dout;
  wire empty;
  wire error;
  wire error_i_1_n_0;
  wire error_reg_0;
  wire error_reg_1;
  wire error_write;
  wire fifo_i_n_66;
  wire full_i;
  wire sw_read;
  wire trace_clk;
  wire write__0;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    error_i_1
       (.I0(full_i),
        .I1(error_reg_1),
        .I2(error),
        .O(error_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(error_i_1_n_0),
        .Q(error),
        .R(error_reg_0));
  FDSE error_write_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(fifo_i_n_66),
        .Q(error_write),
        .S(error_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo fifo_i
       (.din(din),
        .dout(dout),
        .empty(empty),
        .error(error),
        .error_write(error_write),
        .error_write_reg(fifo_i_n_66),
        .full(full_i),
        .\gen_rst_ic.wr_rst_busy_ic_reg (error_reg_0),
        .sw_read(sw_read),
        .trace_clk(trace_clk),
        .wr_en(write__0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    write
       (.I0(error_reg_1),
        .I1(error),
        .I2(error_write),
        .O(write__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo
   (full,
    dout,
    empty,
    error_write_reg,
    \gen_rst_ic.wr_rst_busy_ic_reg ,
    trace_clk,
    wr_en,
    din,
    sw_read,
    error_write,
    error);
  output full;
  output [63:0]dout;
  output empty;
  output error_write_reg;
  input \gen_rst_ic.wr_rst_busy_ic_reg ;
  input trace_clk;
  input wr_en;
  input [61:0]din;
  input sw_read;
  input error_write;
  input error;

  wire [61:0]din;
  wire [63:0]dout;
  wire empty;
  wire error;
  wire error_write;
  wire error_write_reg;
  wire full;
  wire \gen_rst_ic.wr_rst_busy_ic_reg ;
  wire sw_read;
  wire trace_clk;
  wire wr_en;
  wire NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED;
  wire [3:0]NLW_xpm_fifo_async_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_xpm_fifo_async_inst_wr_data_count_UNCONNECTED;

  LUT3 #(
    .INIT(8'h8A)) 
    error_write_i_1
       (.I0(error_write),
        .I1(full),
        .I2(error),
        .O(error_write_reg));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "distributed" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "64" *) 
  (* READ_MODE = "fwft" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "64" *) 
  (* WR_DATA_COUNT_WIDTH = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async xpm_fifo_async_inst
       (.almost_empty(NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_async_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED),
        .din({1'b1,din[61],1'b0,din[60:0]}),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_async_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED),
        .rd_clk(trace_clk),
        .rd_data_count(NLW_xpm_fifo_async_inst_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(sw_read),
        .rd_rst_busy(NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED),
        .rst(\gen_rst_ic.wr_rst_busy_ic_reg ),
        .sbiterr(NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_async_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED),
        .wr_clk(trace_clk),
        .wr_data_count(NLW_xpm_fifo_async_inst_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* EMULATION = "1'b0" *) (* EXT_MON_RST = "1" *) (* EXT_TRACE_RST = "1" *) 
(* NUM_TRACE_PORTS = "7" *) (* USE_PASSTHROUGH = "1'b0" *) (* _NUM_LOG_PORTS = "8" *) 
(* _NUM_TRACE_PORTS = "8" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator
   (trace_clk,
    trace_resetn,
    mon_clk,
    mon_resetn,
    out_data,
    out_valid,
    out_ready,
    pass_data,
    pass_valid,
    pass_ready,
    trace_rst,
    trace0_counter_overflow,
    trace0_counter,
    trace0_event,
    trace0_data,
    trace0_valid,
    trace0_read,
    trace1_counter_overflow,
    trace1_counter,
    trace1_event,
    trace1_data,
    trace1_valid,
    trace1_read,
    trace2_counter_overflow,
    trace2_counter,
    trace2_event,
    trace2_data,
    trace2_valid,
    trace2_read,
    trace3_counter_overflow,
    trace3_counter,
    trace3_event,
    trace3_data,
    trace3_valid,
    trace3_read,
    trace4_counter_overflow,
    trace4_counter,
    trace4_event,
    trace4_data,
    trace4_valid,
    trace4_read,
    trace5_counter_overflow,
    trace5_counter,
    trace5_event,
    trace5_data,
    trace5_valid,
    trace5_read,
    trace6_counter_overflow,
    trace6_counter,
    trace6_event,
    trace6_data,
    trace6_valid,
    trace6_read,
    trace7_counter_overflow,
    trace7_counter,
    trace7_event,
    trace7_data,
    trace7_valid,
    trace7_read,
    trace8_counter_overflow,
    trace8_counter,
    trace8_event,
    trace8_data,
    trace8_valid,
    trace8_read,
    trace9_counter_overflow,
    trace9_counter,
    trace9_event,
    trace9_data,
    trace9_valid,
    trace9_read,
    trace10_counter_overflow,
    trace10_counter,
    trace10_event,
    trace10_data,
    trace10_valid,
    trace10_read,
    trace11_counter_overflow,
    trace11_counter,
    trace11_event,
    trace11_data,
    trace11_valid,
    trace11_read,
    trace12_counter_overflow,
    trace12_counter,
    trace12_event,
    trace12_data,
    trace12_valid,
    trace12_read,
    trace13_counter_overflow,
    trace13_counter,
    trace13_event,
    trace13_data,
    trace13_valid,
    trace13_read,
    trace14_counter_overflow,
    trace14_counter,
    trace14_event,
    trace14_data,
    trace14_valid,
    trace14_read,
    trace15_counter_overflow,
    trace15_counter,
    trace15_event,
    trace15_data,
    trace15_valid,
    trace15_read,
    trace16_counter_overflow,
    trace16_counter,
    trace16_event,
    trace16_data,
    trace16_valid,
    trace16_read,
    trace17_counter_overflow,
    trace17_counter,
    trace17_event,
    trace17_data,
    trace17_valid,
    trace17_read,
    trace18_counter_overflow,
    trace18_counter,
    trace18_event,
    trace18_data,
    trace18_valid,
    trace18_read,
    trace19_counter_overflow,
    trace19_counter,
    trace19_event,
    trace19_data,
    trace19_valid,
    trace19_read,
    trace20_counter_overflow,
    trace20_counter,
    trace20_event,
    trace20_data,
    trace20_valid,
    trace20_read,
    trace21_counter_overflow,
    trace21_counter,
    trace21_event,
    trace21_data,
    trace21_valid,
    trace21_read,
    trace22_counter_overflow,
    trace22_counter,
    trace22_event,
    trace22_data,
    trace22_valid,
    trace22_read,
    trace23_counter_overflow,
    trace23_counter,
    trace23_event,
    trace23_data,
    trace23_valid,
    trace23_read,
    trace24_counter_overflow,
    trace24_counter,
    trace24_event,
    trace24_data,
    trace24_valid,
    trace24_read,
    trace25_counter_overflow,
    trace25_counter,
    trace25_event,
    trace25_data,
    trace25_valid,
    trace25_read,
    trace26_counter_overflow,
    trace26_counter,
    trace26_event,
    trace26_data,
    trace26_valid,
    trace26_read,
    trace27_counter_overflow,
    trace27_counter,
    trace27_event,
    trace27_data,
    trace27_valid,
    trace27_read,
    trace28_counter_overflow,
    trace28_counter,
    trace28_event,
    trace28_data,
    trace28_valid,
    trace28_read,
    trace29_counter_overflow,
    trace29_counter,
    trace29_event,
    trace29_data,
    trace29_valid,
    trace29_read,
    trace30_counter_overflow,
    trace30_counter,
    trace30_event,
    trace30_data,
    trace30_valid,
    trace30_read,
    trace31_counter_overflow,
    trace31_counter,
    trace31_event,
    trace31_data,
    trace31_valid,
    trace31_read,
    trace32_counter_overflow,
    trace32_counter,
    trace32_event,
    trace32_data,
    trace32_valid,
    trace32_read,
    trace33_counter_overflow,
    trace33_counter,
    trace33_event,
    trace33_data,
    trace33_valid,
    trace33_read,
    trace34_counter_overflow,
    trace34_counter,
    trace34_event,
    trace34_data,
    trace34_valid,
    trace34_read,
    trace35_counter_overflow,
    trace35_counter,
    trace35_event,
    trace35_data,
    trace35_valid,
    trace35_read,
    trace36_counter_overflow,
    trace36_counter,
    trace36_event,
    trace36_data,
    trace36_valid,
    trace36_read,
    trace37_counter_overflow,
    trace37_counter,
    trace37_event,
    trace37_data,
    trace37_valid,
    trace37_read,
    trace38_counter_overflow,
    trace38_counter,
    trace38_event,
    trace38_data,
    trace38_valid,
    trace38_read,
    trace39_counter_overflow,
    trace39_counter,
    trace39_event,
    trace39_data,
    trace39_valid,
    trace39_read,
    trace40_counter_overflow,
    trace40_counter,
    trace40_event,
    trace40_data,
    trace40_valid,
    trace40_read,
    trace41_counter_overflow,
    trace41_counter,
    trace41_event,
    trace41_data,
    trace41_valid,
    trace41_read,
    trace42_counter_overflow,
    trace42_counter,
    trace42_event,
    trace42_data,
    trace42_valid,
    trace42_read,
    trace43_counter_overflow,
    trace43_counter,
    trace43_event,
    trace43_data,
    trace43_valid,
    trace43_read,
    trace44_counter_overflow,
    trace44_counter,
    trace44_event,
    trace44_data,
    trace44_valid,
    trace44_read,
    trace45_counter_overflow,
    trace45_counter,
    trace45_event,
    trace45_data,
    trace45_valid,
    trace45_read,
    trace46_counter_overflow,
    trace46_counter,
    trace46_event,
    trace46_data,
    trace46_valid,
    trace46_read,
    trace47_counter_overflow,
    trace47_counter,
    trace47_event,
    trace47_data,
    trace47_valid,
    trace47_read,
    trace48_counter_overflow,
    trace48_counter,
    trace48_event,
    trace48_data,
    trace48_valid,
    trace48_read,
    trace49_counter_overflow,
    trace49_counter,
    trace49_event,
    trace49_data,
    trace49_valid,
    trace49_read,
    trace50_counter_overflow,
    trace50_counter,
    trace50_event,
    trace50_data,
    trace50_valid,
    trace50_read,
    trace51_counter_overflow,
    trace51_counter,
    trace51_event,
    trace51_data,
    trace51_valid,
    trace51_read,
    trace52_counter_overflow,
    trace52_counter,
    trace52_event,
    trace52_data,
    trace52_valid,
    trace52_read,
    trace53_counter_overflow,
    trace53_counter,
    trace53_event,
    trace53_data,
    trace53_valid,
    trace53_read,
    trace54_counter_overflow,
    trace54_counter,
    trace54_event,
    trace54_data,
    trace54_valid,
    trace54_read,
    trace55_counter_overflow,
    trace55_counter,
    trace55_event,
    trace55_data,
    trace55_valid,
    trace55_read,
    trace56_counter_overflow,
    trace56_counter,
    trace56_event,
    trace56_data,
    trace56_valid,
    trace56_read,
    trace57_counter_overflow,
    trace57_counter,
    trace57_event,
    trace57_data,
    trace57_valid,
    trace57_read,
    trace58_counter_overflow,
    trace58_counter,
    trace58_event,
    trace58_data,
    trace58_valid,
    trace58_read,
    trace59_counter_overflow,
    trace59_counter,
    trace59_event,
    trace59_data,
    trace59_valid,
    trace59_read,
    trace60_counter_overflow,
    trace60_counter,
    trace60_event,
    trace60_data,
    trace60_valid,
    trace60_read,
    trace61_counter_overflow,
    trace61_counter,
    trace61_event,
    trace61_data,
    trace61_valid,
    trace61_read,
    trace62_counter_overflow,
    trace62_counter,
    trace62_event,
    trace62_data,
    trace62_valid,
    trace62_read,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input trace_clk;
  input trace_resetn;
  input mon_clk;
  input mon_resetn;
  output [63:0]out_data;
  output out_valid;
  input out_ready;
  input [63:0]pass_data;
  input pass_valid;
  output pass_ready;
  output trace_rst;
  output trace0_counter_overflow;
  output [44:0]trace0_counter;
  input trace0_event;
  input [63:0]trace0_data;
  input trace0_valid;
  output trace0_read;
  output trace1_counter_overflow;
  output [44:0]trace1_counter;
  input trace1_event;
  input [63:0]trace1_data;
  input trace1_valid;
  output trace1_read;
  output trace2_counter_overflow;
  output [44:0]trace2_counter;
  input trace2_event;
  input [63:0]trace2_data;
  input trace2_valid;
  output trace2_read;
  output trace3_counter_overflow;
  output [44:0]trace3_counter;
  input trace3_event;
  input [63:0]trace3_data;
  input trace3_valid;
  output trace3_read;
  output trace4_counter_overflow;
  output [44:0]trace4_counter;
  input trace4_event;
  input [63:0]trace4_data;
  input trace4_valid;
  output trace4_read;
  output trace5_counter_overflow;
  output [44:0]trace5_counter;
  input trace5_event;
  input [63:0]trace5_data;
  input trace5_valid;
  output trace5_read;
  output trace6_counter_overflow;
  output [44:0]trace6_counter;
  input trace6_event;
  input [63:0]trace6_data;
  input trace6_valid;
  output trace6_read;
  output trace7_counter_overflow;
  output [44:0]trace7_counter;
  input trace7_event;
  input [63:0]trace7_data;
  input trace7_valid;
  output trace7_read;
  output trace8_counter_overflow;
  output [44:0]trace8_counter;
  input trace8_event;
  input [63:0]trace8_data;
  input trace8_valid;
  output trace8_read;
  output trace9_counter_overflow;
  output [44:0]trace9_counter;
  input trace9_event;
  input [63:0]trace9_data;
  input trace9_valid;
  output trace9_read;
  output trace10_counter_overflow;
  output [44:0]trace10_counter;
  input trace10_event;
  input [63:0]trace10_data;
  input trace10_valid;
  output trace10_read;
  output trace11_counter_overflow;
  output [44:0]trace11_counter;
  input trace11_event;
  input [63:0]trace11_data;
  input trace11_valid;
  output trace11_read;
  output trace12_counter_overflow;
  output [44:0]trace12_counter;
  input trace12_event;
  input [63:0]trace12_data;
  input trace12_valid;
  output trace12_read;
  output trace13_counter_overflow;
  output [44:0]trace13_counter;
  input trace13_event;
  input [63:0]trace13_data;
  input trace13_valid;
  output trace13_read;
  output trace14_counter_overflow;
  output [44:0]trace14_counter;
  input trace14_event;
  input [63:0]trace14_data;
  input trace14_valid;
  output trace14_read;
  output trace15_counter_overflow;
  output [44:0]trace15_counter;
  input trace15_event;
  input [63:0]trace15_data;
  input trace15_valid;
  output trace15_read;
  output trace16_counter_overflow;
  output [44:0]trace16_counter;
  input trace16_event;
  input [63:0]trace16_data;
  input trace16_valid;
  output trace16_read;
  output trace17_counter_overflow;
  output [44:0]trace17_counter;
  input trace17_event;
  input [63:0]trace17_data;
  input trace17_valid;
  output trace17_read;
  output trace18_counter_overflow;
  output [44:0]trace18_counter;
  input trace18_event;
  input [63:0]trace18_data;
  input trace18_valid;
  output trace18_read;
  output trace19_counter_overflow;
  output [44:0]trace19_counter;
  input trace19_event;
  input [63:0]trace19_data;
  input trace19_valid;
  output trace19_read;
  output trace20_counter_overflow;
  output [44:0]trace20_counter;
  input trace20_event;
  input [63:0]trace20_data;
  input trace20_valid;
  output trace20_read;
  output trace21_counter_overflow;
  output [44:0]trace21_counter;
  input trace21_event;
  input [63:0]trace21_data;
  input trace21_valid;
  output trace21_read;
  output trace22_counter_overflow;
  output [44:0]trace22_counter;
  input trace22_event;
  input [63:0]trace22_data;
  input trace22_valid;
  output trace22_read;
  output trace23_counter_overflow;
  output [44:0]trace23_counter;
  input trace23_event;
  input [63:0]trace23_data;
  input trace23_valid;
  output trace23_read;
  output trace24_counter_overflow;
  output [44:0]trace24_counter;
  input trace24_event;
  input [63:0]trace24_data;
  input trace24_valid;
  output trace24_read;
  output trace25_counter_overflow;
  output [44:0]trace25_counter;
  input trace25_event;
  input [63:0]trace25_data;
  input trace25_valid;
  output trace25_read;
  output trace26_counter_overflow;
  output [44:0]trace26_counter;
  input trace26_event;
  input [63:0]trace26_data;
  input trace26_valid;
  output trace26_read;
  output trace27_counter_overflow;
  output [44:0]trace27_counter;
  input trace27_event;
  input [63:0]trace27_data;
  input trace27_valid;
  output trace27_read;
  output trace28_counter_overflow;
  output [44:0]trace28_counter;
  input trace28_event;
  input [63:0]trace28_data;
  input trace28_valid;
  output trace28_read;
  output trace29_counter_overflow;
  output [44:0]trace29_counter;
  input trace29_event;
  input [63:0]trace29_data;
  input trace29_valid;
  output trace29_read;
  output trace30_counter_overflow;
  output [44:0]trace30_counter;
  input trace30_event;
  input [63:0]trace30_data;
  input trace30_valid;
  output trace30_read;
  output trace31_counter_overflow;
  output [44:0]trace31_counter;
  input trace31_event;
  input [63:0]trace31_data;
  input trace31_valid;
  output trace31_read;
  output trace32_counter_overflow;
  output [44:0]trace32_counter;
  input trace32_event;
  input [63:0]trace32_data;
  input trace32_valid;
  output trace32_read;
  output trace33_counter_overflow;
  output [44:0]trace33_counter;
  input trace33_event;
  input [63:0]trace33_data;
  input trace33_valid;
  output trace33_read;
  output trace34_counter_overflow;
  output [44:0]trace34_counter;
  input trace34_event;
  input [63:0]trace34_data;
  input trace34_valid;
  output trace34_read;
  output trace35_counter_overflow;
  output [44:0]trace35_counter;
  input trace35_event;
  input [63:0]trace35_data;
  input trace35_valid;
  output trace35_read;
  output trace36_counter_overflow;
  output [44:0]trace36_counter;
  input trace36_event;
  input [63:0]trace36_data;
  input trace36_valid;
  output trace36_read;
  output trace37_counter_overflow;
  output [44:0]trace37_counter;
  input trace37_event;
  input [63:0]trace37_data;
  input trace37_valid;
  output trace37_read;
  output trace38_counter_overflow;
  output [44:0]trace38_counter;
  input trace38_event;
  input [63:0]trace38_data;
  input trace38_valid;
  output trace38_read;
  output trace39_counter_overflow;
  output [44:0]trace39_counter;
  input trace39_event;
  input [63:0]trace39_data;
  input trace39_valid;
  output trace39_read;
  output trace40_counter_overflow;
  output [44:0]trace40_counter;
  input trace40_event;
  input [63:0]trace40_data;
  input trace40_valid;
  output trace40_read;
  output trace41_counter_overflow;
  output [44:0]trace41_counter;
  input trace41_event;
  input [63:0]trace41_data;
  input trace41_valid;
  output trace41_read;
  output trace42_counter_overflow;
  output [44:0]trace42_counter;
  input trace42_event;
  input [63:0]trace42_data;
  input trace42_valid;
  output trace42_read;
  output trace43_counter_overflow;
  output [44:0]trace43_counter;
  input trace43_event;
  input [63:0]trace43_data;
  input trace43_valid;
  output trace43_read;
  output trace44_counter_overflow;
  output [44:0]trace44_counter;
  input trace44_event;
  input [63:0]trace44_data;
  input trace44_valid;
  output trace44_read;
  output trace45_counter_overflow;
  output [44:0]trace45_counter;
  input trace45_event;
  input [63:0]trace45_data;
  input trace45_valid;
  output trace45_read;
  output trace46_counter_overflow;
  output [44:0]trace46_counter;
  input trace46_event;
  input [63:0]trace46_data;
  input trace46_valid;
  output trace46_read;
  output trace47_counter_overflow;
  output [44:0]trace47_counter;
  input trace47_event;
  input [63:0]trace47_data;
  input trace47_valid;
  output trace47_read;
  output trace48_counter_overflow;
  output [44:0]trace48_counter;
  input trace48_event;
  input [63:0]trace48_data;
  input trace48_valid;
  output trace48_read;
  output trace49_counter_overflow;
  output [44:0]trace49_counter;
  input trace49_event;
  input [63:0]trace49_data;
  input trace49_valid;
  output trace49_read;
  output trace50_counter_overflow;
  output [44:0]trace50_counter;
  input trace50_event;
  input [63:0]trace50_data;
  input trace50_valid;
  output trace50_read;
  output trace51_counter_overflow;
  output [44:0]trace51_counter;
  input trace51_event;
  input [63:0]trace51_data;
  input trace51_valid;
  output trace51_read;
  output trace52_counter_overflow;
  output [44:0]trace52_counter;
  input trace52_event;
  input [63:0]trace52_data;
  input trace52_valid;
  output trace52_read;
  output trace53_counter_overflow;
  output [44:0]trace53_counter;
  input trace53_event;
  input [63:0]trace53_data;
  input trace53_valid;
  output trace53_read;
  output trace54_counter_overflow;
  output [44:0]trace54_counter;
  input trace54_event;
  input [63:0]trace54_data;
  input trace54_valid;
  output trace54_read;
  output trace55_counter_overflow;
  output [44:0]trace55_counter;
  input trace55_event;
  input [63:0]trace55_data;
  input trace55_valid;
  output trace55_read;
  output trace56_counter_overflow;
  output [44:0]trace56_counter;
  input trace56_event;
  input [63:0]trace56_data;
  input trace56_valid;
  output trace56_read;
  output trace57_counter_overflow;
  output [44:0]trace57_counter;
  input trace57_event;
  input [63:0]trace57_data;
  input trace57_valid;
  output trace57_read;
  output trace58_counter_overflow;
  output [44:0]trace58_counter;
  input trace58_event;
  input [63:0]trace58_data;
  input trace58_valid;
  output trace58_read;
  output trace59_counter_overflow;
  output [44:0]trace59_counter;
  input trace59_event;
  input [63:0]trace59_data;
  input trace59_valid;
  output trace59_read;
  output trace60_counter_overflow;
  output [44:0]trace60_counter;
  input trace60_event;
  input [63:0]trace60_data;
  input trace60_valid;
  output trace60_read;
  output trace61_counter_overflow;
  output [44:0]trace61_counter;
  input trace61_event;
  input [63:0]trace61_data;
  input trace61_valid;
  output trace61_read;
  output trace62_counter_overflow;
  output [44:0]trace62_counter;
  input trace62_event;
  input [63:0]trace62_data;
  input trace62_valid;
  output trace62_read;
  input [3:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire [7:0]_trace_valid;
  wire axi_lite_if_i_n_6;
  wire axi_lite_if_i_n_7;
  wire axi_lite_if_i_n_9;
  wire \b1[0].ss_i_n_10 ;
  wire \b1[0].ss_i_n_11 ;
  wire \b1[0].ss_i_n_12 ;
  wire \b1[0].ss_i_n_13 ;
  wire \b1[0].ss_i_n_14 ;
  wire \b1[0].ss_i_n_15 ;
  wire \b1[0].ss_i_n_16 ;
  wire \b1[0].ss_i_n_17 ;
  wire \b1[0].ss_i_n_18 ;
  wire \b1[0].ss_i_n_19 ;
  wire \b1[0].ss_i_n_2 ;
  wire \b1[0].ss_i_n_20 ;
  wire \b1[0].ss_i_n_21 ;
  wire \b1[0].ss_i_n_22 ;
  wire \b1[0].ss_i_n_23 ;
  wire \b1[0].ss_i_n_24 ;
  wire \b1[0].ss_i_n_25 ;
  wire \b1[0].ss_i_n_26 ;
  wire \b1[0].ss_i_n_27 ;
  wire \b1[0].ss_i_n_28 ;
  wire \b1[0].ss_i_n_29 ;
  wire \b1[0].ss_i_n_3 ;
  wire \b1[0].ss_i_n_30 ;
  wire \b1[0].ss_i_n_31 ;
  wire \b1[0].ss_i_n_32 ;
  wire \b1[0].ss_i_n_33 ;
  wire \b1[0].ss_i_n_34 ;
  wire \b1[0].ss_i_n_35 ;
  wire \b1[0].ss_i_n_36 ;
  wire \b1[0].ss_i_n_37 ;
  wire \b1[0].ss_i_n_38 ;
  wire \b1[0].ss_i_n_39 ;
  wire \b1[0].ss_i_n_4 ;
  wire \b1[0].ss_i_n_40 ;
  wire \b1[0].ss_i_n_41 ;
  wire \b1[0].ss_i_n_42 ;
  wire \b1[0].ss_i_n_43 ;
  wire \b1[0].ss_i_n_44 ;
  wire \b1[0].ss_i_n_45 ;
  wire \b1[0].ss_i_n_46 ;
  wire \b1[0].ss_i_n_47 ;
  wire \b1[0].ss_i_n_48 ;
  wire \b1[0].ss_i_n_49 ;
  wire \b1[0].ss_i_n_5 ;
  wire \b1[0].ss_i_n_50 ;
  wire \b1[0].ss_i_n_51 ;
  wire \b1[0].ss_i_n_52 ;
  wire \b1[0].ss_i_n_53 ;
  wire \b1[0].ss_i_n_54 ;
  wire \b1[0].ss_i_n_55 ;
  wire \b1[0].ss_i_n_56 ;
  wire \b1[0].ss_i_n_57 ;
  wire \b1[0].ss_i_n_58 ;
  wire \b1[0].ss_i_n_59 ;
  wire \b1[0].ss_i_n_6 ;
  wire \b1[0].ss_i_n_60 ;
  wire \b1[0].ss_i_n_61 ;
  wire \b1[0].ss_i_n_62 ;
  wire \b1[0].ss_i_n_63 ;
  wire \b1[0].ss_i_n_64 ;
  wire \b1[0].ss_i_n_65 ;
  wire \b1[0].ss_i_n_7 ;
  wire \b1[0].ss_i_n_8 ;
  wire \b1[0].ss_i_n_9 ;
  wire \b1[1].ss_i_n_10 ;
  wire \b1[1].ss_i_n_11 ;
  wire \b1[1].ss_i_n_12 ;
  wire \b1[1].ss_i_n_13 ;
  wire \b1[1].ss_i_n_14 ;
  wire \b1[1].ss_i_n_15 ;
  wire \b1[1].ss_i_n_16 ;
  wire \b1[1].ss_i_n_17 ;
  wire \b1[1].ss_i_n_18 ;
  wire \b1[1].ss_i_n_19 ;
  wire \b1[1].ss_i_n_2 ;
  wire \b1[1].ss_i_n_20 ;
  wire \b1[1].ss_i_n_21 ;
  wire \b1[1].ss_i_n_22 ;
  wire \b1[1].ss_i_n_23 ;
  wire \b1[1].ss_i_n_24 ;
  wire \b1[1].ss_i_n_25 ;
  wire \b1[1].ss_i_n_26 ;
  wire \b1[1].ss_i_n_27 ;
  wire \b1[1].ss_i_n_28 ;
  wire \b1[1].ss_i_n_29 ;
  wire \b1[1].ss_i_n_3 ;
  wire \b1[1].ss_i_n_30 ;
  wire \b1[1].ss_i_n_31 ;
  wire \b1[1].ss_i_n_32 ;
  wire \b1[1].ss_i_n_33 ;
  wire \b1[1].ss_i_n_34 ;
  wire \b1[1].ss_i_n_35 ;
  wire \b1[1].ss_i_n_36 ;
  wire \b1[1].ss_i_n_37 ;
  wire \b1[1].ss_i_n_38 ;
  wire \b1[1].ss_i_n_39 ;
  wire \b1[1].ss_i_n_4 ;
  wire \b1[1].ss_i_n_40 ;
  wire \b1[1].ss_i_n_41 ;
  wire \b1[1].ss_i_n_42 ;
  wire \b1[1].ss_i_n_43 ;
  wire \b1[1].ss_i_n_44 ;
  wire \b1[1].ss_i_n_45 ;
  wire \b1[1].ss_i_n_46 ;
  wire \b1[1].ss_i_n_47 ;
  wire \b1[1].ss_i_n_48 ;
  wire \b1[1].ss_i_n_49 ;
  wire \b1[1].ss_i_n_5 ;
  wire \b1[1].ss_i_n_50 ;
  wire \b1[1].ss_i_n_51 ;
  wire \b1[1].ss_i_n_52 ;
  wire \b1[1].ss_i_n_53 ;
  wire \b1[1].ss_i_n_54 ;
  wire \b1[1].ss_i_n_55 ;
  wire \b1[1].ss_i_n_56 ;
  wire \b1[1].ss_i_n_57 ;
  wire \b1[1].ss_i_n_58 ;
  wire \b1[1].ss_i_n_59 ;
  wire \b1[1].ss_i_n_6 ;
  wire \b1[1].ss_i_n_60 ;
  wire \b1[1].ss_i_n_61 ;
  wire \b1[1].ss_i_n_62 ;
  wire \b1[1].ss_i_n_63 ;
  wire \b1[1].ss_i_n_64 ;
  wire \b1[1].ss_i_n_65 ;
  wire \b1[1].ss_i_n_7 ;
  wire \b1[1].ss_i_n_8 ;
  wire \b1[1].ss_i_n_9 ;
  wire \b1[2].ss_i_n_10 ;
  wire \b1[2].ss_i_n_11 ;
  wire \b1[2].ss_i_n_12 ;
  wire \b1[2].ss_i_n_13 ;
  wire \b1[2].ss_i_n_14 ;
  wire \b1[2].ss_i_n_15 ;
  wire \b1[2].ss_i_n_16 ;
  wire \b1[2].ss_i_n_17 ;
  wire \b1[2].ss_i_n_18 ;
  wire \b1[2].ss_i_n_19 ;
  wire \b1[2].ss_i_n_2 ;
  wire \b1[2].ss_i_n_20 ;
  wire \b1[2].ss_i_n_21 ;
  wire \b1[2].ss_i_n_22 ;
  wire \b1[2].ss_i_n_23 ;
  wire \b1[2].ss_i_n_24 ;
  wire \b1[2].ss_i_n_25 ;
  wire \b1[2].ss_i_n_26 ;
  wire \b1[2].ss_i_n_27 ;
  wire \b1[2].ss_i_n_28 ;
  wire \b1[2].ss_i_n_29 ;
  wire \b1[2].ss_i_n_3 ;
  wire \b1[2].ss_i_n_30 ;
  wire \b1[2].ss_i_n_31 ;
  wire \b1[2].ss_i_n_32 ;
  wire \b1[2].ss_i_n_33 ;
  wire \b1[2].ss_i_n_34 ;
  wire \b1[2].ss_i_n_35 ;
  wire \b1[2].ss_i_n_36 ;
  wire \b1[2].ss_i_n_37 ;
  wire \b1[2].ss_i_n_38 ;
  wire \b1[2].ss_i_n_39 ;
  wire \b1[2].ss_i_n_4 ;
  wire \b1[2].ss_i_n_40 ;
  wire \b1[2].ss_i_n_41 ;
  wire \b1[2].ss_i_n_42 ;
  wire \b1[2].ss_i_n_43 ;
  wire \b1[2].ss_i_n_44 ;
  wire \b1[2].ss_i_n_45 ;
  wire \b1[2].ss_i_n_46 ;
  wire \b1[2].ss_i_n_47 ;
  wire \b1[2].ss_i_n_48 ;
  wire \b1[2].ss_i_n_49 ;
  wire \b1[2].ss_i_n_5 ;
  wire \b1[2].ss_i_n_50 ;
  wire \b1[2].ss_i_n_51 ;
  wire \b1[2].ss_i_n_52 ;
  wire \b1[2].ss_i_n_53 ;
  wire \b1[2].ss_i_n_54 ;
  wire \b1[2].ss_i_n_55 ;
  wire \b1[2].ss_i_n_56 ;
  wire \b1[2].ss_i_n_57 ;
  wire \b1[2].ss_i_n_58 ;
  wire \b1[2].ss_i_n_59 ;
  wire \b1[2].ss_i_n_6 ;
  wire \b1[2].ss_i_n_60 ;
  wire \b1[2].ss_i_n_61 ;
  wire \b1[2].ss_i_n_62 ;
  wire \b1[2].ss_i_n_63 ;
  wire \b1[2].ss_i_n_64 ;
  wire \b1[2].ss_i_n_65 ;
  wire \b1[2].ss_i_n_7 ;
  wire \b1[2].ss_i_n_8 ;
  wire \b1[2].ss_i_n_9 ;
  wire \b1[3].ss_i_n_10 ;
  wire \b1[3].ss_i_n_11 ;
  wire \b1[3].ss_i_n_12 ;
  wire \b1[3].ss_i_n_13 ;
  wire \b1[3].ss_i_n_14 ;
  wire \b1[3].ss_i_n_15 ;
  wire \b1[3].ss_i_n_16 ;
  wire \b1[3].ss_i_n_17 ;
  wire \b1[3].ss_i_n_18 ;
  wire \b1[3].ss_i_n_19 ;
  wire \b1[3].ss_i_n_20 ;
  wire \b1[3].ss_i_n_21 ;
  wire \b1[3].ss_i_n_22 ;
  wire \b1[3].ss_i_n_23 ;
  wire \b1[3].ss_i_n_24 ;
  wire \b1[3].ss_i_n_25 ;
  wire \b1[3].ss_i_n_26 ;
  wire \b1[3].ss_i_n_27 ;
  wire \b1[3].ss_i_n_28 ;
  wire \b1[3].ss_i_n_29 ;
  wire \b1[3].ss_i_n_3 ;
  wire \b1[3].ss_i_n_30 ;
  wire \b1[3].ss_i_n_31 ;
  wire \b1[3].ss_i_n_32 ;
  wire \b1[3].ss_i_n_33 ;
  wire \b1[3].ss_i_n_34 ;
  wire \b1[3].ss_i_n_35 ;
  wire \b1[3].ss_i_n_36 ;
  wire \b1[3].ss_i_n_37 ;
  wire \b1[3].ss_i_n_38 ;
  wire \b1[3].ss_i_n_39 ;
  wire \b1[3].ss_i_n_4 ;
  wire \b1[3].ss_i_n_40 ;
  wire \b1[3].ss_i_n_41 ;
  wire \b1[3].ss_i_n_42 ;
  wire \b1[3].ss_i_n_43 ;
  wire \b1[3].ss_i_n_44 ;
  wire \b1[3].ss_i_n_45 ;
  wire \b1[3].ss_i_n_46 ;
  wire \b1[3].ss_i_n_47 ;
  wire \b1[3].ss_i_n_48 ;
  wire \b1[3].ss_i_n_49 ;
  wire \b1[3].ss_i_n_5 ;
  wire \b1[3].ss_i_n_50 ;
  wire \b1[3].ss_i_n_51 ;
  wire \b1[3].ss_i_n_52 ;
  wire \b1[3].ss_i_n_53 ;
  wire \b1[3].ss_i_n_54 ;
  wire \b1[3].ss_i_n_55 ;
  wire \b1[3].ss_i_n_56 ;
  wire \b1[3].ss_i_n_57 ;
  wire \b1[3].ss_i_n_58 ;
  wire \b1[3].ss_i_n_59 ;
  wire \b1[3].ss_i_n_6 ;
  wire \b1[3].ss_i_n_60 ;
  wire \b1[3].ss_i_n_61 ;
  wire \b1[3].ss_i_n_62 ;
  wire \b1[3].ss_i_n_63 ;
  wire \b1[3].ss_i_n_64 ;
  wire \b1[3].ss_i_n_65 ;
  wire \b1[3].ss_i_n_66 ;
  wire \b1[3].ss_i_n_7 ;
  wire \b1[3].ss_i_n_8 ;
  wire \b1[3].ss_i_n_9 ;
  wire \b1[4].ss_i_n_10 ;
  wire \b1[4].ss_i_n_11 ;
  wire \b1[4].ss_i_n_12 ;
  wire \b1[4].ss_i_n_13 ;
  wire \b1[4].ss_i_n_14 ;
  wire \b1[4].ss_i_n_15 ;
  wire \b1[4].ss_i_n_16 ;
  wire \b1[4].ss_i_n_17 ;
  wire \b1[4].ss_i_n_18 ;
  wire \b1[4].ss_i_n_19 ;
  wire \b1[4].ss_i_n_2 ;
  wire \b1[4].ss_i_n_20 ;
  wire \b1[4].ss_i_n_21 ;
  wire \b1[4].ss_i_n_22 ;
  wire \b1[4].ss_i_n_23 ;
  wire \b1[4].ss_i_n_24 ;
  wire \b1[4].ss_i_n_25 ;
  wire \b1[4].ss_i_n_26 ;
  wire \b1[4].ss_i_n_27 ;
  wire \b1[4].ss_i_n_28 ;
  wire \b1[4].ss_i_n_29 ;
  wire \b1[4].ss_i_n_3 ;
  wire \b1[4].ss_i_n_30 ;
  wire \b1[4].ss_i_n_31 ;
  wire \b1[4].ss_i_n_32 ;
  wire \b1[4].ss_i_n_33 ;
  wire \b1[4].ss_i_n_34 ;
  wire \b1[4].ss_i_n_35 ;
  wire \b1[4].ss_i_n_36 ;
  wire \b1[4].ss_i_n_37 ;
  wire \b1[4].ss_i_n_38 ;
  wire \b1[4].ss_i_n_39 ;
  wire \b1[4].ss_i_n_4 ;
  wire \b1[4].ss_i_n_40 ;
  wire \b1[4].ss_i_n_41 ;
  wire \b1[4].ss_i_n_42 ;
  wire \b1[4].ss_i_n_43 ;
  wire \b1[4].ss_i_n_44 ;
  wire \b1[4].ss_i_n_45 ;
  wire \b1[4].ss_i_n_46 ;
  wire \b1[4].ss_i_n_47 ;
  wire \b1[4].ss_i_n_48 ;
  wire \b1[4].ss_i_n_49 ;
  wire \b1[4].ss_i_n_5 ;
  wire \b1[4].ss_i_n_50 ;
  wire \b1[4].ss_i_n_51 ;
  wire \b1[4].ss_i_n_52 ;
  wire \b1[4].ss_i_n_53 ;
  wire \b1[4].ss_i_n_54 ;
  wire \b1[4].ss_i_n_55 ;
  wire \b1[4].ss_i_n_56 ;
  wire \b1[4].ss_i_n_57 ;
  wire \b1[4].ss_i_n_58 ;
  wire \b1[4].ss_i_n_59 ;
  wire \b1[4].ss_i_n_6 ;
  wire \b1[4].ss_i_n_60 ;
  wire \b1[4].ss_i_n_61 ;
  wire \b1[4].ss_i_n_62 ;
  wire \b1[4].ss_i_n_63 ;
  wire \b1[4].ss_i_n_64 ;
  wire \b1[4].ss_i_n_65 ;
  wire \b1[4].ss_i_n_7 ;
  wire \b1[4].ss_i_n_8 ;
  wire \b1[4].ss_i_n_9 ;
  wire \b1[5].ss_i_n_10 ;
  wire \b1[5].ss_i_n_11 ;
  wire \b1[5].ss_i_n_12 ;
  wire \b1[5].ss_i_n_13 ;
  wire \b1[5].ss_i_n_14 ;
  wire \b1[5].ss_i_n_15 ;
  wire \b1[5].ss_i_n_16 ;
  wire \b1[5].ss_i_n_17 ;
  wire \b1[5].ss_i_n_18 ;
  wire \b1[5].ss_i_n_19 ;
  wire \b1[5].ss_i_n_20 ;
  wire \b1[5].ss_i_n_21 ;
  wire \b1[5].ss_i_n_22 ;
  wire \b1[5].ss_i_n_23 ;
  wire \b1[5].ss_i_n_24 ;
  wire \b1[5].ss_i_n_25 ;
  wire \b1[5].ss_i_n_26 ;
  wire \b1[5].ss_i_n_27 ;
  wire \b1[5].ss_i_n_28 ;
  wire \b1[5].ss_i_n_29 ;
  wire \b1[5].ss_i_n_3 ;
  wire \b1[5].ss_i_n_30 ;
  wire \b1[5].ss_i_n_31 ;
  wire \b1[5].ss_i_n_32 ;
  wire \b1[5].ss_i_n_33 ;
  wire \b1[5].ss_i_n_34 ;
  wire \b1[5].ss_i_n_35 ;
  wire \b1[5].ss_i_n_36 ;
  wire \b1[5].ss_i_n_37 ;
  wire \b1[5].ss_i_n_38 ;
  wire \b1[5].ss_i_n_39 ;
  wire \b1[5].ss_i_n_4 ;
  wire \b1[5].ss_i_n_40 ;
  wire \b1[5].ss_i_n_41 ;
  wire \b1[5].ss_i_n_42 ;
  wire \b1[5].ss_i_n_43 ;
  wire \b1[5].ss_i_n_44 ;
  wire \b1[5].ss_i_n_45 ;
  wire \b1[5].ss_i_n_46 ;
  wire \b1[5].ss_i_n_47 ;
  wire \b1[5].ss_i_n_48 ;
  wire \b1[5].ss_i_n_49 ;
  wire \b1[5].ss_i_n_5 ;
  wire \b1[5].ss_i_n_50 ;
  wire \b1[5].ss_i_n_51 ;
  wire \b1[5].ss_i_n_52 ;
  wire \b1[5].ss_i_n_53 ;
  wire \b1[5].ss_i_n_54 ;
  wire \b1[5].ss_i_n_55 ;
  wire \b1[5].ss_i_n_56 ;
  wire \b1[5].ss_i_n_57 ;
  wire \b1[5].ss_i_n_58 ;
  wire \b1[5].ss_i_n_59 ;
  wire \b1[5].ss_i_n_6 ;
  wire \b1[5].ss_i_n_60 ;
  wire \b1[5].ss_i_n_61 ;
  wire \b1[5].ss_i_n_62 ;
  wire \b1[5].ss_i_n_63 ;
  wire \b1[5].ss_i_n_64 ;
  wire \b1[5].ss_i_n_65 ;
  wire \b1[5].ss_i_n_66 ;
  wire \b1[5].ss_i_n_7 ;
  wire \b1[5].ss_i_n_8 ;
  wire \b1[5].ss_i_n_9 ;
  wire \b1[6].ss_i_n_10 ;
  wire \b1[6].ss_i_n_11 ;
  wire \b1[6].ss_i_n_12 ;
  wire \b1[6].ss_i_n_13 ;
  wire \b1[6].ss_i_n_14 ;
  wire \b1[6].ss_i_n_15 ;
  wire \b1[6].ss_i_n_16 ;
  wire \b1[6].ss_i_n_17 ;
  wire \b1[6].ss_i_n_18 ;
  wire \b1[6].ss_i_n_19 ;
  wire \b1[6].ss_i_n_2 ;
  wire \b1[6].ss_i_n_20 ;
  wire \b1[6].ss_i_n_21 ;
  wire \b1[6].ss_i_n_22 ;
  wire \b1[6].ss_i_n_23 ;
  wire \b1[6].ss_i_n_24 ;
  wire \b1[6].ss_i_n_25 ;
  wire \b1[6].ss_i_n_26 ;
  wire \b1[6].ss_i_n_27 ;
  wire \b1[6].ss_i_n_28 ;
  wire \b1[6].ss_i_n_29 ;
  wire \b1[6].ss_i_n_3 ;
  wire \b1[6].ss_i_n_30 ;
  wire \b1[6].ss_i_n_31 ;
  wire \b1[6].ss_i_n_32 ;
  wire \b1[6].ss_i_n_33 ;
  wire \b1[6].ss_i_n_34 ;
  wire \b1[6].ss_i_n_35 ;
  wire \b1[6].ss_i_n_36 ;
  wire \b1[6].ss_i_n_37 ;
  wire \b1[6].ss_i_n_38 ;
  wire \b1[6].ss_i_n_39 ;
  wire \b1[6].ss_i_n_4 ;
  wire \b1[6].ss_i_n_40 ;
  wire \b1[6].ss_i_n_41 ;
  wire \b1[6].ss_i_n_42 ;
  wire \b1[6].ss_i_n_43 ;
  wire \b1[6].ss_i_n_44 ;
  wire \b1[6].ss_i_n_45 ;
  wire \b1[6].ss_i_n_46 ;
  wire \b1[6].ss_i_n_47 ;
  wire \b1[6].ss_i_n_48 ;
  wire \b1[6].ss_i_n_49 ;
  wire \b1[6].ss_i_n_5 ;
  wire \b1[6].ss_i_n_50 ;
  wire \b1[6].ss_i_n_51 ;
  wire \b1[6].ss_i_n_52 ;
  wire \b1[6].ss_i_n_53 ;
  wire \b1[6].ss_i_n_54 ;
  wire \b1[6].ss_i_n_55 ;
  wire \b1[6].ss_i_n_56 ;
  wire \b1[6].ss_i_n_57 ;
  wire \b1[6].ss_i_n_58 ;
  wire \b1[6].ss_i_n_59 ;
  wire \b1[6].ss_i_n_6 ;
  wire \b1[6].ss_i_n_60 ;
  wire \b1[6].ss_i_n_61 ;
  wire \b1[6].ss_i_n_62 ;
  wire \b1[6].ss_i_n_63 ;
  wire \b1[6].ss_i_n_64 ;
  wire \b1[6].ss_i_n_65 ;
  wire \b1[6].ss_i_n_7 ;
  wire \b1[6].ss_i_n_8 ;
  wire \b1[6].ss_i_n_9 ;
  wire \b1[7].ss_i_n_10 ;
  wire \b1[7].ss_i_n_11 ;
  wire \b1[7].ss_i_n_12 ;
  wire \b1[7].ss_i_n_13 ;
  wire \b1[7].ss_i_n_14 ;
  wire \b1[7].ss_i_n_15 ;
  wire \b1[7].ss_i_n_16 ;
  wire \b1[7].ss_i_n_17 ;
  wire \b1[7].ss_i_n_18 ;
  wire \b1[7].ss_i_n_19 ;
  wire \b1[7].ss_i_n_20 ;
  wire \b1[7].ss_i_n_21 ;
  wire \b1[7].ss_i_n_22 ;
  wire \b1[7].ss_i_n_23 ;
  wire \b1[7].ss_i_n_24 ;
  wire \b1[7].ss_i_n_25 ;
  wire \b1[7].ss_i_n_26 ;
  wire \b1[7].ss_i_n_27 ;
  wire \b1[7].ss_i_n_28 ;
  wire \b1[7].ss_i_n_29 ;
  wire \b1[7].ss_i_n_3 ;
  wire \b1[7].ss_i_n_30 ;
  wire \b1[7].ss_i_n_31 ;
  wire \b1[7].ss_i_n_32 ;
  wire \b1[7].ss_i_n_33 ;
  wire \b1[7].ss_i_n_34 ;
  wire \b1[7].ss_i_n_35 ;
  wire \b1[7].ss_i_n_36 ;
  wire \b1[7].ss_i_n_37 ;
  wire \b1[7].ss_i_n_38 ;
  wire \b1[7].ss_i_n_39 ;
  wire \b1[7].ss_i_n_4 ;
  wire \b1[7].ss_i_n_40 ;
  wire \b1[7].ss_i_n_41 ;
  wire \b1[7].ss_i_n_42 ;
  wire \b1[7].ss_i_n_43 ;
  wire \b1[7].ss_i_n_44 ;
  wire \b1[7].ss_i_n_45 ;
  wire \b1[7].ss_i_n_46 ;
  wire \b1[7].ss_i_n_47 ;
  wire \b1[7].ss_i_n_48 ;
  wire \b1[7].ss_i_n_49 ;
  wire \b1[7].ss_i_n_5 ;
  wire \b1[7].ss_i_n_50 ;
  wire \b1[7].ss_i_n_51 ;
  wire \b1[7].ss_i_n_52 ;
  wire \b1[7].ss_i_n_53 ;
  wire \b1[7].ss_i_n_54 ;
  wire \b1[7].ss_i_n_55 ;
  wire \b1[7].ss_i_n_56 ;
  wire \b1[7].ss_i_n_57 ;
  wire \b1[7].ss_i_n_58 ;
  wire \b1[7].ss_i_n_59 ;
  wire \b1[7].ss_i_n_6 ;
  wire \b1[7].ss_i_n_60 ;
  wire \b1[7].ss_i_n_61 ;
  wire \b1[7].ss_i_n_62 ;
  wire \b1[7].ss_i_n_63 ;
  wire \b1[7].ss_i_n_64 ;
  wire \b1[7].ss_i_n_65 ;
  wire \b1[7].ss_i_n_66 ;
  wire \b1[7].ss_i_n_7 ;
  wire \b1[7].ss_i_n_8 ;
  wire \b1[7].ss_i_n_9 ;
  wire \b2[3].merge_i/data_i ;
  wire \b2[3].merge_i/have_data0 ;
  wire \b2[4].merge_i/data_i ;
  wire \b2[4].merge_i/have_data0 ;
  wire \b2[4].merge_i/have_data02_out ;
  wire \b2[5].merge_i/have_data0 ;
  wire \b2[5].merge_i/have_data02_out ;
  wire \b2[6].merge_i/data_i ;
  wire \b2[6].merge_i/have_data0 ;
  wire \b2[6].merge_i/have_data02_out ;
  wire \counter[7]_i_2_n_0 ;
  wire counter_overflow_i_10_n_0;
  wire counter_overflow_i_1_n_0;
  wire counter_overflow_i_2_n_0;
  wire counter_overflow_i_3_n_0;
  wire counter_overflow_i_4_n_0;
  wire counter_overflow_i_5_n_0;
  wire counter_overflow_i_6_n_0;
  wire counter_overflow_i_7_n_0;
  wire counter_overflow_i_8_n_0;
  wire counter_overflow_i_9_n_0;
  wire \counter_reg[15]_i_1_n_0 ;
  wire \counter_reg[15]_i_1_n_1 ;
  wire \counter_reg[15]_i_1_n_10 ;
  wire \counter_reg[15]_i_1_n_11 ;
  wire \counter_reg[15]_i_1_n_12 ;
  wire \counter_reg[15]_i_1_n_13 ;
  wire \counter_reg[15]_i_1_n_14 ;
  wire \counter_reg[15]_i_1_n_15 ;
  wire \counter_reg[15]_i_1_n_2 ;
  wire \counter_reg[15]_i_1_n_3 ;
  wire \counter_reg[15]_i_1_n_4 ;
  wire \counter_reg[15]_i_1_n_5 ;
  wire \counter_reg[15]_i_1_n_6 ;
  wire \counter_reg[15]_i_1_n_7 ;
  wire \counter_reg[15]_i_1_n_8 ;
  wire \counter_reg[15]_i_1_n_9 ;
  wire \counter_reg[23]_i_1_n_0 ;
  wire \counter_reg[23]_i_1_n_1 ;
  wire \counter_reg[23]_i_1_n_10 ;
  wire \counter_reg[23]_i_1_n_11 ;
  wire \counter_reg[23]_i_1_n_12 ;
  wire \counter_reg[23]_i_1_n_13 ;
  wire \counter_reg[23]_i_1_n_14 ;
  wire \counter_reg[23]_i_1_n_15 ;
  wire \counter_reg[23]_i_1_n_2 ;
  wire \counter_reg[23]_i_1_n_3 ;
  wire \counter_reg[23]_i_1_n_4 ;
  wire \counter_reg[23]_i_1_n_5 ;
  wire \counter_reg[23]_i_1_n_6 ;
  wire \counter_reg[23]_i_1_n_7 ;
  wire \counter_reg[23]_i_1_n_8 ;
  wire \counter_reg[23]_i_1_n_9 ;
  wire \counter_reg[31]_i_1_n_0 ;
  wire \counter_reg[31]_i_1_n_1 ;
  wire \counter_reg[31]_i_1_n_10 ;
  wire \counter_reg[31]_i_1_n_11 ;
  wire \counter_reg[31]_i_1_n_12 ;
  wire \counter_reg[31]_i_1_n_13 ;
  wire \counter_reg[31]_i_1_n_14 ;
  wire \counter_reg[31]_i_1_n_15 ;
  wire \counter_reg[31]_i_1_n_2 ;
  wire \counter_reg[31]_i_1_n_3 ;
  wire \counter_reg[31]_i_1_n_4 ;
  wire \counter_reg[31]_i_1_n_5 ;
  wire \counter_reg[31]_i_1_n_6 ;
  wire \counter_reg[31]_i_1_n_7 ;
  wire \counter_reg[31]_i_1_n_8 ;
  wire \counter_reg[31]_i_1_n_9 ;
  wire \counter_reg[39]_i_1_n_0 ;
  wire \counter_reg[39]_i_1_n_1 ;
  wire \counter_reg[39]_i_1_n_10 ;
  wire \counter_reg[39]_i_1_n_11 ;
  wire \counter_reg[39]_i_1_n_12 ;
  wire \counter_reg[39]_i_1_n_13 ;
  wire \counter_reg[39]_i_1_n_14 ;
  wire \counter_reg[39]_i_1_n_15 ;
  wire \counter_reg[39]_i_1_n_2 ;
  wire \counter_reg[39]_i_1_n_3 ;
  wire \counter_reg[39]_i_1_n_4 ;
  wire \counter_reg[39]_i_1_n_5 ;
  wire \counter_reg[39]_i_1_n_6 ;
  wire \counter_reg[39]_i_1_n_7 ;
  wire \counter_reg[39]_i_1_n_8 ;
  wire \counter_reg[39]_i_1_n_9 ;
  wire \counter_reg[44]_i_1_n_11 ;
  wire \counter_reg[44]_i_1_n_12 ;
  wire \counter_reg[44]_i_1_n_13 ;
  wire \counter_reg[44]_i_1_n_14 ;
  wire \counter_reg[44]_i_1_n_15 ;
  wire \counter_reg[44]_i_1_n_4 ;
  wire \counter_reg[44]_i_1_n_5 ;
  wire \counter_reg[44]_i_1_n_6 ;
  wire \counter_reg[44]_i_1_n_7 ;
  wire \counter_reg[7]_i_1_n_0 ;
  wire \counter_reg[7]_i_1_n_1 ;
  wire \counter_reg[7]_i_1_n_10 ;
  wire \counter_reg[7]_i_1_n_11 ;
  wire \counter_reg[7]_i_1_n_12 ;
  wire \counter_reg[7]_i_1_n_13 ;
  wire \counter_reg[7]_i_1_n_14 ;
  wire \counter_reg[7]_i_1_n_15 ;
  wire \counter_reg[7]_i_1_n_2 ;
  wire \counter_reg[7]_i_1_n_3 ;
  wire \counter_reg[7]_i_1_n_4 ;
  wire \counter_reg[7]_i_1_n_5 ;
  wire \counter_reg[7]_i_1_n_6 ;
  wire \counter_reg[7]_i_1_n_7 ;
  wire \counter_reg[7]_i_1_n_8 ;
  wire \counter_reg[7]_i_1_n_9 ;
  wire [44:0]ctr_dest_out;
  wire ctr_dest_req;
  wire ctr_of_dest_out;
  wire ctr_src_rcv;
  wire ctr_src_send;
  wire ctr_src_send_i_1_n_0;
  wire event_empty_i;
  wire merge_tree_i_n_0;
  wire merge_tree_i_n_1;
  wire merge_tree_i_n_2;
  wire merge_tree_i_n_3;
  wire mon_clk;
  wire mon_resetn;
  wire [63:0]out_data;
  wire out_ready;
  wire out_valid;
  wire [3:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [28:28]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [44:0]sw_counter;
  wire sw_counter_overflow;
  wire [63:0]sw_data;
  wire sw_read;
  wire sw_reset_mon;
  wire sw_trace_data;
  wire \sw_trace_data_reg_n_0_[0] ;
  wire \sw_trace_data_reg_n_0_[10] ;
  wire \sw_trace_data_reg_n_0_[11] ;
  wire \sw_trace_data_reg_n_0_[12] ;
  wire \sw_trace_data_reg_n_0_[13] ;
  wire \sw_trace_data_reg_n_0_[14] ;
  wire \sw_trace_data_reg_n_0_[15] ;
  wire \sw_trace_data_reg_n_0_[1] ;
  wire \sw_trace_data_reg_n_0_[2] ;
  wire \sw_trace_data_reg_n_0_[3] ;
  wire \sw_trace_data_reg_n_0_[4] ;
  wire \sw_trace_data_reg_n_0_[5] ;
  wire \sw_trace_data_reg_n_0_[6] ;
  wire \sw_trace_data_reg_n_0_[7] ;
  wire \sw_trace_data_reg_n_0_[8] ;
  wire \sw_trace_data_reg_n_0_[9] ;
  wire sw_trace_write_reg_n_0;
  wire [63:0]trace0_data;
  wire trace0_read;
  wire trace0_valid;
  wire [63:0]trace1_data;
  wire trace1_read;
  wire trace1_valid;
  wire [63:0]trace2_data;
  wire trace2_read;
  wire trace2_valid;
  wire [63:0]trace3_data;
  wire trace3_read;
  wire trace3_valid;
  wire [63:0]trace4_data;
  wire trace4_read;
  wire trace4_valid;
  wire [63:0]trace5_data;
  wire trace5_read;
  wire trace5_valid;
  wire [44:0]trace6_counter;
  wire trace6_counter_overflow;
  wire [63:0]trace6_data;
  wire trace6_read;
  wire trace6_valid;
  wire trace_clk;
  wire trace_resetn;
  wire trace_rst;
  wire [7:4]\NLW_counter_reg[44]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_counter_reg[44]_i_1_O_UNCONNECTED ;

  assign pass_ready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \^s_axi_rdata [28];
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \^s_axi_rdata [28];
  assign s_axi_rdata[27] = \^s_axi_rdata [28];
  assign s_axi_rdata[26] = \^s_axi_rdata [28];
  assign s_axi_rdata[25] = \^s_axi_rdata [28];
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \^s_axi_rdata [28];
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \^s_axi_rdata [28];
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \^s_axi_rdata [28];
  assign s_axi_rdata[18] = \^s_axi_rdata [28];
  assign s_axi_rdata[17] = \^s_axi_rdata [28];
  assign s_axi_rdata[16] = \^s_axi_rdata [28];
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \^s_axi_rdata [28];
  assign s_axi_rdata[2] = \^s_axi_rdata [28];
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \^s_axi_rdata [28];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign trace0_counter[44:0] = trace6_counter;
  assign trace0_counter_overflow = trace6_counter_overflow;
  assign trace10_counter[44] = \<const0> ;
  assign trace10_counter[43] = \<const0> ;
  assign trace10_counter[42] = \<const0> ;
  assign trace10_counter[41] = \<const0> ;
  assign trace10_counter[40] = \<const0> ;
  assign trace10_counter[39] = \<const0> ;
  assign trace10_counter[38] = \<const0> ;
  assign trace10_counter[37] = \<const0> ;
  assign trace10_counter[36] = \<const0> ;
  assign trace10_counter[35] = \<const0> ;
  assign trace10_counter[34] = \<const0> ;
  assign trace10_counter[33] = \<const0> ;
  assign trace10_counter[32] = \<const0> ;
  assign trace10_counter[31] = \<const0> ;
  assign trace10_counter[30] = \<const0> ;
  assign trace10_counter[29] = \<const0> ;
  assign trace10_counter[28] = \<const0> ;
  assign trace10_counter[27] = \<const0> ;
  assign trace10_counter[26] = \<const0> ;
  assign trace10_counter[25] = \<const0> ;
  assign trace10_counter[24] = \<const0> ;
  assign trace10_counter[23] = \<const0> ;
  assign trace10_counter[22] = \<const0> ;
  assign trace10_counter[21] = \<const0> ;
  assign trace10_counter[20] = \<const0> ;
  assign trace10_counter[19] = \<const0> ;
  assign trace10_counter[18] = \<const0> ;
  assign trace10_counter[17] = \<const0> ;
  assign trace10_counter[16] = \<const0> ;
  assign trace10_counter[15] = \<const0> ;
  assign trace10_counter[14] = \<const0> ;
  assign trace10_counter[13] = \<const0> ;
  assign trace10_counter[12] = \<const0> ;
  assign trace10_counter[11] = \<const0> ;
  assign trace10_counter[10] = \<const0> ;
  assign trace10_counter[9] = \<const0> ;
  assign trace10_counter[8] = \<const0> ;
  assign trace10_counter[7] = \<const0> ;
  assign trace10_counter[6] = \<const0> ;
  assign trace10_counter[5] = \<const0> ;
  assign trace10_counter[4] = \<const0> ;
  assign trace10_counter[3] = \<const0> ;
  assign trace10_counter[2] = \<const0> ;
  assign trace10_counter[1] = \<const0> ;
  assign trace10_counter[0] = \<const0> ;
  assign trace10_counter_overflow = \<const0> ;
  assign trace10_read = \<const0> ;
  assign trace11_counter[44] = \<const0> ;
  assign trace11_counter[43] = \<const0> ;
  assign trace11_counter[42] = \<const0> ;
  assign trace11_counter[41] = \<const0> ;
  assign trace11_counter[40] = \<const0> ;
  assign trace11_counter[39] = \<const0> ;
  assign trace11_counter[38] = \<const0> ;
  assign trace11_counter[37] = \<const0> ;
  assign trace11_counter[36] = \<const0> ;
  assign trace11_counter[35] = \<const0> ;
  assign trace11_counter[34] = \<const0> ;
  assign trace11_counter[33] = \<const0> ;
  assign trace11_counter[32] = \<const0> ;
  assign trace11_counter[31] = \<const0> ;
  assign trace11_counter[30] = \<const0> ;
  assign trace11_counter[29] = \<const0> ;
  assign trace11_counter[28] = \<const0> ;
  assign trace11_counter[27] = \<const0> ;
  assign trace11_counter[26] = \<const0> ;
  assign trace11_counter[25] = \<const0> ;
  assign trace11_counter[24] = \<const0> ;
  assign trace11_counter[23] = \<const0> ;
  assign trace11_counter[22] = \<const0> ;
  assign trace11_counter[21] = \<const0> ;
  assign trace11_counter[20] = \<const0> ;
  assign trace11_counter[19] = \<const0> ;
  assign trace11_counter[18] = \<const0> ;
  assign trace11_counter[17] = \<const0> ;
  assign trace11_counter[16] = \<const0> ;
  assign trace11_counter[15] = \<const0> ;
  assign trace11_counter[14] = \<const0> ;
  assign trace11_counter[13] = \<const0> ;
  assign trace11_counter[12] = \<const0> ;
  assign trace11_counter[11] = \<const0> ;
  assign trace11_counter[10] = \<const0> ;
  assign trace11_counter[9] = \<const0> ;
  assign trace11_counter[8] = \<const0> ;
  assign trace11_counter[7] = \<const0> ;
  assign trace11_counter[6] = \<const0> ;
  assign trace11_counter[5] = \<const0> ;
  assign trace11_counter[4] = \<const0> ;
  assign trace11_counter[3] = \<const0> ;
  assign trace11_counter[2] = \<const0> ;
  assign trace11_counter[1] = \<const0> ;
  assign trace11_counter[0] = \<const0> ;
  assign trace11_counter_overflow = \<const0> ;
  assign trace11_read = \<const0> ;
  assign trace12_counter[44] = \<const0> ;
  assign trace12_counter[43] = \<const0> ;
  assign trace12_counter[42] = \<const0> ;
  assign trace12_counter[41] = \<const0> ;
  assign trace12_counter[40] = \<const0> ;
  assign trace12_counter[39] = \<const0> ;
  assign trace12_counter[38] = \<const0> ;
  assign trace12_counter[37] = \<const0> ;
  assign trace12_counter[36] = \<const0> ;
  assign trace12_counter[35] = \<const0> ;
  assign trace12_counter[34] = \<const0> ;
  assign trace12_counter[33] = \<const0> ;
  assign trace12_counter[32] = \<const0> ;
  assign trace12_counter[31] = \<const0> ;
  assign trace12_counter[30] = \<const0> ;
  assign trace12_counter[29] = \<const0> ;
  assign trace12_counter[28] = \<const0> ;
  assign trace12_counter[27] = \<const0> ;
  assign trace12_counter[26] = \<const0> ;
  assign trace12_counter[25] = \<const0> ;
  assign trace12_counter[24] = \<const0> ;
  assign trace12_counter[23] = \<const0> ;
  assign trace12_counter[22] = \<const0> ;
  assign trace12_counter[21] = \<const0> ;
  assign trace12_counter[20] = \<const0> ;
  assign trace12_counter[19] = \<const0> ;
  assign trace12_counter[18] = \<const0> ;
  assign trace12_counter[17] = \<const0> ;
  assign trace12_counter[16] = \<const0> ;
  assign trace12_counter[15] = \<const0> ;
  assign trace12_counter[14] = \<const0> ;
  assign trace12_counter[13] = \<const0> ;
  assign trace12_counter[12] = \<const0> ;
  assign trace12_counter[11] = \<const0> ;
  assign trace12_counter[10] = \<const0> ;
  assign trace12_counter[9] = \<const0> ;
  assign trace12_counter[8] = \<const0> ;
  assign trace12_counter[7] = \<const0> ;
  assign trace12_counter[6] = \<const0> ;
  assign trace12_counter[5] = \<const0> ;
  assign trace12_counter[4] = \<const0> ;
  assign trace12_counter[3] = \<const0> ;
  assign trace12_counter[2] = \<const0> ;
  assign trace12_counter[1] = \<const0> ;
  assign trace12_counter[0] = \<const0> ;
  assign trace12_counter_overflow = \<const0> ;
  assign trace12_read = \<const0> ;
  assign trace13_counter[44] = \<const0> ;
  assign trace13_counter[43] = \<const0> ;
  assign trace13_counter[42] = \<const0> ;
  assign trace13_counter[41] = \<const0> ;
  assign trace13_counter[40] = \<const0> ;
  assign trace13_counter[39] = \<const0> ;
  assign trace13_counter[38] = \<const0> ;
  assign trace13_counter[37] = \<const0> ;
  assign trace13_counter[36] = \<const0> ;
  assign trace13_counter[35] = \<const0> ;
  assign trace13_counter[34] = \<const0> ;
  assign trace13_counter[33] = \<const0> ;
  assign trace13_counter[32] = \<const0> ;
  assign trace13_counter[31] = \<const0> ;
  assign trace13_counter[30] = \<const0> ;
  assign trace13_counter[29] = \<const0> ;
  assign trace13_counter[28] = \<const0> ;
  assign trace13_counter[27] = \<const0> ;
  assign trace13_counter[26] = \<const0> ;
  assign trace13_counter[25] = \<const0> ;
  assign trace13_counter[24] = \<const0> ;
  assign trace13_counter[23] = \<const0> ;
  assign trace13_counter[22] = \<const0> ;
  assign trace13_counter[21] = \<const0> ;
  assign trace13_counter[20] = \<const0> ;
  assign trace13_counter[19] = \<const0> ;
  assign trace13_counter[18] = \<const0> ;
  assign trace13_counter[17] = \<const0> ;
  assign trace13_counter[16] = \<const0> ;
  assign trace13_counter[15] = \<const0> ;
  assign trace13_counter[14] = \<const0> ;
  assign trace13_counter[13] = \<const0> ;
  assign trace13_counter[12] = \<const0> ;
  assign trace13_counter[11] = \<const0> ;
  assign trace13_counter[10] = \<const0> ;
  assign trace13_counter[9] = \<const0> ;
  assign trace13_counter[8] = \<const0> ;
  assign trace13_counter[7] = \<const0> ;
  assign trace13_counter[6] = \<const0> ;
  assign trace13_counter[5] = \<const0> ;
  assign trace13_counter[4] = \<const0> ;
  assign trace13_counter[3] = \<const0> ;
  assign trace13_counter[2] = \<const0> ;
  assign trace13_counter[1] = \<const0> ;
  assign trace13_counter[0] = \<const0> ;
  assign trace13_counter_overflow = \<const0> ;
  assign trace13_read = \<const0> ;
  assign trace14_counter[44] = \<const0> ;
  assign trace14_counter[43] = \<const0> ;
  assign trace14_counter[42] = \<const0> ;
  assign trace14_counter[41] = \<const0> ;
  assign trace14_counter[40] = \<const0> ;
  assign trace14_counter[39] = \<const0> ;
  assign trace14_counter[38] = \<const0> ;
  assign trace14_counter[37] = \<const0> ;
  assign trace14_counter[36] = \<const0> ;
  assign trace14_counter[35] = \<const0> ;
  assign trace14_counter[34] = \<const0> ;
  assign trace14_counter[33] = \<const0> ;
  assign trace14_counter[32] = \<const0> ;
  assign trace14_counter[31] = \<const0> ;
  assign trace14_counter[30] = \<const0> ;
  assign trace14_counter[29] = \<const0> ;
  assign trace14_counter[28] = \<const0> ;
  assign trace14_counter[27] = \<const0> ;
  assign trace14_counter[26] = \<const0> ;
  assign trace14_counter[25] = \<const0> ;
  assign trace14_counter[24] = \<const0> ;
  assign trace14_counter[23] = \<const0> ;
  assign trace14_counter[22] = \<const0> ;
  assign trace14_counter[21] = \<const0> ;
  assign trace14_counter[20] = \<const0> ;
  assign trace14_counter[19] = \<const0> ;
  assign trace14_counter[18] = \<const0> ;
  assign trace14_counter[17] = \<const0> ;
  assign trace14_counter[16] = \<const0> ;
  assign trace14_counter[15] = \<const0> ;
  assign trace14_counter[14] = \<const0> ;
  assign trace14_counter[13] = \<const0> ;
  assign trace14_counter[12] = \<const0> ;
  assign trace14_counter[11] = \<const0> ;
  assign trace14_counter[10] = \<const0> ;
  assign trace14_counter[9] = \<const0> ;
  assign trace14_counter[8] = \<const0> ;
  assign trace14_counter[7] = \<const0> ;
  assign trace14_counter[6] = \<const0> ;
  assign trace14_counter[5] = \<const0> ;
  assign trace14_counter[4] = \<const0> ;
  assign trace14_counter[3] = \<const0> ;
  assign trace14_counter[2] = \<const0> ;
  assign trace14_counter[1] = \<const0> ;
  assign trace14_counter[0] = \<const0> ;
  assign trace14_counter_overflow = \<const0> ;
  assign trace14_read = \<const0> ;
  assign trace15_counter[44] = \<const0> ;
  assign trace15_counter[43] = \<const0> ;
  assign trace15_counter[42] = \<const0> ;
  assign trace15_counter[41] = \<const0> ;
  assign trace15_counter[40] = \<const0> ;
  assign trace15_counter[39] = \<const0> ;
  assign trace15_counter[38] = \<const0> ;
  assign trace15_counter[37] = \<const0> ;
  assign trace15_counter[36] = \<const0> ;
  assign trace15_counter[35] = \<const0> ;
  assign trace15_counter[34] = \<const0> ;
  assign trace15_counter[33] = \<const0> ;
  assign trace15_counter[32] = \<const0> ;
  assign trace15_counter[31] = \<const0> ;
  assign trace15_counter[30] = \<const0> ;
  assign trace15_counter[29] = \<const0> ;
  assign trace15_counter[28] = \<const0> ;
  assign trace15_counter[27] = \<const0> ;
  assign trace15_counter[26] = \<const0> ;
  assign trace15_counter[25] = \<const0> ;
  assign trace15_counter[24] = \<const0> ;
  assign trace15_counter[23] = \<const0> ;
  assign trace15_counter[22] = \<const0> ;
  assign trace15_counter[21] = \<const0> ;
  assign trace15_counter[20] = \<const0> ;
  assign trace15_counter[19] = \<const0> ;
  assign trace15_counter[18] = \<const0> ;
  assign trace15_counter[17] = \<const0> ;
  assign trace15_counter[16] = \<const0> ;
  assign trace15_counter[15] = \<const0> ;
  assign trace15_counter[14] = \<const0> ;
  assign trace15_counter[13] = \<const0> ;
  assign trace15_counter[12] = \<const0> ;
  assign trace15_counter[11] = \<const0> ;
  assign trace15_counter[10] = \<const0> ;
  assign trace15_counter[9] = \<const0> ;
  assign trace15_counter[8] = \<const0> ;
  assign trace15_counter[7] = \<const0> ;
  assign trace15_counter[6] = \<const0> ;
  assign trace15_counter[5] = \<const0> ;
  assign trace15_counter[4] = \<const0> ;
  assign trace15_counter[3] = \<const0> ;
  assign trace15_counter[2] = \<const0> ;
  assign trace15_counter[1] = \<const0> ;
  assign trace15_counter[0] = \<const0> ;
  assign trace15_counter_overflow = \<const0> ;
  assign trace15_read = \<const0> ;
  assign trace16_counter[44] = \<const0> ;
  assign trace16_counter[43] = \<const0> ;
  assign trace16_counter[42] = \<const0> ;
  assign trace16_counter[41] = \<const0> ;
  assign trace16_counter[40] = \<const0> ;
  assign trace16_counter[39] = \<const0> ;
  assign trace16_counter[38] = \<const0> ;
  assign trace16_counter[37] = \<const0> ;
  assign trace16_counter[36] = \<const0> ;
  assign trace16_counter[35] = \<const0> ;
  assign trace16_counter[34] = \<const0> ;
  assign trace16_counter[33] = \<const0> ;
  assign trace16_counter[32] = \<const0> ;
  assign trace16_counter[31] = \<const0> ;
  assign trace16_counter[30] = \<const0> ;
  assign trace16_counter[29] = \<const0> ;
  assign trace16_counter[28] = \<const0> ;
  assign trace16_counter[27] = \<const0> ;
  assign trace16_counter[26] = \<const0> ;
  assign trace16_counter[25] = \<const0> ;
  assign trace16_counter[24] = \<const0> ;
  assign trace16_counter[23] = \<const0> ;
  assign trace16_counter[22] = \<const0> ;
  assign trace16_counter[21] = \<const0> ;
  assign trace16_counter[20] = \<const0> ;
  assign trace16_counter[19] = \<const0> ;
  assign trace16_counter[18] = \<const0> ;
  assign trace16_counter[17] = \<const0> ;
  assign trace16_counter[16] = \<const0> ;
  assign trace16_counter[15] = \<const0> ;
  assign trace16_counter[14] = \<const0> ;
  assign trace16_counter[13] = \<const0> ;
  assign trace16_counter[12] = \<const0> ;
  assign trace16_counter[11] = \<const0> ;
  assign trace16_counter[10] = \<const0> ;
  assign trace16_counter[9] = \<const0> ;
  assign trace16_counter[8] = \<const0> ;
  assign trace16_counter[7] = \<const0> ;
  assign trace16_counter[6] = \<const0> ;
  assign trace16_counter[5] = \<const0> ;
  assign trace16_counter[4] = \<const0> ;
  assign trace16_counter[3] = \<const0> ;
  assign trace16_counter[2] = \<const0> ;
  assign trace16_counter[1] = \<const0> ;
  assign trace16_counter[0] = \<const0> ;
  assign trace16_counter_overflow = \<const0> ;
  assign trace16_read = \<const0> ;
  assign trace17_counter[44] = \<const0> ;
  assign trace17_counter[43] = \<const0> ;
  assign trace17_counter[42] = \<const0> ;
  assign trace17_counter[41] = \<const0> ;
  assign trace17_counter[40] = \<const0> ;
  assign trace17_counter[39] = \<const0> ;
  assign trace17_counter[38] = \<const0> ;
  assign trace17_counter[37] = \<const0> ;
  assign trace17_counter[36] = \<const0> ;
  assign trace17_counter[35] = \<const0> ;
  assign trace17_counter[34] = \<const0> ;
  assign trace17_counter[33] = \<const0> ;
  assign trace17_counter[32] = \<const0> ;
  assign trace17_counter[31] = \<const0> ;
  assign trace17_counter[30] = \<const0> ;
  assign trace17_counter[29] = \<const0> ;
  assign trace17_counter[28] = \<const0> ;
  assign trace17_counter[27] = \<const0> ;
  assign trace17_counter[26] = \<const0> ;
  assign trace17_counter[25] = \<const0> ;
  assign trace17_counter[24] = \<const0> ;
  assign trace17_counter[23] = \<const0> ;
  assign trace17_counter[22] = \<const0> ;
  assign trace17_counter[21] = \<const0> ;
  assign trace17_counter[20] = \<const0> ;
  assign trace17_counter[19] = \<const0> ;
  assign trace17_counter[18] = \<const0> ;
  assign trace17_counter[17] = \<const0> ;
  assign trace17_counter[16] = \<const0> ;
  assign trace17_counter[15] = \<const0> ;
  assign trace17_counter[14] = \<const0> ;
  assign trace17_counter[13] = \<const0> ;
  assign trace17_counter[12] = \<const0> ;
  assign trace17_counter[11] = \<const0> ;
  assign trace17_counter[10] = \<const0> ;
  assign trace17_counter[9] = \<const0> ;
  assign trace17_counter[8] = \<const0> ;
  assign trace17_counter[7] = \<const0> ;
  assign trace17_counter[6] = \<const0> ;
  assign trace17_counter[5] = \<const0> ;
  assign trace17_counter[4] = \<const0> ;
  assign trace17_counter[3] = \<const0> ;
  assign trace17_counter[2] = \<const0> ;
  assign trace17_counter[1] = \<const0> ;
  assign trace17_counter[0] = \<const0> ;
  assign trace17_counter_overflow = \<const0> ;
  assign trace17_read = \<const0> ;
  assign trace18_counter[44] = \<const0> ;
  assign trace18_counter[43] = \<const0> ;
  assign trace18_counter[42] = \<const0> ;
  assign trace18_counter[41] = \<const0> ;
  assign trace18_counter[40] = \<const0> ;
  assign trace18_counter[39] = \<const0> ;
  assign trace18_counter[38] = \<const0> ;
  assign trace18_counter[37] = \<const0> ;
  assign trace18_counter[36] = \<const0> ;
  assign trace18_counter[35] = \<const0> ;
  assign trace18_counter[34] = \<const0> ;
  assign trace18_counter[33] = \<const0> ;
  assign trace18_counter[32] = \<const0> ;
  assign trace18_counter[31] = \<const0> ;
  assign trace18_counter[30] = \<const0> ;
  assign trace18_counter[29] = \<const0> ;
  assign trace18_counter[28] = \<const0> ;
  assign trace18_counter[27] = \<const0> ;
  assign trace18_counter[26] = \<const0> ;
  assign trace18_counter[25] = \<const0> ;
  assign trace18_counter[24] = \<const0> ;
  assign trace18_counter[23] = \<const0> ;
  assign trace18_counter[22] = \<const0> ;
  assign trace18_counter[21] = \<const0> ;
  assign trace18_counter[20] = \<const0> ;
  assign trace18_counter[19] = \<const0> ;
  assign trace18_counter[18] = \<const0> ;
  assign trace18_counter[17] = \<const0> ;
  assign trace18_counter[16] = \<const0> ;
  assign trace18_counter[15] = \<const0> ;
  assign trace18_counter[14] = \<const0> ;
  assign trace18_counter[13] = \<const0> ;
  assign trace18_counter[12] = \<const0> ;
  assign trace18_counter[11] = \<const0> ;
  assign trace18_counter[10] = \<const0> ;
  assign trace18_counter[9] = \<const0> ;
  assign trace18_counter[8] = \<const0> ;
  assign trace18_counter[7] = \<const0> ;
  assign trace18_counter[6] = \<const0> ;
  assign trace18_counter[5] = \<const0> ;
  assign trace18_counter[4] = \<const0> ;
  assign trace18_counter[3] = \<const0> ;
  assign trace18_counter[2] = \<const0> ;
  assign trace18_counter[1] = \<const0> ;
  assign trace18_counter[0] = \<const0> ;
  assign trace18_counter_overflow = \<const0> ;
  assign trace18_read = \<const0> ;
  assign trace19_counter[44] = \<const0> ;
  assign trace19_counter[43] = \<const0> ;
  assign trace19_counter[42] = \<const0> ;
  assign trace19_counter[41] = \<const0> ;
  assign trace19_counter[40] = \<const0> ;
  assign trace19_counter[39] = \<const0> ;
  assign trace19_counter[38] = \<const0> ;
  assign trace19_counter[37] = \<const0> ;
  assign trace19_counter[36] = \<const0> ;
  assign trace19_counter[35] = \<const0> ;
  assign trace19_counter[34] = \<const0> ;
  assign trace19_counter[33] = \<const0> ;
  assign trace19_counter[32] = \<const0> ;
  assign trace19_counter[31] = \<const0> ;
  assign trace19_counter[30] = \<const0> ;
  assign trace19_counter[29] = \<const0> ;
  assign trace19_counter[28] = \<const0> ;
  assign trace19_counter[27] = \<const0> ;
  assign trace19_counter[26] = \<const0> ;
  assign trace19_counter[25] = \<const0> ;
  assign trace19_counter[24] = \<const0> ;
  assign trace19_counter[23] = \<const0> ;
  assign trace19_counter[22] = \<const0> ;
  assign trace19_counter[21] = \<const0> ;
  assign trace19_counter[20] = \<const0> ;
  assign trace19_counter[19] = \<const0> ;
  assign trace19_counter[18] = \<const0> ;
  assign trace19_counter[17] = \<const0> ;
  assign trace19_counter[16] = \<const0> ;
  assign trace19_counter[15] = \<const0> ;
  assign trace19_counter[14] = \<const0> ;
  assign trace19_counter[13] = \<const0> ;
  assign trace19_counter[12] = \<const0> ;
  assign trace19_counter[11] = \<const0> ;
  assign trace19_counter[10] = \<const0> ;
  assign trace19_counter[9] = \<const0> ;
  assign trace19_counter[8] = \<const0> ;
  assign trace19_counter[7] = \<const0> ;
  assign trace19_counter[6] = \<const0> ;
  assign trace19_counter[5] = \<const0> ;
  assign trace19_counter[4] = \<const0> ;
  assign trace19_counter[3] = \<const0> ;
  assign trace19_counter[2] = \<const0> ;
  assign trace19_counter[1] = \<const0> ;
  assign trace19_counter[0] = \<const0> ;
  assign trace19_counter_overflow = \<const0> ;
  assign trace19_read = \<const0> ;
  assign trace1_counter[44:0] = trace6_counter;
  assign trace1_counter_overflow = trace6_counter_overflow;
  assign trace20_counter[44] = \<const0> ;
  assign trace20_counter[43] = \<const0> ;
  assign trace20_counter[42] = \<const0> ;
  assign trace20_counter[41] = \<const0> ;
  assign trace20_counter[40] = \<const0> ;
  assign trace20_counter[39] = \<const0> ;
  assign trace20_counter[38] = \<const0> ;
  assign trace20_counter[37] = \<const0> ;
  assign trace20_counter[36] = \<const0> ;
  assign trace20_counter[35] = \<const0> ;
  assign trace20_counter[34] = \<const0> ;
  assign trace20_counter[33] = \<const0> ;
  assign trace20_counter[32] = \<const0> ;
  assign trace20_counter[31] = \<const0> ;
  assign trace20_counter[30] = \<const0> ;
  assign trace20_counter[29] = \<const0> ;
  assign trace20_counter[28] = \<const0> ;
  assign trace20_counter[27] = \<const0> ;
  assign trace20_counter[26] = \<const0> ;
  assign trace20_counter[25] = \<const0> ;
  assign trace20_counter[24] = \<const0> ;
  assign trace20_counter[23] = \<const0> ;
  assign trace20_counter[22] = \<const0> ;
  assign trace20_counter[21] = \<const0> ;
  assign trace20_counter[20] = \<const0> ;
  assign trace20_counter[19] = \<const0> ;
  assign trace20_counter[18] = \<const0> ;
  assign trace20_counter[17] = \<const0> ;
  assign trace20_counter[16] = \<const0> ;
  assign trace20_counter[15] = \<const0> ;
  assign trace20_counter[14] = \<const0> ;
  assign trace20_counter[13] = \<const0> ;
  assign trace20_counter[12] = \<const0> ;
  assign trace20_counter[11] = \<const0> ;
  assign trace20_counter[10] = \<const0> ;
  assign trace20_counter[9] = \<const0> ;
  assign trace20_counter[8] = \<const0> ;
  assign trace20_counter[7] = \<const0> ;
  assign trace20_counter[6] = \<const0> ;
  assign trace20_counter[5] = \<const0> ;
  assign trace20_counter[4] = \<const0> ;
  assign trace20_counter[3] = \<const0> ;
  assign trace20_counter[2] = \<const0> ;
  assign trace20_counter[1] = \<const0> ;
  assign trace20_counter[0] = \<const0> ;
  assign trace20_counter_overflow = \<const0> ;
  assign trace20_read = \<const0> ;
  assign trace21_counter[44] = \<const0> ;
  assign trace21_counter[43] = \<const0> ;
  assign trace21_counter[42] = \<const0> ;
  assign trace21_counter[41] = \<const0> ;
  assign trace21_counter[40] = \<const0> ;
  assign trace21_counter[39] = \<const0> ;
  assign trace21_counter[38] = \<const0> ;
  assign trace21_counter[37] = \<const0> ;
  assign trace21_counter[36] = \<const0> ;
  assign trace21_counter[35] = \<const0> ;
  assign trace21_counter[34] = \<const0> ;
  assign trace21_counter[33] = \<const0> ;
  assign trace21_counter[32] = \<const0> ;
  assign trace21_counter[31] = \<const0> ;
  assign trace21_counter[30] = \<const0> ;
  assign trace21_counter[29] = \<const0> ;
  assign trace21_counter[28] = \<const0> ;
  assign trace21_counter[27] = \<const0> ;
  assign trace21_counter[26] = \<const0> ;
  assign trace21_counter[25] = \<const0> ;
  assign trace21_counter[24] = \<const0> ;
  assign trace21_counter[23] = \<const0> ;
  assign trace21_counter[22] = \<const0> ;
  assign trace21_counter[21] = \<const0> ;
  assign trace21_counter[20] = \<const0> ;
  assign trace21_counter[19] = \<const0> ;
  assign trace21_counter[18] = \<const0> ;
  assign trace21_counter[17] = \<const0> ;
  assign trace21_counter[16] = \<const0> ;
  assign trace21_counter[15] = \<const0> ;
  assign trace21_counter[14] = \<const0> ;
  assign trace21_counter[13] = \<const0> ;
  assign trace21_counter[12] = \<const0> ;
  assign trace21_counter[11] = \<const0> ;
  assign trace21_counter[10] = \<const0> ;
  assign trace21_counter[9] = \<const0> ;
  assign trace21_counter[8] = \<const0> ;
  assign trace21_counter[7] = \<const0> ;
  assign trace21_counter[6] = \<const0> ;
  assign trace21_counter[5] = \<const0> ;
  assign trace21_counter[4] = \<const0> ;
  assign trace21_counter[3] = \<const0> ;
  assign trace21_counter[2] = \<const0> ;
  assign trace21_counter[1] = \<const0> ;
  assign trace21_counter[0] = \<const0> ;
  assign trace21_counter_overflow = \<const0> ;
  assign trace21_read = \<const0> ;
  assign trace22_counter[44] = \<const0> ;
  assign trace22_counter[43] = \<const0> ;
  assign trace22_counter[42] = \<const0> ;
  assign trace22_counter[41] = \<const0> ;
  assign trace22_counter[40] = \<const0> ;
  assign trace22_counter[39] = \<const0> ;
  assign trace22_counter[38] = \<const0> ;
  assign trace22_counter[37] = \<const0> ;
  assign trace22_counter[36] = \<const0> ;
  assign trace22_counter[35] = \<const0> ;
  assign trace22_counter[34] = \<const0> ;
  assign trace22_counter[33] = \<const0> ;
  assign trace22_counter[32] = \<const0> ;
  assign trace22_counter[31] = \<const0> ;
  assign trace22_counter[30] = \<const0> ;
  assign trace22_counter[29] = \<const0> ;
  assign trace22_counter[28] = \<const0> ;
  assign trace22_counter[27] = \<const0> ;
  assign trace22_counter[26] = \<const0> ;
  assign trace22_counter[25] = \<const0> ;
  assign trace22_counter[24] = \<const0> ;
  assign trace22_counter[23] = \<const0> ;
  assign trace22_counter[22] = \<const0> ;
  assign trace22_counter[21] = \<const0> ;
  assign trace22_counter[20] = \<const0> ;
  assign trace22_counter[19] = \<const0> ;
  assign trace22_counter[18] = \<const0> ;
  assign trace22_counter[17] = \<const0> ;
  assign trace22_counter[16] = \<const0> ;
  assign trace22_counter[15] = \<const0> ;
  assign trace22_counter[14] = \<const0> ;
  assign trace22_counter[13] = \<const0> ;
  assign trace22_counter[12] = \<const0> ;
  assign trace22_counter[11] = \<const0> ;
  assign trace22_counter[10] = \<const0> ;
  assign trace22_counter[9] = \<const0> ;
  assign trace22_counter[8] = \<const0> ;
  assign trace22_counter[7] = \<const0> ;
  assign trace22_counter[6] = \<const0> ;
  assign trace22_counter[5] = \<const0> ;
  assign trace22_counter[4] = \<const0> ;
  assign trace22_counter[3] = \<const0> ;
  assign trace22_counter[2] = \<const0> ;
  assign trace22_counter[1] = \<const0> ;
  assign trace22_counter[0] = \<const0> ;
  assign trace22_counter_overflow = \<const0> ;
  assign trace22_read = \<const0> ;
  assign trace23_counter[44] = \<const0> ;
  assign trace23_counter[43] = \<const0> ;
  assign trace23_counter[42] = \<const0> ;
  assign trace23_counter[41] = \<const0> ;
  assign trace23_counter[40] = \<const0> ;
  assign trace23_counter[39] = \<const0> ;
  assign trace23_counter[38] = \<const0> ;
  assign trace23_counter[37] = \<const0> ;
  assign trace23_counter[36] = \<const0> ;
  assign trace23_counter[35] = \<const0> ;
  assign trace23_counter[34] = \<const0> ;
  assign trace23_counter[33] = \<const0> ;
  assign trace23_counter[32] = \<const0> ;
  assign trace23_counter[31] = \<const0> ;
  assign trace23_counter[30] = \<const0> ;
  assign trace23_counter[29] = \<const0> ;
  assign trace23_counter[28] = \<const0> ;
  assign trace23_counter[27] = \<const0> ;
  assign trace23_counter[26] = \<const0> ;
  assign trace23_counter[25] = \<const0> ;
  assign trace23_counter[24] = \<const0> ;
  assign trace23_counter[23] = \<const0> ;
  assign trace23_counter[22] = \<const0> ;
  assign trace23_counter[21] = \<const0> ;
  assign trace23_counter[20] = \<const0> ;
  assign trace23_counter[19] = \<const0> ;
  assign trace23_counter[18] = \<const0> ;
  assign trace23_counter[17] = \<const0> ;
  assign trace23_counter[16] = \<const0> ;
  assign trace23_counter[15] = \<const0> ;
  assign trace23_counter[14] = \<const0> ;
  assign trace23_counter[13] = \<const0> ;
  assign trace23_counter[12] = \<const0> ;
  assign trace23_counter[11] = \<const0> ;
  assign trace23_counter[10] = \<const0> ;
  assign trace23_counter[9] = \<const0> ;
  assign trace23_counter[8] = \<const0> ;
  assign trace23_counter[7] = \<const0> ;
  assign trace23_counter[6] = \<const0> ;
  assign trace23_counter[5] = \<const0> ;
  assign trace23_counter[4] = \<const0> ;
  assign trace23_counter[3] = \<const0> ;
  assign trace23_counter[2] = \<const0> ;
  assign trace23_counter[1] = \<const0> ;
  assign trace23_counter[0] = \<const0> ;
  assign trace23_counter_overflow = \<const0> ;
  assign trace23_read = \<const0> ;
  assign trace24_counter[44] = \<const0> ;
  assign trace24_counter[43] = \<const0> ;
  assign trace24_counter[42] = \<const0> ;
  assign trace24_counter[41] = \<const0> ;
  assign trace24_counter[40] = \<const0> ;
  assign trace24_counter[39] = \<const0> ;
  assign trace24_counter[38] = \<const0> ;
  assign trace24_counter[37] = \<const0> ;
  assign trace24_counter[36] = \<const0> ;
  assign trace24_counter[35] = \<const0> ;
  assign trace24_counter[34] = \<const0> ;
  assign trace24_counter[33] = \<const0> ;
  assign trace24_counter[32] = \<const0> ;
  assign trace24_counter[31] = \<const0> ;
  assign trace24_counter[30] = \<const0> ;
  assign trace24_counter[29] = \<const0> ;
  assign trace24_counter[28] = \<const0> ;
  assign trace24_counter[27] = \<const0> ;
  assign trace24_counter[26] = \<const0> ;
  assign trace24_counter[25] = \<const0> ;
  assign trace24_counter[24] = \<const0> ;
  assign trace24_counter[23] = \<const0> ;
  assign trace24_counter[22] = \<const0> ;
  assign trace24_counter[21] = \<const0> ;
  assign trace24_counter[20] = \<const0> ;
  assign trace24_counter[19] = \<const0> ;
  assign trace24_counter[18] = \<const0> ;
  assign trace24_counter[17] = \<const0> ;
  assign trace24_counter[16] = \<const0> ;
  assign trace24_counter[15] = \<const0> ;
  assign trace24_counter[14] = \<const0> ;
  assign trace24_counter[13] = \<const0> ;
  assign trace24_counter[12] = \<const0> ;
  assign trace24_counter[11] = \<const0> ;
  assign trace24_counter[10] = \<const0> ;
  assign trace24_counter[9] = \<const0> ;
  assign trace24_counter[8] = \<const0> ;
  assign trace24_counter[7] = \<const0> ;
  assign trace24_counter[6] = \<const0> ;
  assign trace24_counter[5] = \<const0> ;
  assign trace24_counter[4] = \<const0> ;
  assign trace24_counter[3] = \<const0> ;
  assign trace24_counter[2] = \<const0> ;
  assign trace24_counter[1] = \<const0> ;
  assign trace24_counter[0] = \<const0> ;
  assign trace24_counter_overflow = \<const0> ;
  assign trace24_read = \<const0> ;
  assign trace25_counter[44] = \<const0> ;
  assign trace25_counter[43] = \<const0> ;
  assign trace25_counter[42] = \<const0> ;
  assign trace25_counter[41] = \<const0> ;
  assign trace25_counter[40] = \<const0> ;
  assign trace25_counter[39] = \<const0> ;
  assign trace25_counter[38] = \<const0> ;
  assign trace25_counter[37] = \<const0> ;
  assign trace25_counter[36] = \<const0> ;
  assign trace25_counter[35] = \<const0> ;
  assign trace25_counter[34] = \<const0> ;
  assign trace25_counter[33] = \<const0> ;
  assign trace25_counter[32] = \<const0> ;
  assign trace25_counter[31] = \<const0> ;
  assign trace25_counter[30] = \<const0> ;
  assign trace25_counter[29] = \<const0> ;
  assign trace25_counter[28] = \<const0> ;
  assign trace25_counter[27] = \<const0> ;
  assign trace25_counter[26] = \<const0> ;
  assign trace25_counter[25] = \<const0> ;
  assign trace25_counter[24] = \<const0> ;
  assign trace25_counter[23] = \<const0> ;
  assign trace25_counter[22] = \<const0> ;
  assign trace25_counter[21] = \<const0> ;
  assign trace25_counter[20] = \<const0> ;
  assign trace25_counter[19] = \<const0> ;
  assign trace25_counter[18] = \<const0> ;
  assign trace25_counter[17] = \<const0> ;
  assign trace25_counter[16] = \<const0> ;
  assign trace25_counter[15] = \<const0> ;
  assign trace25_counter[14] = \<const0> ;
  assign trace25_counter[13] = \<const0> ;
  assign trace25_counter[12] = \<const0> ;
  assign trace25_counter[11] = \<const0> ;
  assign trace25_counter[10] = \<const0> ;
  assign trace25_counter[9] = \<const0> ;
  assign trace25_counter[8] = \<const0> ;
  assign trace25_counter[7] = \<const0> ;
  assign trace25_counter[6] = \<const0> ;
  assign trace25_counter[5] = \<const0> ;
  assign trace25_counter[4] = \<const0> ;
  assign trace25_counter[3] = \<const0> ;
  assign trace25_counter[2] = \<const0> ;
  assign trace25_counter[1] = \<const0> ;
  assign trace25_counter[0] = \<const0> ;
  assign trace25_counter_overflow = \<const0> ;
  assign trace25_read = \<const0> ;
  assign trace26_counter[44] = \<const0> ;
  assign trace26_counter[43] = \<const0> ;
  assign trace26_counter[42] = \<const0> ;
  assign trace26_counter[41] = \<const0> ;
  assign trace26_counter[40] = \<const0> ;
  assign trace26_counter[39] = \<const0> ;
  assign trace26_counter[38] = \<const0> ;
  assign trace26_counter[37] = \<const0> ;
  assign trace26_counter[36] = \<const0> ;
  assign trace26_counter[35] = \<const0> ;
  assign trace26_counter[34] = \<const0> ;
  assign trace26_counter[33] = \<const0> ;
  assign trace26_counter[32] = \<const0> ;
  assign trace26_counter[31] = \<const0> ;
  assign trace26_counter[30] = \<const0> ;
  assign trace26_counter[29] = \<const0> ;
  assign trace26_counter[28] = \<const0> ;
  assign trace26_counter[27] = \<const0> ;
  assign trace26_counter[26] = \<const0> ;
  assign trace26_counter[25] = \<const0> ;
  assign trace26_counter[24] = \<const0> ;
  assign trace26_counter[23] = \<const0> ;
  assign trace26_counter[22] = \<const0> ;
  assign trace26_counter[21] = \<const0> ;
  assign trace26_counter[20] = \<const0> ;
  assign trace26_counter[19] = \<const0> ;
  assign trace26_counter[18] = \<const0> ;
  assign trace26_counter[17] = \<const0> ;
  assign trace26_counter[16] = \<const0> ;
  assign trace26_counter[15] = \<const0> ;
  assign trace26_counter[14] = \<const0> ;
  assign trace26_counter[13] = \<const0> ;
  assign trace26_counter[12] = \<const0> ;
  assign trace26_counter[11] = \<const0> ;
  assign trace26_counter[10] = \<const0> ;
  assign trace26_counter[9] = \<const0> ;
  assign trace26_counter[8] = \<const0> ;
  assign trace26_counter[7] = \<const0> ;
  assign trace26_counter[6] = \<const0> ;
  assign trace26_counter[5] = \<const0> ;
  assign trace26_counter[4] = \<const0> ;
  assign trace26_counter[3] = \<const0> ;
  assign trace26_counter[2] = \<const0> ;
  assign trace26_counter[1] = \<const0> ;
  assign trace26_counter[0] = \<const0> ;
  assign trace26_counter_overflow = \<const0> ;
  assign trace26_read = \<const0> ;
  assign trace27_counter[44] = \<const0> ;
  assign trace27_counter[43] = \<const0> ;
  assign trace27_counter[42] = \<const0> ;
  assign trace27_counter[41] = \<const0> ;
  assign trace27_counter[40] = \<const0> ;
  assign trace27_counter[39] = \<const0> ;
  assign trace27_counter[38] = \<const0> ;
  assign trace27_counter[37] = \<const0> ;
  assign trace27_counter[36] = \<const0> ;
  assign trace27_counter[35] = \<const0> ;
  assign trace27_counter[34] = \<const0> ;
  assign trace27_counter[33] = \<const0> ;
  assign trace27_counter[32] = \<const0> ;
  assign trace27_counter[31] = \<const0> ;
  assign trace27_counter[30] = \<const0> ;
  assign trace27_counter[29] = \<const0> ;
  assign trace27_counter[28] = \<const0> ;
  assign trace27_counter[27] = \<const0> ;
  assign trace27_counter[26] = \<const0> ;
  assign trace27_counter[25] = \<const0> ;
  assign trace27_counter[24] = \<const0> ;
  assign trace27_counter[23] = \<const0> ;
  assign trace27_counter[22] = \<const0> ;
  assign trace27_counter[21] = \<const0> ;
  assign trace27_counter[20] = \<const0> ;
  assign trace27_counter[19] = \<const0> ;
  assign trace27_counter[18] = \<const0> ;
  assign trace27_counter[17] = \<const0> ;
  assign trace27_counter[16] = \<const0> ;
  assign trace27_counter[15] = \<const0> ;
  assign trace27_counter[14] = \<const0> ;
  assign trace27_counter[13] = \<const0> ;
  assign trace27_counter[12] = \<const0> ;
  assign trace27_counter[11] = \<const0> ;
  assign trace27_counter[10] = \<const0> ;
  assign trace27_counter[9] = \<const0> ;
  assign trace27_counter[8] = \<const0> ;
  assign trace27_counter[7] = \<const0> ;
  assign trace27_counter[6] = \<const0> ;
  assign trace27_counter[5] = \<const0> ;
  assign trace27_counter[4] = \<const0> ;
  assign trace27_counter[3] = \<const0> ;
  assign trace27_counter[2] = \<const0> ;
  assign trace27_counter[1] = \<const0> ;
  assign trace27_counter[0] = \<const0> ;
  assign trace27_counter_overflow = \<const0> ;
  assign trace27_read = \<const0> ;
  assign trace28_counter[44] = \<const0> ;
  assign trace28_counter[43] = \<const0> ;
  assign trace28_counter[42] = \<const0> ;
  assign trace28_counter[41] = \<const0> ;
  assign trace28_counter[40] = \<const0> ;
  assign trace28_counter[39] = \<const0> ;
  assign trace28_counter[38] = \<const0> ;
  assign trace28_counter[37] = \<const0> ;
  assign trace28_counter[36] = \<const0> ;
  assign trace28_counter[35] = \<const0> ;
  assign trace28_counter[34] = \<const0> ;
  assign trace28_counter[33] = \<const0> ;
  assign trace28_counter[32] = \<const0> ;
  assign trace28_counter[31] = \<const0> ;
  assign trace28_counter[30] = \<const0> ;
  assign trace28_counter[29] = \<const0> ;
  assign trace28_counter[28] = \<const0> ;
  assign trace28_counter[27] = \<const0> ;
  assign trace28_counter[26] = \<const0> ;
  assign trace28_counter[25] = \<const0> ;
  assign trace28_counter[24] = \<const0> ;
  assign trace28_counter[23] = \<const0> ;
  assign trace28_counter[22] = \<const0> ;
  assign trace28_counter[21] = \<const0> ;
  assign trace28_counter[20] = \<const0> ;
  assign trace28_counter[19] = \<const0> ;
  assign trace28_counter[18] = \<const0> ;
  assign trace28_counter[17] = \<const0> ;
  assign trace28_counter[16] = \<const0> ;
  assign trace28_counter[15] = \<const0> ;
  assign trace28_counter[14] = \<const0> ;
  assign trace28_counter[13] = \<const0> ;
  assign trace28_counter[12] = \<const0> ;
  assign trace28_counter[11] = \<const0> ;
  assign trace28_counter[10] = \<const0> ;
  assign trace28_counter[9] = \<const0> ;
  assign trace28_counter[8] = \<const0> ;
  assign trace28_counter[7] = \<const0> ;
  assign trace28_counter[6] = \<const0> ;
  assign trace28_counter[5] = \<const0> ;
  assign trace28_counter[4] = \<const0> ;
  assign trace28_counter[3] = \<const0> ;
  assign trace28_counter[2] = \<const0> ;
  assign trace28_counter[1] = \<const0> ;
  assign trace28_counter[0] = \<const0> ;
  assign trace28_counter_overflow = \<const0> ;
  assign trace28_read = \<const0> ;
  assign trace29_counter[44] = \<const0> ;
  assign trace29_counter[43] = \<const0> ;
  assign trace29_counter[42] = \<const0> ;
  assign trace29_counter[41] = \<const0> ;
  assign trace29_counter[40] = \<const0> ;
  assign trace29_counter[39] = \<const0> ;
  assign trace29_counter[38] = \<const0> ;
  assign trace29_counter[37] = \<const0> ;
  assign trace29_counter[36] = \<const0> ;
  assign trace29_counter[35] = \<const0> ;
  assign trace29_counter[34] = \<const0> ;
  assign trace29_counter[33] = \<const0> ;
  assign trace29_counter[32] = \<const0> ;
  assign trace29_counter[31] = \<const0> ;
  assign trace29_counter[30] = \<const0> ;
  assign trace29_counter[29] = \<const0> ;
  assign trace29_counter[28] = \<const0> ;
  assign trace29_counter[27] = \<const0> ;
  assign trace29_counter[26] = \<const0> ;
  assign trace29_counter[25] = \<const0> ;
  assign trace29_counter[24] = \<const0> ;
  assign trace29_counter[23] = \<const0> ;
  assign trace29_counter[22] = \<const0> ;
  assign trace29_counter[21] = \<const0> ;
  assign trace29_counter[20] = \<const0> ;
  assign trace29_counter[19] = \<const0> ;
  assign trace29_counter[18] = \<const0> ;
  assign trace29_counter[17] = \<const0> ;
  assign trace29_counter[16] = \<const0> ;
  assign trace29_counter[15] = \<const0> ;
  assign trace29_counter[14] = \<const0> ;
  assign trace29_counter[13] = \<const0> ;
  assign trace29_counter[12] = \<const0> ;
  assign trace29_counter[11] = \<const0> ;
  assign trace29_counter[10] = \<const0> ;
  assign trace29_counter[9] = \<const0> ;
  assign trace29_counter[8] = \<const0> ;
  assign trace29_counter[7] = \<const0> ;
  assign trace29_counter[6] = \<const0> ;
  assign trace29_counter[5] = \<const0> ;
  assign trace29_counter[4] = \<const0> ;
  assign trace29_counter[3] = \<const0> ;
  assign trace29_counter[2] = \<const0> ;
  assign trace29_counter[1] = \<const0> ;
  assign trace29_counter[0] = \<const0> ;
  assign trace29_counter_overflow = \<const0> ;
  assign trace29_read = \<const0> ;
  assign trace2_counter[44:0] = trace6_counter;
  assign trace2_counter_overflow = trace6_counter_overflow;
  assign trace30_counter[44] = \<const0> ;
  assign trace30_counter[43] = \<const0> ;
  assign trace30_counter[42] = \<const0> ;
  assign trace30_counter[41] = \<const0> ;
  assign trace30_counter[40] = \<const0> ;
  assign trace30_counter[39] = \<const0> ;
  assign trace30_counter[38] = \<const0> ;
  assign trace30_counter[37] = \<const0> ;
  assign trace30_counter[36] = \<const0> ;
  assign trace30_counter[35] = \<const0> ;
  assign trace30_counter[34] = \<const0> ;
  assign trace30_counter[33] = \<const0> ;
  assign trace30_counter[32] = \<const0> ;
  assign trace30_counter[31] = \<const0> ;
  assign trace30_counter[30] = \<const0> ;
  assign trace30_counter[29] = \<const0> ;
  assign trace30_counter[28] = \<const0> ;
  assign trace30_counter[27] = \<const0> ;
  assign trace30_counter[26] = \<const0> ;
  assign trace30_counter[25] = \<const0> ;
  assign trace30_counter[24] = \<const0> ;
  assign trace30_counter[23] = \<const0> ;
  assign trace30_counter[22] = \<const0> ;
  assign trace30_counter[21] = \<const0> ;
  assign trace30_counter[20] = \<const0> ;
  assign trace30_counter[19] = \<const0> ;
  assign trace30_counter[18] = \<const0> ;
  assign trace30_counter[17] = \<const0> ;
  assign trace30_counter[16] = \<const0> ;
  assign trace30_counter[15] = \<const0> ;
  assign trace30_counter[14] = \<const0> ;
  assign trace30_counter[13] = \<const0> ;
  assign trace30_counter[12] = \<const0> ;
  assign trace30_counter[11] = \<const0> ;
  assign trace30_counter[10] = \<const0> ;
  assign trace30_counter[9] = \<const0> ;
  assign trace30_counter[8] = \<const0> ;
  assign trace30_counter[7] = \<const0> ;
  assign trace30_counter[6] = \<const0> ;
  assign trace30_counter[5] = \<const0> ;
  assign trace30_counter[4] = \<const0> ;
  assign trace30_counter[3] = \<const0> ;
  assign trace30_counter[2] = \<const0> ;
  assign trace30_counter[1] = \<const0> ;
  assign trace30_counter[0] = \<const0> ;
  assign trace30_counter_overflow = \<const0> ;
  assign trace30_read = \<const0> ;
  assign trace31_counter[44] = \<const0> ;
  assign trace31_counter[43] = \<const0> ;
  assign trace31_counter[42] = \<const0> ;
  assign trace31_counter[41] = \<const0> ;
  assign trace31_counter[40] = \<const0> ;
  assign trace31_counter[39] = \<const0> ;
  assign trace31_counter[38] = \<const0> ;
  assign trace31_counter[37] = \<const0> ;
  assign trace31_counter[36] = \<const0> ;
  assign trace31_counter[35] = \<const0> ;
  assign trace31_counter[34] = \<const0> ;
  assign trace31_counter[33] = \<const0> ;
  assign trace31_counter[32] = \<const0> ;
  assign trace31_counter[31] = \<const0> ;
  assign trace31_counter[30] = \<const0> ;
  assign trace31_counter[29] = \<const0> ;
  assign trace31_counter[28] = \<const0> ;
  assign trace31_counter[27] = \<const0> ;
  assign trace31_counter[26] = \<const0> ;
  assign trace31_counter[25] = \<const0> ;
  assign trace31_counter[24] = \<const0> ;
  assign trace31_counter[23] = \<const0> ;
  assign trace31_counter[22] = \<const0> ;
  assign trace31_counter[21] = \<const0> ;
  assign trace31_counter[20] = \<const0> ;
  assign trace31_counter[19] = \<const0> ;
  assign trace31_counter[18] = \<const0> ;
  assign trace31_counter[17] = \<const0> ;
  assign trace31_counter[16] = \<const0> ;
  assign trace31_counter[15] = \<const0> ;
  assign trace31_counter[14] = \<const0> ;
  assign trace31_counter[13] = \<const0> ;
  assign trace31_counter[12] = \<const0> ;
  assign trace31_counter[11] = \<const0> ;
  assign trace31_counter[10] = \<const0> ;
  assign trace31_counter[9] = \<const0> ;
  assign trace31_counter[8] = \<const0> ;
  assign trace31_counter[7] = \<const0> ;
  assign trace31_counter[6] = \<const0> ;
  assign trace31_counter[5] = \<const0> ;
  assign trace31_counter[4] = \<const0> ;
  assign trace31_counter[3] = \<const0> ;
  assign trace31_counter[2] = \<const0> ;
  assign trace31_counter[1] = \<const0> ;
  assign trace31_counter[0] = \<const0> ;
  assign trace31_counter_overflow = \<const0> ;
  assign trace31_read = \<const0> ;
  assign trace32_counter[44] = \<const0> ;
  assign trace32_counter[43] = \<const0> ;
  assign trace32_counter[42] = \<const0> ;
  assign trace32_counter[41] = \<const0> ;
  assign trace32_counter[40] = \<const0> ;
  assign trace32_counter[39] = \<const0> ;
  assign trace32_counter[38] = \<const0> ;
  assign trace32_counter[37] = \<const0> ;
  assign trace32_counter[36] = \<const0> ;
  assign trace32_counter[35] = \<const0> ;
  assign trace32_counter[34] = \<const0> ;
  assign trace32_counter[33] = \<const0> ;
  assign trace32_counter[32] = \<const0> ;
  assign trace32_counter[31] = \<const0> ;
  assign trace32_counter[30] = \<const0> ;
  assign trace32_counter[29] = \<const0> ;
  assign trace32_counter[28] = \<const0> ;
  assign trace32_counter[27] = \<const0> ;
  assign trace32_counter[26] = \<const0> ;
  assign trace32_counter[25] = \<const0> ;
  assign trace32_counter[24] = \<const0> ;
  assign trace32_counter[23] = \<const0> ;
  assign trace32_counter[22] = \<const0> ;
  assign trace32_counter[21] = \<const0> ;
  assign trace32_counter[20] = \<const0> ;
  assign trace32_counter[19] = \<const0> ;
  assign trace32_counter[18] = \<const0> ;
  assign trace32_counter[17] = \<const0> ;
  assign trace32_counter[16] = \<const0> ;
  assign trace32_counter[15] = \<const0> ;
  assign trace32_counter[14] = \<const0> ;
  assign trace32_counter[13] = \<const0> ;
  assign trace32_counter[12] = \<const0> ;
  assign trace32_counter[11] = \<const0> ;
  assign trace32_counter[10] = \<const0> ;
  assign trace32_counter[9] = \<const0> ;
  assign trace32_counter[8] = \<const0> ;
  assign trace32_counter[7] = \<const0> ;
  assign trace32_counter[6] = \<const0> ;
  assign trace32_counter[5] = \<const0> ;
  assign trace32_counter[4] = \<const0> ;
  assign trace32_counter[3] = \<const0> ;
  assign trace32_counter[2] = \<const0> ;
  assign trace32_counter[1] = \<const0> ;
  assign trace32_counter[0] = \<const0> ;
  assign trace32_counter_overflow = \<const0> ;
  assign trace32_read = \<const0> ;
  assign trace33_counter[44] = \<const0> ;
  assign trace33_counter[43] = \<const0> ;
  assign trace33_counter[42] = \<const0> ;
  assign trace33_counter[41] = \<const0> ;
  assign trace33_counter[40] = \<const0> ;
  assign trace33_counter[39] = \<const0> ;
  assign trace33_counter[38] = \<const0> ;
  assign trace33_counter[37] = \<const0> ;
  assign trace33_counter[36] = \<const0> ;
  assign trace33_counter[35] = \<const0> ;
  assign trace33_counter[34] = \<const0> ;
  assign trace33_counter[33] = \<const0> ;
  assign trace33_counter[32] = \<const0> ;
  assign trace33_counter[31] = \<const0> ;
  assign trace33_counter[30] = \<const0> ;
  assign trace33_counter[29] = \<const0> ;
  assign trace33_counter[28] = \<const0> ;
  assign trace33_counter[27] = \<const0> ;
  assign trace33_counter[26] = \<const0> ;
  assign trace33_counter[25] = \<const0> ;
  assign trace33_counter[24] = \<const0> ;
  assign trace33_counter[23] = \<const0> ;
  assign trace33_counter[22] = \<const0> ;
  assign trace33_counter[21] = \<const0> ;
  assign trace33_counter[20] = \<const0> ;
  assign trace33_counter[19] = \<const0> ;
  assign trace33_counter[18] = \<const0> ;
  assign trace33_counter[17] = \<const0> ;
  assign trace33_counter[16] = \<const0> ;
  assign trace33_counter[15] = \<const0> ;
  assign trace33_counter[14] = \<const0> ;
  assign trace33_counter[13] = \<const0> ;
  assign trace33_counter[12] = \<const0> ;
  assign trace33_counter[11] = \<const0> ;
  assign trace33_counter[10] = \<const0> ;
  assign trace33_counter[9] = \<const0> ;
  assign trace33_counter[8] = \<const0> ;
  assign trace33_counter[7] = \<const0> ;
  assign trace33_counter[6] = \<const0> ;
  assign trace33_counter[5] = \<const0> ;
  assign trace33_counter[4] = \<const0> ;
  assign trace33_counter[3] = \<const0> ;
  assign trace33_counter[2] = \<const0> ;
  assign trace33_counter[1] = \<const0> ;
  assign trace33_counter[0] = \<const0> ;
  assign trace33_counter_overflow = \<const0> ;
  assign trace33_read = \<const0> ;
  assign trace34_counter[44] = \<const0> ;
  assign trace34_counter[43] = \<const0> ;
  assign trace34_counter[42] = \<const0> ;
  assign trace34_counter[41] = \<const0> ;
  assign trace34_counter[40] = \<const0> ;
  assign trace34_counter[39] = \<const0> ;
  assign trace34_counter[38] = \<const0> ;
  assign trace34_counter[37] = \<const0> ;
  assign trace34_counter[36] = \<const0> ;
  assign trace34_counter[35] = \<const0> ;
  assign trace34_counter[34] = \<const0> ;
  assign trace34_counter[33] = \<const0> ;
  assign trace34_counter[32] = \<const0> ;
  assign trace34_counter[31] = \<const0> ;
  assign trace34_counter[30] = \<const0> ;
  assign trace34_counter[29] = \<const0> ;
  assign trace34_counter[28] = \<const0> ;
  assign trace34_counter[27] = \<const0> ;
  assign trace34_counter[26] = \<const0> ;
  assign trace34_counter[25] = \<const0> ;
  assign trace34_counter[24] = \<const0> ;
  assign trace34_counter[23] = \<const0> ;
  assign trace34_counter[22] = \<const0> ;
  assign trace34_counter[21] = \<const0> ;
  assign trace34_counter[20] = \<const0> ;
  assign trace34_counter[19] = \<const0> ;
  assign trace34_counter[18] = \<const0> ;
  assign trace34_counter[17] = \<const0> ;
  assign trace34_counter[16] = \<const0> ;
  assign trace34_counter[15] = \<const0> ;
  assign trace34_counter[14] = \<const0> ;
  assign trace34_counter[13] = \<const0> ;
  assign trace34_counter[12] = \<const0> ;
  assign trace34_counter[11] = \<const0> ;
  assign trace34_counter[10] = \<const0> ;
  assign trace34_counter[9] = \<const0> ;
  assign trace34_counter[8] = \<const0> ;
  assign trace34_counter[7] = \<const0> ;
  assign trace34_counter[6] = \<const0> ;
  assign trace34_counter[5] = \<const0> ;
  assign trace34_counter[4] = \<const0> ;
  assign trace34_counter[3] = \<const0> ;
  assign trace34_counter[2] = \<const0> ;
  assign trace34_counter[1] = \<const0> ;
  assign trace34_counter[0] = \<const0> ;
  assign trace34_counter_overflow = \<const0> ;
  assign trace34_read = \<const0> ;
  assign trace35_counter[44] = \<const0> ;
  assign trace35_counter[43] = \<const0> ;
  assign trace35_counter[42] = \<const0> ;
  assign trace35_counter[41] = \<const0> ;
  assign trace35_counter[40] = \<const0> ;
  assign trace35_counter[39] = \<const0> ;
  assign trace35_counter[38] = \<const0> ;
  assign trace35_counter[37] = \<const0> ;
  assign trace35_counter[36] = \<const0> ;
  assign trace35_counter[35] = \<const0> ;
  assign trace35_counter[34] = \<const0> ;
  assign trace35_counter[33] = \<const0> ;
  assign trace35_counter[32] = \<const0> ;
  assign trace35_counter[31] = \<const0> ;
  assign trace35_counter[30] = \<const0> ;
  assign trace35_counter[29] = \<const0> ;
  assign trace35_counter[28] = \<const0> ;
  assign trace35_counter[27] = \<const0> ;
  assign trace35_counter[26] = \<const0> ;
  assign trace35_counter[25] = \<const0> ;
  assign trace35_counter[24] = \<const0> ;
  assign trace35_counter[23] = \<const0> ;
  assign trace35_counter[22] = \<const0> ;
  assign trace35_counter[21] = \<const0> ;
  assign trace35_counter[20] = \<const0> ;
  assign trace35_counter[19] = \<const0> ;
  assign trace35_counter[18] = \<const0> ;
  assign trace35_counter[17] = \<const0> ;
  assign trace35_counter[16] = \<const0> ;
  assign trace35_counter[15] = \<const0> ;
  assign trace35_counter[14] = \<const0> ;
  assign trace35_counter[13] = \<const0> ;
  assign trace35_counter[12] = \<const0> ;
  assign trace35_counter[11] = \<const0> ;
  assign trace35_counter[10] = \<const0> ;
  assign trace35_counter[9] = \<const0> ;
  assign trace35_counter[8] = \<const0> ;
  assign trace35_counter[7] = \<const0> ;
  assign trace35_counter[6] = \<const0> ;
  assign trace35_counter[5] = \<const0> ;
  assign trace35_counter[4] = \<const0> ;
  assign trace35_counter[3] = \<const0> ;
  assign trace35_counter[2] = \<const0> ;
  assign trace35_counter[1] = \<const0> ;
  assign trace35_counter[0] = \<const0> ;
  assign trace35_counter_overflow = \<const0> ;
  assign trace35_read = \<const0> ;
  assign trace36_counter[44] = \<const0> ;
  assign trace36_counter[43] = \<const0> ;
  assign trace36_counter[42] = \<const0> ;
  assign trace36_counter[41] = \<const0> ;
  assign trace36_counter[40] = \<const0> ;
  assign trace36_counter[39] = \<const0> ;
  assign trace36_counter[38] = \<const0> ;
  assign trace36_counter[37] = \<const0> ;
  assign trace36_counter[36] = \<const0> ;
  assign trace36_counter[35] = \<const0> ;
  assign trace36_counter[34] = \<const0> ;
  assign trace36_counter[33] = \<const0> ;
  assign trace36_counter[32] = \<const0> ;
  assign trace36_counter[31] = \<const0> ;
  assign trace36_counter[30] = \<const0> ;
  assign trace36_counter[29] = \<const0> ;
  assign trace36_counter[28] = \<const0> ;
  assign trace36_counter[27] = \<const0> ;
  assign trace36_counter[26] = \<const0> ;
  assign trace36_counter[25] = \<const0> ;
  assign trace36_counter[24] = \<const0> ;
  assign trace36_counter[23] = \<const0> ;
  assign trace36_counter[22] = \<const0> ;
  assign trace36_counter[21] = \<const0> ;
  assign trace36_counter[20] = \<const0> ;
  assign trace36_counter[19] = \<const0> ;
  assign trace36_counter[18] = \<const0> ;
  assign trace36_counter[17] = \<const0> ;
  assign trace36_counter[16] = \<const0> ;
  assign trace36_counter[15] = \<const0> ;
  assign trace36_counter[14] = \<const0> ;
  assign trace36_counter[13] = \<const0> ;
  assign trace36_counter[12] = \<const0> ;
  assign trace36_counter[11] = \<const0> ;
  assign trace36_counter[10] = \<const0> ;
  assign trace36_counter[9] = \<const0> ;
  assign trace36_counter[8] = \<const0> ;
  assign trace36_counter[7] = \<const0> ;
  assign trace36_counter[6] = \<const0> ;
  assign trace36_counter[5] = \<const0> ;
  assign trace36_counter[4] = \<const0> ;
  assign trace36_counter[3] = \<const0> ;
  assign trace36_counter[2] = \<const0> ;
  assign trace36_counter[1] = \<const0> ;
  assign trace36_counter[0] = \<const0> ;
  assign trace36_counter_overflow = \<const0> ;
  assign trace36_read = \<const0> ;
  assign trace37_counter[44] = \<const0> ;
  assign trace37_counter[43] = \<const0> ;
  assign trace37_counter[42] = \<const0> ;
  assign trace37_counter[41] = \<const0> ;
  assign trace37_counter[40] = \<const0> ;
  assign trace37_counter[39] = \<const0> ;
  assign trace37_counter[38] = \<const0> ;
  assign trace37_counter[37] = \<const0> ;
  assign trace37_counter[36] = \<const0> ;
  assign trace37_counter[35] = \<const0> ;
  assign trace37_counter[34] = \<const0> ;
  assign trace37_counter[33] = \<const0> ;
  assign trace37_counter[32] = \<const0> ;
  assign trace37_counter[31] = \<const0> ;
  assign trace37_counter[30] = \<const0> ;
  assign trace37_counter[29] = \<const0> ;
  assign trace37_counter[28] = \<const0> ;
  assign trace37_counter[27] = \<const0> ;
  assign trace37_counter[26] = \<const0> ;
  assign trace37_counter[25] = \<const0> ;
  assign trace37_counter[24] = \<const0> ;
  assign trace37_counter[23] = \<const0> ;
  assign trace37_counter[22] = \<const0> ;
  assign trace37_counter[21] = \<const0> ;
  assign trace37_counter[20] = \<const0> ;
  assign trace37_counter[19] = \<const0> ;
  assign trace37_counter[18] = \<const0> ;
  assign trace37_counter[17] = \<const0> ;
  assign trace37_counter[16] = \<const0> ;
  assign trace37_counter[15] = \<const0> ;
  assign trace37_counter[14] = \<const0> ;
  assign trace37_counter[13] = \<const0> ;
  assign trace37_counter[12] = \<const0> ;
  assign trace37_counter[11] = \<const0> ;
  assign trace37_counter[10] = \<const0> ;
  assign trace37_counter[9] = \<const0> ;
  assign trace37_counter[8] = \<const0> ;
  assign trace37_counter[7] = \<const0> ;
  assign trace37_counter[6] = \<const0> ;
  assign trace37_counter[5] = \<const0> ;
  assign trace37_counter[4] = \<const0> ;
  assign trace37_counter[3] = \<const0> ;
  assign trace37_counter[2] = \<const0> ;
  assign trace37_counter[1] = \<const0> ;
  assign trace37_counter[0] = \<const0> ;
  assign trace37_counter_overflow = \<const0> ;
  assign trace37_read = \<const0> ;
  assign trace38_counter[44] = \<const0> ;
  assign trace38_counter[43] = \<const0> ;
  assign trace38_counter[42] = \<const0> ;
  assign trace38_counter[41] = \<const0> ;
  assign trace38_counter[40] = \<const0> ;
  assign trace38_counter[39] = \<const0> ;
  assign trace38_counter[38] = \<const0> ;
  assign trace38_counter[37] = \<const0> ;
  assign trace38_counter[36] = \<const0> ;
  assign trace38_counter[35] = \<const0> ;
  assign trace38_counter[34] = \<const0> ;
  assign trace38_counter[33] = \<const0> ;
  assign trace38_counter[32] = \<const0> ;
  assign trace38_counter[31] = \<const0> ;
  assign trace38_counter[30] = \<const0> ;
  assign trace38_counter[29] = \<const0> ;
  assign trace38_counter[28] = \<const0> ;
  assign trace38_counter[27] = \<const0> ;
  assign trace38_counter[26] = \<const0> ;
  assign trace38_counter[25] = \<const0> ;
  assign trace38_counter[24] = \<const0> ;
  assign trace38_counter[23] = \<const0> ;
  assign trace38_counter[22] = \<const0> ;
  assign trace38_counter[21] = \<const0> ;
  assign trace38_counter[20] = \<const0> ;
  assign trace38_counter[19] = \<const0> ;
  assign trace38_counter[18] = \<const0> ;
  assign trace38_counter[17] = \<const0> ;
  assign trace38_counter[16] = \<const0> ;
  assign trace38_counter[15] = \<const0> ;
  assign trace38_counter[14] = \<const0> ;
  assign trace38_counter[13] = \<const0> ;
  assign trace38_counter[12] = \<const0> ;
  assign trace38_counter[11] = \<const0> ;
  assign trace38_counter[10] = \<const0> ;
  assign trace38_counter[9] = \<const0> ;
  assign trace38_counter[8] = \<const0> ;
  assign trace38_counter[7] = \<const0> ;
  assign trace38_counter[6] = \<const0> ;
  assign trace38_counter[5] = \<const0> ;
  assign trace38_counter[4] = \<const0> ;
  assign trace38_counter[3] = \<const0> ;
  assign trace38_counter[2] = \<const0> ;
  assign trace38_counter[1] = \<const0> ;
  assign trace38_counter[0] = \<const0> ;
  assign trace38_counter_overflow = \<const0> ;
  assign trace38_read = \<const0> ;
  assign trace39_counter[44] = \<const0> ;
  assign trace39_counter[43] = \<const0> ;
  assign trace39_counter[42] = \<const0> ;
  assign trace39_counter[41] = \<const0> ;
  assign trace39_counter[40] = \<const0> ;
  assign trace39_counter[39] = \<const0> ;
  assign trace39_counter[38] = \<const0> ;
  assign trace39_counter[37] = \<const0> ;
  assign trace39_counter[36] = \<const0> ;
  assign trace39_counter[35] = \<const0> ;
  assign trace39_counter[34] = \<const0> ;
  assign trace39_counter[33] = \<const0> ;
  assign trace39_counter[32] = \<const0> ;
  assign trace39_counter[31] = \<const0> ;
  assign trace39_counter[30] = \<const0> ;
  assign trace39_counter[29] = \<const0> ;
  assign trace39_counter[28] = \<const0> ;
  assign trace39_counter[27] = \<const0> ;
  assign trace39_counter[26] = \<const0> ;
  assign trace39_counter[25] = \<const0> ;
  assign trace39_counter[24] = \<const0> ;
  assign trace39_counter[23] = \<const0> ;
  assign trace39_counter[22] = \<const0> ;
  assign trace39_counter[21] = \<const0> ;
  assign trace39_counter[20] = \<const0> ;
  assign trace39_counter[19] = \<const0> ;
  assign trace39_counter[18] = \<const0> ;
  assign trace39_counter[17] = \<const0> ;
  assign trace39_counter[16] = \<const0> ;
  assign trace39_counter[15] = \<const0> ;
  assign trace39_counter[14] = \<const0> ;
  assign trace39_counter[13] = \<const0> ;
  assign trace39_counter[12] = \<const0> ;
  assign trace39_counter[11] = \<const0> ;
  assign trace39_counter[10] = \<const0> ;
  assign trace39_counter[9] = \<const0> ;
  assign trace39_counter[8] = \<const0> ;
  assign trace39_counter[7] = \<const0> ;
  assign trace39_counter[6] = \<const0> ;
  assign trace39_counter[5] = \<const0> ;
  assign trace39_counter[4] = \<const0> ;
  assign trace39_counter[3] = \<const0> ;
  assign trace39_counter[2] = \<const0> ;
  assign trace39_counter[1] = \<const0> ;
  assign trace39_counter[0] = \<const0> ;
  assign trace39_counter_overflow = \<const0> ;
  assign trace39_read = \<const0> ;
  assign trace3_counter[44:0] = trace6_counter;
  assign trace3_counter_overflow = trace6_counter_overflow;
  assign trace40_counter[44] = \<const0> ;
  assign trace40_counter[43] = \<const0> ;
  assign trace40_counter[42] = \<const0> ;
  assign trace40_counter[41] = \<const0> ;
  assign trace40_counter[40] = \<const0> ;
  assign trace40_counter[39] = \<const0> ;
  assign trace40_counter[38] = \<const0> ;
  assign trace40_counter[37] = \<const0> ;
  assign trace40_counter[36] = \<const0> ;
  assign trace40_counter[35] = \<const0> ;
  assign trace40_counter[34] = \<const0> ;
  assign trace40_counter[33] = \<const0> ;
  assign trace40_counter[32] = \<const0> ;
  assign trace40_counter[31] = \<const0> ;
  assign trace40_counter[30] = \<const0> ;
  assign trace40_counter[29] = \<const0> ;
  assign trace40_counter[28] = \<const0> ;
  assign trace40_counter[27] = \<const0> ;
  assign trace40_counter[26] = \<const0> ;
  assign trace40_counter[25] = \<const0> ;
  assign trace40_counter[24] = \<const0> ;
  assign trace40_counter[23] = \<const0> ;
  assign trace40_counter[22] = \<const0> ;
  assign trace40_counter[21] = \<const0> ;
  assign trace40_counter[20] = \<const0> ;
  assign trace40_counter[19] = \<const0> ;
  assign trace40_counter[18] = \<const0> ;
  assign trace40_counter[17] = \<const0> ;
  assign trace40_counter[16] = \<const0> ;
  assign trace40_counter[15] = \<const0> ;
  assign trace40_counter[14] = \<const0> ;
  assign trace40_counter[13] = \<const0> ;
  assign trace40_counter[12] = \<const0> ;
  assign trace40_counter[11] = \<const0> ;
  assign trace40_counter[10] = \<const0> ;
  assign trace40_counter[9] = \<const0> ;
  assign trace40_counter[8] = \<const0> ;
  assign trace40_counter[7] = \<const0> ;
  assign trace40_counter[6] = \<const0> ;
  assign trace40_counter[5] = \<const0> ;
  assign trace40_counter[4] = \<const0> ;
  assign trace40_counter[3] = \<const0> ;
  assign trace40_counter[2] = \<const0> ;
  assign trace40_counter[1] = \<const0> ;
  assign trace40_counter[0] = \<const0> ;
  assign trace40_counter_overflow = \<const0> ;
  assign trace40_read = \<const0> ;
  assign trace41_counter[44] = \<const0> ;
  assign trace41_counter[43] = \<const0> ;
  assign trace41_counter[42] = \<const0> ;
  assign trace41_counter[41] = \<const0> ;
  assign trace41_counter[40] = \<const0> ;
  assign trace41_counter[39] = \<const0> ;
  assign trace41_counter[38] = \<const0> ;
  assign trace41_counter[37] = \<const0> ;
  assign trace41_counter[36] = \<const0> ;
  assign trace41_counter[35] = \<const0> ;
  assign trace41_counter[34] = \<const0> ;
  assign trace41_counter[33] = \<const0> ;
  assign trace41_counter[32] = \<const0> ;
  assign trace41_counter[31] = \<const0> ;
  assign trace41_counter[30] = \<const0> ;
  assign trace41_counter[29] = \<const0> ;
  assign trace41_counter[28] = \<const0> ;
  assign trace41_counter[27] = \<const0> ;
  assign trace41_counter[26] = \<const0> ;
  assign trace41_counter[25] = \<const0> ;
  assign trace41_counter[24] = \<const0> ;
  assign trace41_counter[23] = \<const0> ;
  assign trace41_counter[22] = \<const0> ;
  assign trace41_counter[21] = \<const0> ;
  assign trace41_counter[20] = \<const0> ;
  assign trace41_counter[19] = \<const0> ;
  assign trace41_counter[18] = \<const0> ;
  assign trace41_counter[17] = \<const0> ;
  assign trace41_counter[16] = \<const0> ;
  assign trace41_counter[15] = \<const0> ;
  assign trace41_counter[14] = \<const0> ;
  assign trace41_counter[13] = \<const0> ;
  assign trace41_counter[12] = \<const0> ;
  assign trace41_counter[11] = \<const0> ;
  assign trace41_counter[10] = \<const0> ;
  assign trace41_counter[9] = \<const0> ;
  assign trace41_counter[8] = \<const0> ;
  assign trace41_counter[7] = \<const0> ;
  assign trace41_counter[6] = \<const0> ;
  assign trace41_counter[5] = \<const0> ;
  assign trace41_counter[4] = \<const0> ;
  assign trace41_counter[3] = \<const0> ;
  assign trace41_counter[2] = \<const0> ;
  assign trace41_counter[1] = \<const0> ;
  assign trace41_counter[0] = \<const0> ;
  assign trace41_counter_overflow = \<const0> ;
  assign trace41_read = \<const0> ;
  assign trace42_counter[44] = \<const0> ;
  assign trace42_counter[43] = \<const0> ;
  assign trace42_counter[42] = \<const0> ;
  assign trace42_counter[41] = \<const0> ;
  assign trace42_counter[40] = \<const0> ;
  assign trace42_counter[39] = \<const0> ;
  assign trace42_counter[38] = \<const0> ;
  assign trace42_counter[37] = \<const0> ;
  assign trace42_counter[36] = \<const0> ;
  assign trace42_counter[35] = \<const0> ;
  assign trace42_counter[34] = \<const0> ;
  assign trace42_counter[33] = \<const0> ;
  assign trace42_counter[32] = \<const0> ;
  assign trace42_counter[31] = \<const0> ;
  assign trace42_counter[30] = \<const0> ;
  assign trace42_counter[29] = \<const0> ;
  assign trace42_counter[28] = \<const0> ;
  assign trace42_counter[27] = \<const0> ;
  assign trace42_counter[26] = \<const0> ;
  assign trace42_counter[25] = \<const0> ;
  assign trace42_counter[24] = \<const0> ;
  assign trace42_counter[23] = \<const0> ;
  assign trace42_counter[22] = \<const0> ;
  assign trace42_counter[21] = \<const0> ;
  assign trace42_counter[20] = \<const0> ;
  assign trace42_counter[19] = \<const0> ;
  assign trace42_counter[18] = \<const0> ;
  assign trace42_counter[17] = \<const0> ;
  assign trace42_counter[16] = \<const0> ;
  assign trace42_counter[15] = \<const0> ;
  assign trace42_counter[14] = \<const0> ;
  assign trace42_counter[13] = \<const0> ;
  assign trace42_counter[12] = \<const0> ;
  assign trace42_counter[11] = \<const0> ;
  assign trace42_counter[10] = \<const0> ;
  assign trace42_counter[9] = \<const0> ;
  assign trace42_counter[8] = \<const0> ;
  assign trace42_counter[7] = \<const0> ;
  assign trace42_counter[6] = \<const0> ;
  assign trace42_counter[5] = \<const0> ;
  assign trace42_counter[4] = \<const0> ;
  assign trace42_counter[3] = \<const0> ;
  assign trace42_counter[2] = \<const0> ;
  assign trace42_counter[1] = \<const0> ;
  assign trace42_counter[0] = \<const0> ;
  assign trace42_counter_overflow = \<const0> ;
  assign trace42_read = \<const0> ;
  assign trace43_counter[44] = \<const0> ;
  assign trace43_counter[43] = \<const0> ;
  assign trace43_counter[42] = \<const0> ;
  assign trace43_counter[41] = \<const0> ;
  assign trace43_counter[40] = \<const0> ;
  assign trace43_counter[39] = \<const0> ;
  assign trace43_counter[38] = \<const0> ;
  assign trace43_counter[37] = \<const0> ;
  assign trace43_counter[36] = \<const0> ;
  assign trace43_counter[35] = \<const0> ;
  assign trace43_counter[34] = \<const0> ;
  assign trace43_counter[33] = \<const0> ;
  assign trace43_counter[32] = \<const0> ;
  assign trace43_counter[31] = \<const0> ;
  assign trace43_counter[30] = \<const0> ;
  assign trace43_counter[29] = \<const0> ;
  assign trace43_counter[28] = \<const0> ;
  assign trace43_counter[27] = \<const0> ;
  assign trace43_counter[26] = \<const0> ;
  assign trace43_counter[25] = \<const0> ;
  assign trace43_counter[24] = \<const0> ;
  assign trace43_counter[23] = \<const0> ;
  assign trace43_counter[22] = \<const0> ;
  assign trace43_counter[21] = \<const0> ;
  assign trace43_counter[20] = \<const0> ;
  assign trace43_counter[19] = \<const0> ;
  assign trace43_counter[18] = \<const0> ;
  assign trace43_counter[17] = \<const0> ;
  assign trace43_counter[16] = \<const0> ;
  assign trace43_counter[15] = \<const0> ;
  assign trace43_counter[14] = \<const0> ;
  assign trace43_counter[13] = \<const0> ;
  assign trace43_counter[12] = \<const0> ;
  assign trace43_counter[11] = \<const0> ;
  assign trace43_counter[10] = \<const0> ;
  assign trace43_counter[9] = \<const0> ;
  assign trace43_counter[8] = \<const0> ;
  assign trace43_counter[7] = \<const0> ;
  assign trace43_counter[6] = \<const0> ;
  assign trace43_counter[5] = \<const0> ;
  assign trace43_counter[4] = \<const0> ;
  assign trace43_counter[3] = \<const0> ;
  assign trace43_counter[2] = \<const0> ;
  assign trace43_counter[1] = \<const0> ;
  assign trace43_counter[0] = \<const0> ;
  assign trace43_counter_overflow = \<const0> ;
  assign trace43_read = \<const0> ;
  assign trace44_counter[44] = \<const0> ;
  assign trace44_counter[43] = \<const0> ;
  assign trace44_counter[42] = \<const0> ;
  assign trace44_counter[41] = \<const0> ;
  assign trace44_counter[40] = \<const0> ;
  assign trace44_counter[39] = \<const0> ;
  assign trace44_counter[38] = \<const0> ;
  assign trace44_counter[37] = \<const0> ;
  assign trace44_counter[36] = \<const0> ;
  assign trace44_counter[35] = \<const0> ;
  assign trace44_counter[34] = \<const0> ;
  assign trace44_counter[33] = \<const0> ;
  assign trace44_counter[32] = \<const0> ;
  assign trace44_counter[31] = \<const0> ;
  assign trace44_counter[30] = \<const0> ;
  assign trace44_counter[29] = \<const0> ;
  assign trace44_counter[28] = \<const0> ;
  assign trace44_counter[27] = \<const0> ;
  assign trace44_counter[26] = \<const0> ;
  assign trace44_counter[25] = \<const0> ;
  assign trace44_counter[24] = \<const0> ;
  assign trace44_counter[23] = \<const0> ;
  assign trace44_counter[22] = \<const0> ;
  assign trace44_counter[21] = \<const0> ;
  assign trace44_counter[20] = \<const0> ;
  assign trace44_counter[19] = \<const0> ;
  assign trace44_counter[18] = \<const0> ;
  assign trace44_counter[17] = \<const0> ;
  assign trace44_counter[16] = \<const0> ;
  assign trace44_counter[15] = \<const0> ;
  assign trace44_counter[14] = \<const0> ;
  assign trace44_counter[13] = \<const0> ;
  assign trace44_counter[12] = \<const0> ;
  assign trace44_counter[11] = \<const0> ;
  assign trace44_counter[10] = \<const0> ;
  assign trace44_counter[9] = \<const0> ;
  assign trace44_counter[8] = \<const0> ;
  assign trace44_counter[7] = \<const0> ;
  assign trace44_counter[6] = \<const0> ;
  assign trace44_counter[5] = \<const0> ;
  assign trace44_counter[4] = \<const0> ;
  assign trace44_counter[3] = \<const0> ;
  assign trace44_counter[2] = \<const0> ;
  assign trace44_counter[1] = \<const0> ;
  assign trace44_counter[0] = \<const0> ;
  assign trace44_counter_overflow = \<const0> ;
  assign trace44_read = \<const0> ;
  assign trace45_counter[44] = \<const0> ;
  assign trace45_counter[43] = \<const0> ;
  assign trace45_counter[42] = \<const0> ;
  assign trace45_counter[41] = \<const0> ;
  assign trace45_counter[40] = \<const0> ;
  assign trace45_counter[39] = \<const0> ;
  assign trace45_counter[38] = \<const0> ;
  assign trace45_counter[37] = \<const0> ;
  assign trace45_counter[36] = \<const0> ;
  assign trace45_counter[35] = \<const0> ;
  assign trace45_counter[34] = \<const0> ;
  assign trace45_counter[33] = \<const0> ;
  assign trace45_counter[32] = \<const0> ;
  assign trace45_counter[31] = \<const0> ;
  assign trace45_counter[30] = \<const0> ;
  assign trace45_counter[29] = \<const0> ;
  assign trace45_counter[28] = \<const0> ;
  assign trace45_counter[27] = \<const0> ;
  assign trace45_counter[26] = \<const0> ;
  assign trace45_counter[25] = \<const0> ;
  assign trace45_counter[24] = \<const0> ;
  assign trace45_counter[23] = \<const0> ;
  assign trace45_counter[22] = \<const0> ;
  assign trace45_counter[21] = \<const0> ;
  assign trace45_counter[20] = \<const0> ;
  assign trace45_counter[19] = \<const0> ;
  assign trace45_counter[18] = \<const0> ;
  assign trace45_counter[17] = \<const0> ;
  assign trace45_counter[16] = \<const0> ;
  assign trace45_counter[15] = \<const0> ;
  assign trace45_counter[14] = \<const0> ;
  assign trace45_counter[13] = \<const0> ;
  assign trace45_counter[12] = \<const0> ;
  assign trace45_counter[11] = \<const0> ;
  assign trace45_counter[10] = \<const0> ;
  assign trace45_counter[9] = \<const0> ;
  assign trace45_counter[8] = \<const0> ;
  assign trace45_counter[7] = \<const0> ;
  assign trace45_counter[6] = \<const0> ;
  assign trace45_counter[5] = \<const0> ;
  assign trace45_counter[4] = \<const0> ;
  assign trace45_counter[3] = \<const0> ;
  assign trace45_counter[2] = \<const0> ;
  assign trace45_counter[1] = \<const0> ;
  assign trace45_counter[0] = \<const0> ;
  assign trace45_counter_overflow = \<const0> ;
  assign trace45_read = \<const0> ;
  assign trace46_counter[44] = \<const0> ;
  assign trace46_counter[43] = \<const0> ;
  assign trace46_counter[42] = \<const0> ;
  assign trace46_counter[41] = \<const0> ;
  assign trace46_counter[40] = \<const0> ;
  assign trace46_counter[39] = \<const0> ;
  assign trace46_counter[38] = \<const0> ;
  assign trace46_counter[37] = \<const0> ;
  assign trace46_counter[36] = \<const0> ;
  assign trace46_counter[35] = \<const0> ;
  assign trace46_counter[34] = \<const0> ;
  assign trace46_counter[33] = \<const0> ;
  assign trace46_counter[32] = \<const0> ;
  assign trace46_counter[31] = \<const0> ;
  assign trace46_counter[30] = \<const0> ;
  assign trace46_counter[29] = \<const0> ;
  assign trace46_counter[28] = \<const0> ;
  assign trace46_counter[27] = \<const0> ;
  assign trace46_counter[26] = \<const0> ;
  assign trace46_counter[25] = \<const0> ;
  assign trace46_counter[24] = \<const0> ;
  assign trace46_counter[23] = \<const0> ;
  assign trace46_counter[22] = \<const0> ;
  assign trace46_counter[21] = \<const0> ;
  assign trace46_counter[20] = \<const0> ;
  assign trace46_counter[19] = \<const0> ;
  assign trace46_counter[18] = \<const0> ;
  assign trace46_counter[17] = \<const0> ;
  assign trace46_counter[16] = \<const0> ;
  assign trace46_counter[15] = \<const0> ;
  assign trace46_counter[14] = \<const0> ;
  assign trace46_counter[13] = \<const0> ;
  assign trace46_counter[12] = \<const0> ;
  assign trace46_counter[11] = \<const0> ;
  assign trace46_counter[10] = \<const0> ;
  assign trace46_counter[9] = \<const0> ;
  assign trace46_counter[8] = \<const0> ;
  assign trace46_counter[7] = \<const0> ;
  assign trace46_counter[6] = \<const0> ;
  assign trace46_counter[5] = \<const0> ;
  assign trace46_counter[4] = \<const0> ;
  assign trace46_counter[3] = \<const0> ;
  assign trace46_counter[2] = \<const0> ;
  assign trace46_counter[1] = \<const0> ;
  assign trace46_counter[0] = \<const0> ;
  assign trace46_counter_overflow = \<const0> ;
  assign trace46_read = \<const0> ;
  assign trace47_counter[44] = \<const0> ;
  assign trace47_counter[43] = \<const0> ;
  assign trace47_counter[42] = \<const0> ;
  assign trace47_counter[41] = \<const0> ;
  assign trace47_counter[40] = \<const0> ;
  assign trace47_counter[39] = \<const0> ;
  assign trace47_counter[38] = \<const0> ;
  assign trace47_counter[37] = \<const0> ;
  assign trace47_counter[36] = \<const0> ;
  assign trace47_counter[35] = \<const0> ;
  assign trace47_counter[34] = \<const0> ;
  assign trace47_counter[33] = \<const0> ;
  assign trace47_counter[32] = \<const0> ;
  assign trace47_counter[31] = \<const0> ;
  assign trace47_counter[30] = \<const0> ;
  assign trace47_counter[29] = \<const0> ;
  assign trace47_counter[28] = \<const0> ;
  assign trace47_counter[27] = \<const0> ;
  assign trace47_counter[26] = \<const0> ;
  assign trace47_counter[25] = \<const0> ;
  assign trace47_counter[24] = \<const0> ;
  assign trace47_counter[23] = \<const0> ;
  assign trace47_counter[22] = \<const0> ;
  assign trace47_counter[21] = \<const0> ;
  assign trace47_counter[20] = \<const0> ;
  assign trace47_counter[19] = \<const0> ;
  assign trace47_counter[18] = \<const0> ;
  assign trace47_counter[17] = \<const0> ;
  assign trace47_counter[16] = \<const0> ;
  assign trace47_counter[15] = \<const0> ;
  assign trace47_counter[14] = \<const0> ;
  assign trace47_counter[13] = \<const0> ;
  assign trace47_counter[12] = \<const0> ;
  assign trace47_counter[11] = \<const0> ;
  assign trace47_counter[10] = \<const0> ;
  assign trace47_counter[9] = \<const0> ;
  assign trace47_counter[8] = \<const0> ;
  assign trace47_counter[7] = \<const0> ;
  assign trace47_counter[6] = \<const0> ;
  assign trace47_counter[5] = \<const0> ;
  assign trace47_counter[4] = \<const0> ;
  assign trace47_counter[3] = \<const0> ;
  assign trace47_counter[2] = \<const0> ;
  assign trace47_counter[1] = \<const0> ;
  assign trace47_counter[0] = \<const0> ;
  assign trace47_counter_overflow = \<const0> ;
  assign trace47_read = \<const0> ;
  assign trace48_counter[44] = \<const0> ;
  assign trace48_counter[43] = \<const0> ;
  assign trace48_counter[42] = \<const0> ;
  assign trace48_counter[41] = \<const0> ;
  assign trace48_counter[40] = \<const0> ;
  assign trace48_counter[39] = \<const0> ;
  assign trace48_counter[38] = \<const0> ;
  assign trace48_counter[37] = \<const0> ;
  assign trace48_counter[36] = \<const0> ;
  assign trace48_counter[35] = \<const0> ;
  assign trace48_counter[34] = \<const0> ;
  assign trace48_counter[33] = \<const0> ;
  assign trace48_counter[32] = \<const0> ;
  assign trace48_counter[31] = \<const0> ;
  assign trace48_counter[30] = \<const0> ;
  assign trace48_counter[29] = \<const0> ;
  assign trace48_counter[28] = \<const0> ;
  assign trace48_counter[27] = \<const0> ;
  assign trace48_counter[26] = \<const0> ;
  assign trace48_counter[25] = \<const0> ;
  assign trace48_counter[24] = \<const0> ;
  assign trace48_counter[23] = \<const0> ;
  assign trace48_counter[22] = \<const0> ;
  assign trace48_counter[21] = \<const0> ;
  assign trace48_counter[20] = \<const0> ;
  assign trace48_counter[19] = \<const0> ;
  assign trace48_counter[18] = \<const0> ;
  assign trace48_counter[17] = \<const0> ;
  assign trace48_counter[16] = \<const0> ;
  assign trace48_counter[15] = \<const0> ;
  assign trace48_counter[14] = \<const0> ;
  assign trace48_counter[13] = \<const0> ;
  assign trace48_counter[12] = \<const0> ;
  assign trace48_counter[11] = \<const0> ;
  assign trace48_counter[10] = \<const0> ;
  assign trace48_counter[9] = \<const0> ;
  assign trace48_counter[8] = \<const0> ;
  assign trace48_counter[7] = \<const0> ;
  assign trace48_counter[6] = \<const0> ;
  assign trace48_counter[5] = \<const0> ;
  assign trace48_counter[4] = \<const0> ;
  assign trace48_counter[3] = \<const0> ;
  assign trace48_counter[2] = \<const0> ;
  assign trace48_counter[1] = \<const0> ;
  assign trace48_counter[0] = \<const0> ;
  assign trace48_counter_overflow = \<const0> ;
  assign trace48_read = \<const0> ;
  assign trace49_counter[44] = \<const0> ;
  assign trace49_counter[43] = \<const0> ;
  assign trace49_counter[42] = \<const0> ;
  assign trace49_counter[41] = \<const0> ;
  assign trace49_counter[40] = \<const0> ;
  assign trace49_counter[39] = \<const0> ;
  assign trace49_counter[38] = \<const0> ;
  assign trace49_counter[37] = \<const0> ;
  assign trace49_counter[36] = \<const0> ;
  assign trace49_counter[35] = \<const0> ;
  assign trace49_counter[34] = \<const0> ;
  assign trace49_counter[33] = \<const0> ;
  assign trace49_counter[32] = \<const0> ;
  assign trace49_counter[31] = \<const0> ;
  assign trace49_counter[30] = \<const0> ;
  assign trace49_counter[29] = \<const0> ;
  assign trace49_counter[28] = \<const0> ;
  assign trace49_counter[27] = \<const0> ;
  assign trace49_counter[26] = \<const0> ;
  assign trace49_counter[25] = \<const0> ;
  assign trace49_counter[24] = \<const0> ;
  assign trace49_counter[23] = \<const0> ;
  assign trace49_counter[22] = \<const0> ;
  assign trace49_counter[21] = \<const0> ;
  assign trace49_counter[20] = \<const0> ;
  assign trace49_counter[19] = \<const0> ;
  assign trace49_counter[18] = \<const0> ;
  assign trace49_counter[17] = \<const0> ;
  assign trace49_counter[16] = \<const0> ;
  assign trace49_counter[15] = \<const0> ;
  assign trace49_counter[14] = \<const0> ;
  assign trace49_counter[13] = \<const0> ;
  assign trace49_counter[12] = \<const0> ;
  assign trace49_counter[11] = \<const0> ;
  assign trace49_counter[10] = \<const0> ;
  assign trace49_counter[9] = \<const0> ;
  assign trace49_counter[8] = \<const0> ;
  assign trace49_counter[7] = \<const0> ;
  assign trace49_counter[6] = \<const0> ;
  assign trace49_counter[5] = \<const0> ;
  assign trace49_counter[4] = \<const0> ;
  assign trace49_counter[3] = \<const0> ;
  assign trace49_counter[2] = \<const0> ;
  assign trace49_counter[1] = \<const0> ;
  assign trace49_counter[0] = \<const0> ;
  assign trace49_counter_overflow = \<const0> ;
  assign trace49_read = \<const0> ;
  assign trace4_counter[44:0] = trace6_counter;
  assign trace4_counter_overflow = trace6_counter_overflow;
  assign trace50_counter[44] = \<const0> ;
  assign trace50_counter[43] = \<const0> ;
  assign trace50_counter[42] = \<const0> ;
  assign trace50_counter[41] = \<const0> ;
  assign trace50_counter[40] = \<const0> ;
  assign trace50_counter[39] = \<const0> ;
  assign trace50_counter[38] = \<const0> ;
  assign trace50_counter[37] = \<const0> ;
  assign trace50_counter[36] = \<const0> ;
  assign trace50_counter[35] = \<const0> ;
  assign trace50_counter[34] = \<const0> ;
  assign trace50_counter[33] = \<const0> ;
  assign trace50_counter[32] = \<const0> ;
  assign trace50_counter[31] = \<const0> ;
  assign trace50_counter[30] = \<const0> ;
  assign trace50_counter[29] = \<const0> ;
  assign trace50_counter[28] = \<const0> ;
  assign trace50_counter[27] = \<const0> ;
  assign trace50_counter[26] = \<const0> ;
  assign trace50_counter[25] = \<const0> ;
  assign trace50_counter[24] = \<const0> ;
  assign trace50_counter[23] = \<const0> ;
  assign trace50_counter[22] = \<const0> ;
  assign trace50_counter[21] = \<const0> ;
  assign trace50_counter[20] = \<const0> ;
  assign trace50_counter[19] = \<const0> ;
  assign trace50_counter[18] = \<const0> ;
  assign trace50_counter[17] = \<const0> ;
  assign trace50_counter[16] = \<const0> ;
  assign trace50_counter[15] = \<const0> ;
  assign trace50_counter[14] = \<const0> ;
  assign trace50_counter[13] = \<const0> ;
  assign trace50_counter[12] = \<const0> ;
  assign trace50_counter[11] = \<const0> ;
  assign trace50_counter[10] = \<const0> ;
  assign trace50_counter[9] = \<const0> ;
  assign trace50_counter[8] = \<const0> ;
  assign trace50_counter[7] = \<const0> ;
  assign trace50_counter[6] = \<const0> ;
  assign trace50_counter[5] = \<const0> ;
  assign trace50_counter[4] = \<const0> ;
  assign trace50_counter[3] = \<const0> ;
  assign trace50_counter[2] = \<const0> ;
  assign trace50_counter[1] = \<const0> ;
  assign trace50_counter[0] = \<const0> ;
  assign trace50_counter_overflow = \<const0> ;
  assign trace50_read = \<const0> ;
  assign trace51_counter[44] = \<const0> ;
  assign trace51_counter[43] = \<const0> ;
  assign trace51_counter[42] = \<const0> ;
  assign trace51_counter[41] = \<const0> ;
  assign trace51_counter[40] = \<const0> ;
  assign trace51_counter[39] = \<const0> ;
  assign trace51_counter[38] = \<const0> ;
  assign trace51_counter[37] = \<const0> ;
  assign trace51_counter[36] = \<const0> ;
  assign trace51_counter[35] = \<const0> ;
  assign trace51_counter[34] = \<const0> ;
  assign trace51_counter[33] = \<const0> ;
  assign trace51_counter[32] = \<const0> ;
  assign trace51_counter[31] = \<const0> ;
  assign trace51_counter[30] = \<const0> ;
  assign trace51_counter[29] = \<const0> ;
  assign trace51_counter[28] = \<const0> ;
  assign trace51_counter[27] = \<const0> ;
  assign trace51_counter[26] = \<const0> ;
  assign trace51_counter[25] = \<const0> ;
  assign trace51_counter[24] = \<const0> ;
  assign trace51_counter[23] = \<const0> ;
  assign trace51_counter[22] = \<const0> ;
  assign trace51_counter[21] = \<const0> ;
  assign trace51_counter[20] = \<const0> ;
  assign trace51_counter[19] = \<const0> ;
  assign trace51_counter[18] = \<const0> ;
  assign trace51_counter[17] = \<const0> ;
  assign trace51_counter[16] = \<const0> ;
  assign trace51_counter[15] = \<const0> ;
  assign trace51_counter[14] = \<const0> ;
  assign trace51_counter[13] = \<const0> ;
  assign trace51_counter[12] = \<const0> ;
  assign trace51_counter[11] = \<const0> ;
  assign trace51_counter[10] = \<const0> ;
  assign trace51_counter[9] = \<const0> ;
  assign trace51_counter[8] = \<const0> ;
  assign trace51_counter[7] = \<const0> ;
  assign trace51_counter[6] = \<const0> ;
  assign trace51_counter[5] = \<const0> ;
  assign trace51_counter[4] = \<const0> ;
  assign trace51_counter[3] = \<const0> ;
  assign trace51_counter[2] = \<const0> ;
  assign trace51_counter[1] = \<const0> ;
  assign trace51_counter[0] = \<const0> ;
  assign trace51_counter_overflow = \<const0> ;
  assign trace51_read = \<const0> ;
  assign trace52_counter[44] = \<const0> ;
  assign trace52_counter[43] = \<const0> ;
  assign trace52_counter[42] = \<const0> ;
  assign trace52_counter[41] = \<const0> ;
  assign trace52_counter[40] = \<const0> ;
  assign trace52_counter[39] = \<const0> ;
  assign trace52_counter[38] = \<const0> ;
  assign trace52_counter[37] = \<const0> ;
  assign trace52_counter[36] = \<const0> ;
  assign trace52_counter[35] = \<const0> ;
  assign trace52_counter[34] = \<const0> ;
  assign trace52_counter[33] = \<const0> ;
  assign trace52_counter[32] = \<const0> ;
  assign trace52_counter[31] = \<const0> ;
  assign trace52_counter[30] = \<const0> ;
  assign trace52_counter[29] = \<const0> ;
  assign trace52_counter[28] = \<const0> ;
  assign trace52_counter[27] = \<const0> ;
  assign trace52_counter[26] = \<const0> ;
  assign trace52_counter[25] = \<const0> ;
  assign trace52_counter[24] = \<const0> ;
  assign trace52_counter[23] = \<const0> ;
  assign trace52_counter[22] = \<const0> ;
  assign trace52_counter[21] = \<const0> ;
  assign trace52_counter[20] = \<const0> ;
  assign trace52_counter[19] = \<const0> ;
  assign trace52_counter[18] = \<const0> ;
  assign trace52_counter[17] = \<const0> ;
  assign trace52_counter[16] = \<const0> ;
  assign trace52_counter[15] = \<const0> ;
  assign trace52_counter[14] = \<const0> ;
  assign trace52_counter[13] = \<const0> ;
  assign trace52_counter[12] = \<const0> ;
  assign trace52_counter[11] = \<const0> ;
  assign trace52_counter[10] = \<const0> ;
  assign trace52_counter[9] = \<const0> ;
  assign trace52_counter[8] = \<const0> ;
  assign trace52_counter[7] = \<const0> ;
  assign trace52_counter[6] = \<const0> ;
  assign trace52_counter[5] = \<const0> ;
  assign trace52_counter[4] = \<const0> ;
  assign trace52_counter[3] = \<const0> ;
  assign trace52_counter[2] = \<const0> ;
  assign trace52_counter[1] = \<const0> ;
  assign trace52_counter[0] = \<const0> ;
  assign trace52_counter_overflow = \<const0> ;
  assign trace52_read = \<const0> ;
  assign trace53_counter[44] = \<const0> ;
  assign trace53_counter[43] = \<const0> ;
  assign trace53_counter[42] = \<const0> ;
  assign trace53_counter[41] = \<const0> ;
  assign trace53_counter[40] = \<const0> ;
  assign trace53_counter[39] = \<const0> ;
  assign trace53_counter[38] = \<const0> ;
  assign trace53_counter[37] = \<const0> ;
  assign trace53_counter[36] = \<const0> ;
  assign trace53_counter[35] = \<const0> ;
  assign trace53_counter[34] = \<const0> ;
  assign trace53_counter[33] = \<const0> ;
  assign trace53_counter[32] = \<const0> ;
  assign trace53_counter[31] = \<const0> ;
  assign trace53_counter[30] = \<const0> ;
  assign trace53_counter[29] = \<const0> ;
  assign trace53_counter[28] = \<const0> ;
  assign trace53_counter[27] = \<const0> ;
  assign trace53_counter[26] = \<const0> ;
  assign trace53_counter[25] = \<const0> ;
  assign trace53_counter[24] = \<const0> ;
  assign trace53_counter[23] = \<const0> ;
  assign trace53_counter[22] = \<const0> ;
  assign trace53_counter[21] = \<const0> ;
  assign trace53_counter[20] = \<const0> ;
  assign trace53_counter[19] = \<const0> ;
  assign trace53_counter[18] = \<const0> ;
  assign trace53_counter[17] = \<const0> ;
  assign trace53_counter[16] = \<const0> ;
  assign trace53_counter[15] = \<const0> ;
  assign trace53_counter[14] = \<const0> ;
  assign trace53_counter[13] = \<const0> ;
  assign trace53_counter[12] = \<const0> ;
  assign trace53_counter[11] = \<const0> ;
  assign trace53_counter[10] = \<const0> ;
  assign trace53_counter[9] = \<const0> ;
  assign trace53_counter[8] = \<const0> ;
  assign trace53_counter[7] = \<const0> ;
  assign trace53_counter[6] = \<const0> ;
  assign trace53_counter[5] = \<const0> ;
  assign trace53_counter[4] = \<const0> ;
  assign trace53_counter[3] = \<const0> ;
  assign trace53_counter[2] = \<const0> ;
  assign trace53_counter[1] = \<const0> ;
  assign trace53_counter[0] = \<const0> ;
  assign trace53_counter_overflow = \<const0> ;
  assign trace53_read = \<const0> ;
  assign trace54_counter[44] = \<const0> ;
  assign trace54_counter[43] = \<const0> ;
  assign trace54_counter[42] = \<const0> ;
  assign trace54_counter[41] = \<const0> ;
  assign trace54_counter[40] = \<const0> ;
  assign trace54_counter[39] = \<const0> ;
  assign trace54_counter[38] = \<const0> ;
  assign trace54_counter[37] = \<const0> ;
  assign trace54_counter[36] = \<const0> ;
  assign trace54_counter[35] = \<const0> ;
  assign trace54_counter[34] = \<const0> ;
  assign trace54_counter[33] = \<const0> ;
  assign trace54_counter[32] = \<const0> ;
  assign trace54_counter[31] = \<const0> ;
  assign trace54_counter[30] = \<const0> ;
  assign trace54_counter[29] = \<const0> ;
  assign trace54_counter[28] = \<const0> ;
  assign trace54_counter[27] = \<const0> ;
  assign trace54_counter[26] = \<const0> ;
  assign trace54_counter[25] = \<const0> ;
  assign trace54_counter[24] = \<const0> ;
  assign trace54_counter[23] = \<const0> ;
  assign trace54_counter[22] = \<const0> ;
  assign trace54_counter[21] = \<const0> ;
  assign trace54_counter[20] = \<const0> ;
  assign trace54_counter[19] = \<const0> ;
  assign trace54_counter[18] = \<const0> ;
  assign trace54_counter[17] = \<const0> ;
  assign trace54_counter[16] = \<const0> ;
  assign trace54_counter[15] = \<const0> ;
  assign trace54_counter[14] = \<const0> ;
  assign trace54_counter[13] = \<const0> ;
  assign trace54_counter[12] = \<const0> ;
  assign trace54_counter[11] = \<const0> ;
  assign trace54_counter[10] = \<const0> ;
  assign trace54_counter[9] = \<const0> ;
  assign trace54_counter[8] = \<const0> ;
  assign trace54_counter[7] = \<const0> ;
  assign trace54_counter[6] = \<const0> ;
  assign trace54_counter[5] = \<const0> ;
  assign trace54_counter[4] = \<const0> ;
  assign trace54_counter[3] = \<const0> ;
  assign trace54_counter[2] = \<const0> ;
  assign trace54_counter[1] = \<const0> ;
  assign trace54_counter[0] = \<const0> ;
  assign trace54_counter_overflow = \<const0> ;
  assign trace54_read = \<const0> ;
  assign trace55_counter[44] = \<const0> ;
  assign trace55_counter[43] = \<const0> ;
  assign trace55_counter[42] = \<const0> ;
  assign trace55_counter[41] = \<const0> ;
  assign trace55_counter[40] = \<const0> ;
  assign trace55_counter[39] = \<const0> ;
  assign trace55_counter[38] = \<const0> ;
  assign trace55_counter[37] = \<const0> ;
  assign trace55_counter[36] = \<const0> ;
  assign trace55_counter[35] = \<const0> ;
  assign trace55_counter[34] = \<const0> ;
  assign trace55_counter[33] = \<const0> ;
  assign trace55_counter[32] = \<const0> ;
  assign trace55_counter[31] = \<const0> ;
  assign trace55_counter[30] = \<const0> ;
  assign trace55_counter[29] = \<const0> ;
  assign trace55_counter[28] = \<const0> ;
  assign trace55_counter[27] = \<const0> ;
  assign trace55_counter[26] = \<const0> ;
  assign trace55_counter[25] = \<const0> ;
  assign trace55_counter[24] = \<const0> ;
  assign trace55_counter[23] = \<const0> ;
  assign trace55_counter[22] = \<const0> ;
  assign trace55_counter[21] = \<const0> ;
  assign trace55_counter[20] = \<const0> ;
  assign trace55_counter[19] = \<const0> ;
  assign trace55_counter[18] = \<const0> ;
  assign trace55_counter[17] = \<const0> ;
  assign trace55_counter[16] = \<const0> ;
  assign trace55_counter[15] = \<const0> ;
  assign trace55_counter[14] = \<const0> ;
  assign trace55_counter[13] = \<const0> ;
  assign trace55_counter[12] = \<const0> ;
  assign trace55_counter[11] = \<const0> ;
  assign trace55_counter[10] = \<const0> ;
  assign trace55_counter[9] = \<const0> ;
  assign trace55_counter[8] = \<const0> ;
  assign trace55_counter[7] = \<const0> ;
  assign trace55_counter[6] = \<const0> ;
  assign trace55_counter[5] = \<const0> ;
  assign trace55_counter[4] = \<const0> ;
  assign trace55_counter[3] = \<const0> ;
  assign trace55_counter[2] = \<const0> ;
  assign trace55_counter[1] = \<const0> ;
  assign trace55_counter[0] = \<const0> ;
  assign trace55_counter_overflow = \<const0> ;
  assign trace55_read = \<const0> ;
  assign trace56_counter[44] = \<const0> ;
  assign trace56_counter[43] = \<const0> ;
  assign trace56_counter[42] = \<const0> ;
  assign trace56_counter[41] = \<const0> ;
  assign trace56_counter[40] = \<const0> ;
  assign trace56_counter[39] = \<const0> ;
  assign trace56_counter[38] = \<const0> ;
  assign trace56_counter[37] = \<const0> ;
  assign trace56_counter[36] = \<const0> ;
  assign trace56_counter[35] = \<const0> ;
  assign trace56_counter[34] = \<const0> ;
  assign trace56_counter[33] = \<const0> ;
  assign trace56_counter[32] = \<const0> ;
  assign trace56_counter[31] = \<const0> ;
  assign trace56_counter[30] = \<const0> ;
  assign trace56_counter[29] = \<const0> ;
  assign trace56_counter[28] = \<const0> ;
  assign trace56_counter[27] = \<const0> ;
  assign trace56_counter[26] = \<const0> ;
  assign trace56_counter[25] = \<const0> ;
  assign trace56_counter[24] = \<const0> ;
  assign trace56_counter[23] = \<const0> ;
  assign trace56_counter[22] = \<const0> ;
  assign trace56_counter[21] = \<const0> ;
  assign trace56_counter[20] = \<const0> ;
  assign trace56_counter[19] = \<const0> ;
  assign trace56_counter[18] = \<const0> ;
  assign trace56_counter[17] = \<const0> ;
  assign trace56_counter[16] = \<const0> ;
  assign trace56_counter[15] = \<const0> ;
  assign trace56_counter[14] = \<const0> ;
  assign trace56_counter[13] = \<const0> ;
  assign trace56_counter[12] = \<const0> ;
  assign trace56_counter[11] = \<const0> ;
  assign trace56_counter[10] = \<const0> ;
  assign trace56_counter[9] = \<const0> ;
  assign trace56_counter[8] = \<const0> ;
  assign trace56_counter[7] = \<const0> ;
  assign trace56_counter[6] = \<const0> ;
  assign trace56_counter[5] = \<const0> ;
  assign trace56_counter[4] = \<const0> ;
  assign trace56_counter[3] = \<const0> ;
  assign trace56_counter[2] = \<const0> ;
  assign trace56_counter[1] = \<const0> ;
  assign trace56_counter[0] = \<const0> ;
  assign trace56_counter_overflow = \<const0> ;
  assign trace56_read = \<const0> ;
  assign trace57_counter[44] = \<const0> ;
  assign trace57_counter[43] = \<const0> ;
  assign trace57_counter[42] = \<const0> ;
  assign trace57_counter[41] = \<const0> ;
  assign trace57_counter[40] = \<const0> ;
  assign trace57_counter[39] = \<const0> ;
  assign trace57_counter[38] = \<const0> ;
  assign trace57_counter[37] = \<const0> ;
  assign trace57_counter[36] = \<const0> ;
  assign trace57_counter[35] = \<const0> ;
  assign trace57_counter[34] = \<const0> ;
  assign trace57_counter[33] = \<const0> ;
  assign trace57_counter[32] = \<const0> ;
  assign trace57_counter[31] = \<const0> ;
  assign trace57_counter[30] = \<const0> ;
  assign trace57_counter[29] = \<const0> ;
  assign trace57_counter[28] = \<const0> ;
  assign trace57_counter[27] = \<const0> ;
  assign trace57_counter[26] = \<const0> ;
  assign trace57_counter[25] = \<const0> ;
  assign trace57_counter[24] = \<const0> ;
  assign trace57_counter[23] = \<const0> ;
  assign trace57_counter[22] = \<const0> ;
  assign trace57_counter[21] = \<const0> ;
  assign trace57_counter[20] = \<const0> ;
  assign trace57_counter[19] = \<const0> ;
  assign trace57_counter[18] = \<const0> ;
  assign trace57_counter[17] = \<const0> ;
  assign trace57_counter[16] = \<const0> ;
  assign trace57_counter[15] = \<const0> ;
  assign trace57_counter[14] = \<const0> ;
  assign trace57_counter[13] = \<const0> ;
  assign trace57_counter[12] = \<const0> ;
  assign trace57_counter[11] = \<const0> ;
  assign trace57_counter[10] = \<const0> ;
  assign trace57_counter[9] = \<const0> ;
  assign trace57_counter[8] = \<const0> ;
  assign trace57_counter[7] = \<const0> ;
  assign trace57_counter[6] = \<const0> ;
  assign trace57_counter[5] = \<const0> ;
  assign trace57_counter[4] = \<const0> ;
  assign trace57_counter[3] = \<const0> ;
  assign trace57_counter[2] = \<const0> ;
  assign trace57_counter[1] = \<const0> ;
  assign trace57_counter[0] = \<const0> ;
  assign trace57_counter_overflow = \<const0> ;
  assign trace57_read = \<const0> ;
  assign trace58_counter[44] = \<const0> ;
  assign trace58_counter[43] = \<const0> ;
  assign trace58_counter[42] = \<const0> ;
  assign trace58_counter[41] = \<const0> ;
  assign trace58_counter[40] = \<const0> ;
  assign trace58_counter[39] = \<const0> ;
  assign trace58_counter[38] = \<const0> ;
  assign trace58_counter[37] = \<const0> ;
  assign trace58_counter[36] = \<const0> ;
  assign trace58_counter[35] = \<const0> ;
  assign trace58_counter[34] = \<const0> ;
  assign trace58_counter[33] = \<const0> ;
  assign trace58_counter[32] = \<const0> ;
  assign trace58_counter[31] = \<const0> ;
  assign trace58_counter[30] = \<const0> ;
  assign trace58_counter[29] = \<const0> ;
  assign trace58_counter[28] = \<const0> ;
  assign trace58_counter[27] = \<const0> ;
  assign trace58_counter[26] = \<const0> ;
  assign trace58_counter[25] = \<const0> ;
  assign trace58_counter[24] = \<const0> ;
  assign trace58_counter[23] = \<const0> ;
  assign trace58_counter[22] = \<const0> ;
  assign trace58_counter[21] = \<const0> ;
  assign trace58_counter[20] = \<const0> ;
  assign trace58_counter[19] = \<const0> ;
  assign trace58_counter[18] = \<const0> ;
  assign trace58_counter[17] = \<const0> ;
  assign trace58_counter[16] = \<const0> ;
  assign trace58_counter[15] = \<const0> ;
  assign trace58_counter[14] = \<const0> ;
  assign trace58_counter[13] = \<const0> ;
  assign trace58_counter[12] = \<const0> ;
  assign trace58_counter[11] = \<const0> ;
  assign trace58_counter[10] = \<const0> ;
  assign trace58_counter[9] = \<const0> ;
  assign trace58_counter[8] = \<const0> ;
  assign trace58_counter[7] = \<const0> ;
  assign trace58_counter[6] = \<const0> ;
  assign trace58_counter[5] = \<const0> ;
  assign trace58_counter[4] = \<const0> ;
  assign trace58_counter[3] = \<const0> ;
  assign trace58_counter[2] = \<const0> ;
  assign trace58_counter[1] = \<const0> ;
  assign trace58_counter[0] = \<const0> ;
  assign trace58_counter_overflow = \<const0> ;
  assign trace58_read = \<const0> ;
  assign trace59_counter[44] = \<const0> ;
  assign trace59_counter[43] = \<const0> ;
  assign trace59_counter[42] = \<const0> ;
  assign trace59_counter[41] = \<const0> ;
  assign trace59_counter[40] = \<const0> ;
  assign trace59_counter[39] = \<const0> ;
  assign trace59_counter[38] = \<const0> ;
  assign trace59_counter[37] = \<const0> ;
  assign trace59_counter[36] = \<const0> ;
  assign trace59_counter[35] = \<const0> ;
  assign trace59_counter[34] = \<const0> ;
  assign trace59_counter[33] = \<const0> ;
  assign trace59_counter[32] = \<const0> ;
  assign trace59_counter[31] = \<const0> ;
  assign trace59_counter[30] = \<const0> ;
  assign trace59_counter[29] = \<const0> ;
  assign trace59_counter[28] = \<const0> ;
  assign trace59_counter[27] = \<const0> ;
  assign trace59_counter[26] = \<const0> ;
  assign trace59_counter[25] = \<const0> ;
  assign trace59_counter[24] = \<const0> ;
  assign trace59_counter[23] = \<const0> ;
  assign trace59_counter[22] = \<const0> ;
  assign trace59_counter[21] = \<const0> ;
  assign trace59_counter[20] = \<const0> ;
  assign trace59_counter[19] = \<const0> ;
  assign trace59_counter[18] = \<const0> ;
  assign trace59_counter[17] = \<const0> ;
  assign trace59_counter[16] = \<const0> ;
  assign trace59_counter[15] = \<const0> ;
  assign trace59_counter[14] = \<const0> ;
  assign trace59_counter[13] = \<const0> ;
  assign trace59_counter[12] = \<const0> ;
  assign trace59_counter[11] = \<const0> ;
  assign trace59_counter[10] = \<const0> ;
  assign trace59_counter[9] = \<const0> ;
  assign trace59_counter[8] = \<const0> ;
  assign trace59_counter[7] = \<const0> ;
  assign trace59_counter[6] = \<const0> ;
  assign trace59_counter[5] = \<const0> ;
  assign trace59_counter[4] = \<const0> ;
  assign trace59_counter[3] = \<const0> ;
  assign trace59_counter[2] = \<const0> ;
  assign trace59_counter[1] = \<const0> ;
  assign trace59_counter[0] = \<const0> ;
  assign trace59_counter_overflow = \<const0> ;
  assign trace59_read = \<const0> ;
  assign trace5_counter[44:0] = trace6_counter;
  assign trace5_counter_overflow = trace6_counter_overflow;
  assign trace60_counter[44] = \<const0> ;
  assign trace60_counter[43] = \<const0> ;
  assign trace60_counter[42] = \<const0> ;
  assign trace60_counter[41] = \<const0> ;
  assign trace60_counter[40] = \<const0> ;
  assign trace60_counter[39] = \<const0> ;
  assign trace60_counter[38] = \<const0> ;
  assign trace60_counter[37] = \<const0> ;
  assign trace60_counter[36] = \<const0> ;
  assign trace60_counter[35] = \<const0> ;
  assign trace60_counter[34] = \<const0> ;
  assign trace60_counter[33] = \<const0> ;
  assign trace60_counter[32] = \<const0> ;
  assign trace60_counter[31] = \<const0> ;
  assign trace60_counter[30] = \<const0> ;
  assign trace60_counter[29] = \<const0> ;
  assign trace60_counter[28] = \<const0> ;
  assign trace60_counter[27] = \<const0> ;
  assign trace60_counter[26] = \<const0> ;
  assign trace60_counter[25] = \<const0> ;
  assign trace60_counter[24] = \<const0> ;
  assign trace60_counter[23] = \<const0> ;
  assign trace60_counter[22] = \<const0> ;
  assign trace60_counter[21] = \<const0> ;
  assign trace60_counter[20] = \<const0> ;
  assign trace60_counter[19] = \<const0> ;
  assign trace60_counter[18] = \<const0> ;
  assign trace60_counter[17] = \<const0> ;
  assign trace60_counter[16] = \<const0> ;
  assign trace60_counter[15] = \<const0> ;
  assign trace60_counter[14] = \<const0> ;
  assign trace60_counter[13] = \<const0> ;
  assign trace60_counter[12] = \<const0> ;
  assign trace60_counter[11] = \<const0> ;
  assign trace60_counter[10] = \<const0> ;
  assign trace60_counter[9] = \<const0> ;
  assign trace60_counter[8] = \<const0> ;
  assign trace60_counter[7] = \<const0> ;
  assign trace60_counter[6] = \<const0> ;
  assign trace60_counter[5] = \<const0> ;
  assign trace60_counter[4] = \<const0> ;
  assign trace60_counter[3] = \<const0> ;
  assign trace60_counter[2] = \<const0> ;
  assign trace60_counter[1] = \<const0> ;
  assign trace60_counter[0] = \<const0> ;
  assign trace60_counter_overflow = \<const0> ;
  assign trace60_read = \<const0> ;
  assign trace61_counter[44] = \<const0> ;
  assign trace61_counter[43] = \<const0> ;
  assign trace61_counter[42] = \<const0> ;
  assign trace61_counter[41] = \<const0> ;
  assign trace61_counter[40] = \<const0> ;
  assign trace61_counter[39] = \<const0> ;
  assign trace61_counter[38] = \<const0> ;
  assign trace61_counter[37] = \<const0> ;
  assign trace61_counter[36] = \<const0> ;
  assign trace61_counter[35] = \<const0> ;
  assign trace61_counter[34] = \<const0> ;
  assign trace61_counter[33] = \<const0> ;
  assign trace61_counter[32] = \<const0> ;
  assign trace61_counter[31] = \<const0> ;
  assign trace61_counter[30] = \<const0> ;
  assign trace61_counter[29] = \<const0> ;
  assign trace61_counter[28] = \<const0> ;
  assign trace61_counter[27] = \<const0> ;
  assign trace61_counter[26] = \<const0> ;
  assign trace61_counter[25] = \<const0> ;
  assign trace61_counter[24] = \<const0> ;
  assign trace61_counter[23] = \<const0> ;
  assign trace61_counter[22] = \<const0> ;
  assign trace61_counter[21] = \<const0> ;
  assign trace61_counter[20] = \<const0> ;
  assign trace61_counter[19] = \<const0> ;
  assign trace61_counter[18] = \<const0> ;
  assign trace61_counter[17] = \<const0> ;
  assign trace61_counter[16] = \<const0> ;
  assign trace61_counter[15] = \<const0> ;
  assign trace61_counter[14] = \<const0> ;
  assign trace61_counter[13] = \<const0> ;
  assign trace61_counter[12] = \<const0> ;
  assign trace61_counter[11] = \<const0> ;
  assign trace61_counter[10] = \<const0> ;
  assign trace61_counter[9] = \<const0> ;
  assign trace61_counter[8] = \<const0> ;
  assign trace61_counter[7] = \<const0> ;
  assign trace61_counter[6] = \<const0> ;
  assign trace61_counter[5] = \<const0> ;
  assign trace61_counter[4] = \<const0> ;
  assign trace61_counter[3] = \<const0> ;
  assign trace61_counter[2] = \<const0> ;
  assign trace61_counter[1] = \<const0> ;
  assign trace61_counter[0] = \<const0> ;
  assign trace61_counter_overflow = \<const0> ;
  assign trace61_read = \<const0> ;
  assign trace62_counter[44] = \<const0> ;
  assign trace62_counter[43] = \<const0> ;
  assign trace62_counter[42] = \<const0> ;
  assign trace62_counter[41] = \<const0> ;
  assign trace62_counter[40] = \<const0> ;
  assign trace62_counter[39] = \<const0> ;
  assign trace62_counter[38] = \<const0> ;
  assign trace62_counter[37] = \<const0> ;
  assign trace62_counter[36] = \<const0> ;
  assign trace62_counter[35] = \<const0> ;
  assign trace62_counter[34] = \<const0> ;
  assign trace62_counter[33] = \<const0> ;
  assign trace62_counter[32] = \<const0> ;
  assign trace62_counter[31] = \<const0> ;
  assign trace62_counter[30] = \<const0> ;
  assign trace62_counter[29] = \<const0> ;
  assign trace62_counter[28] = \<const0> ;
  assign trace62_counter[27] = \<const0> ;
  assign trace62_counter[26] = \<const0> ;
  assign trace62_counter[25] = \<const0> ;
  assign trace62_counter[24] = \<const0> ;
  assign trace62_counter[23] = \<const0> ;
  assign trace62_counter[22] = \<const0> ;
  assign trace62_counter[21] = \<const0> ;
  assign trace62_counter[20] = \<const0> ;
  assign trace62_counter[19] = \<const0> ;
  assign trace62_counter[18] = \<const0> ;
  assign trace62_counter[17] = \<const0> ;
  assign trace62_counter[16] = \<const0> ;
  assign trace62_counter[15] = \<const0> ;
  assign trace62_counter[14] = \<const0> ;
  assign trace62_counter[13] = \<const0> ;
  assign trace62_counter[12] = \<const0> ;
  assign trace62_counter[11] = \<const0> ;
  assign trace62_counter[10] = \<const0> ;
  assign trace62_counter[9] = \<const0> ;
  assign trace62_counter[8] = \<const0> ;
  assign trace62_counter[7] = \<const0> ;
  assign trace62_counter[6] = \<const0> ;
  assign trace62_counter[5] = \<const0> ;
  assign trace62_counter[4] = \<const0> ;
  assign trace62_counter[3] = \<const0> ;
  assign trace62_counter[2] = \<const0> ;
  assign trace62_counter[1] = \<const0> ;
  assign trace62_counter[0] = \<const0> ;
  assign trace62_counter_overflow = \<const0> ;
  assign trace62_read = \<const0> ;
  assign trace7_counter[44] = \<const0> ;
  assign trace7_counter[43] = \<const0> ;
  assign trace7_counter[42] = \<const0> ;
  assign trace7_counter[41] = \<const0> ;
  assign trace7_counter[40] = \<const0> ;
  assign trace7_counter[39] = \<const0> ;
  assign trace7_counter[38] = \<const0> ;
  assign trace7_counter[37] = \<const0> ;
  assign trace7_counter[36] = \<const0> ;
  assign trace7_counter[35] = \<const0> ;
  assign trace7_counter[34] = \<const0> ;
  assign trace7_counter[33] = \<const0> ;
  assign trace7_counter[32] = \<const0> ;
  assign trace7_counter[31] = \<const0> ;
  assign trace7_counter[30] = \<const0> ;
  assign trace7_counter[29] = \<const0> ;
  assign trace7_counter[28] = \<const0> ;
  assign trace7_counter[27] = \<const0> ;
  assign trace7_counter[26] = \<const0> ;
  assign trace7_counter[25] = \<const0> ;
  assign trace7_counter[24] = \<const0> ;
  assign trace7_counter[23] = \<const0> ;
  assign trace7_counter[22] = \<const0> ;
  assign trace7_counter[21] = \<const0> ;
  assign trace7_counter[20] = \<const0> ;
  assign trace7_counter[19] = \<const0> ;
  assign trace7_counter[18] = \<const0> ;
  assign trace7_counter[17] = \<const0> ;
  assign trace7_counter[16] = \<const0> ;
  assign trace7_counter[15] = \<const0> ;
  assign trace7_counter[14] = \<const0> ;
  assign trace7_counter[13] = \<const0> ;
  assign trace7_counter[12] = \<const0> ;
  assign trace7_counter[11] = \<const0> ;
  assign trace7_counter[10] = \<const0> ;
  assign trace7_counter[9] = \<const0> ;
  assign trace7_counter[8] = \<const0> ;
  assign trace7_counter[7] = \<const0> ;
  assign trace7_counter[6] = \<const0> ;
  assign trace7_counter[5] = \<const0> ;
  assign trace7_counter[4] = \<const0> ;
  assign trace7_counter[3] = \<const0> ;
  assign trace7_counter[2] = \<const0> ;
  assign trace7_counter[1] = \<const0> ;
  assign trace7_counter[0] = \<const0> ;
  assign trace7_counter_overflow = \<const0> ;
  assign trace7_read = \<const0> ;
  assign trace8_counter[44] = \<const0> ;
  assign trace8_counter[43] = \<const0> ;
  assign trace8_counter[42] = \<const0> ;
  assign trace8_counter[41] = \<const0> ;
  assign trace8_counter[40] = \<const0> ;
  assign trace8_counter[39] = \<const0> ;
  assign trace8_counter[38] = \<const0> ;
  assign trace8_counter[37] = \<const0> ;
  assign trace8_counter[36] = \<const0> ;
  assign trace8_counter[35] = \<const0> ;
  assign trace8_counter[34] = \<const0> ;
  assign trace8_counter[33] = \<const0> ;
  assign trace8_counter[32] = \<const0> ;
  assign trace8_counter[31] = \<const0> ;
  assign trace8_counter[30] = \<const0> ;
  assign trace8_counter[29] = \<const0> ;
  assign trace8_counter[28] = \<const0> ;
  assign trace8_counter[27] = \<const0> ;
  assign trace8_counter[26] = \<const0> ;
  assign trace8_counter[25] = \<const0> ;
  assign trace8_counter[24] = \<const0> ;
  assign trace8_counter[23] = \<const0> ;
  assign trace8_counter[22] = \<const0> ;
  assign trace8_counter[21] = \<const0> ;
  assign trace8_counter[20] = \<const0> ;
  assign trace8_counter[19] = \<const0> ;
  assign trace8_counter[18] = \<const0> ;
  assign trace8_counter[17] = \<const0> ;
  assign trace8_counter[16] = \<const0> ;
  assign trace8_counter[15] = \<const0> ;
  assign trace8_counter[14] = \<const0> ;
  assign trace8_counter[13] = \<const0> ;
  assign trace8_counter[12] = \<const0> ;
  assign trace8_counter[11] = \<const0> ;
  assign trace8_counter[10] = \<const0> ;
  assign trace8_counter[9] = \<const0> ;
  assign trace8_counter[8] = \<const0> ;
  assign trace8_counter[7] = \<const0> ;
  assign trace8_counter[6] = \<const0> ;
  assign trace8_counter[5] = \<const0> ;
  assign trace8_counter[4] = \<const0> ;
  assign trace8_counter[3] = \<const0> ;
  assign trace8_counter[2] = \<const0> ;
  assign trace8_counter[1] = \<const0> ;
  assign trace8_counter[0] = \<const0> ;
  assign trace8_counter_overflow = \<const0> ;
  assign trace8_read = \<const0> ;
  assign trace9_counter[44] = \<const0> ;
  assign trace9_counter[43] = \<const0> ;
  assign trace9_counter[42] = \<const0> ;
  assign trace9_counter[41] = \<const0> ;
  assign trace9_counter[40] = \<const0> ;
  assign trace9_counter[39] = \<const0> ;
  assign trace9_counter[38] = \<const0> ;
  assign trace9_counter[37] = \<const0> ;
  assign trace9_counter[36] = \<const0> ;
  assign trace9_counter[35] = \<const0> ;
  assign trace9_counter[34] = \<const0> ;
  assign trace9_counter[33] = \<const0> ;
  assign trace9_counter[32] = \<const0> ;
  assign trace9_counter[31] = \<const0> ;
  assign trace9_counter[30] = \<const0> ;
  assign trace9_counter[29] = \<const0> ;
  assign trace9_counter[28] = \<const0> ;
  assign trace9_counter[27] = \<const0> ;
  assign trace9_counter[26] = \<const0> ;
  assign trace9_counter[25] = \<const0> ;
  assign trace9_counter[24] = \<const0> ;
  assign trace9_counter[23] = \<const0> ;
  assign trace9_counter[22] = \<const0> ;
  assign trace9_counter[21] = \<const0> ;
  assign trace9_counter[20] = \<const0> ;
  assign trace9_counter[19] = \<const0> ;
  assign trace9_counter[18] = \<const0> ;
  assign trace9_counter[17] = \<const0> ;
  assign trace9_counter[16] = \<const0> ;
  assign trace9_counter[15] = \<const0> ;
  assign trace9_counter[14] = \<const0> ;
  assign trace9_counter[13] = \<const0> ;
  assign trace9_counter[12] = \<const0> ;
  assign trace9_counter[11] = \<const0> ;
  assign trace9_counter[10] = \<const0> ;
  assign trace9_counter[9] = \<const0> ;
  assign trace9_counter[8] = \<const0> ;
  assign trace9_counter[7] = \<const0> ;
  assign trace9_counter[6] = \<const0> ;
  assign trace9_counter[5] = \<const0> ;
  assign trace9_counter[4] = \<const0> ;
  assign trace9_counter[3] = \<const0> ;
  assign trace9_counter[2] = \<const0> ;
  assign trace9_counter[1] = \<const0> ;
  assign trace9_counter[0] = \<const0> ;
  assign trace9_counter_overflow = \<const0> ;
  assign trace9_read = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF axi_lite_if_i
       (.E(axi_lite_if_i_n_7),
        .axi_arready_reg_0(s_axi_arready),
        .axi_awready_reg_0(s_axi_awready),
        .axi_wready_reg_0(s_axi_wready),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .\s_axi_awaddr[3] (axi_lite_if_i_n_9),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_trace_data(sw_trace_data),
        .trace_clk(trace_clk),
        .trace_resetn(trace_resetn),
        .trace_resetn_0(axi_lite_if_i_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice \b1[0].ss_i 
       (.D({\b1[0].ss_i_n_2 ,\b1[0].ss_i_n_3 ,\b1[0].ss_i_n_4 ,\b1[0].ss_i_n_5 ,\b1[0].ss_i_n_6 ,\b1[0].ss_i_n_7 ,\b1[0].ss_i_n_8 ,\b1[0].ss_i_n_9 ,\b1[0].ss_i_n_10 ,\b1[0].ss_i_n_11 ,\b1[0].ss_i_n_12 ,\b1[0].ss_i_n_13 ,\b1[0].ss_i_n_14 ,\b1[0].ss_i_n_15 ,\b1[0].ss_i_n_16 ,\b1[0].ss_i_n_17 ,\b1[0].ss_i_n_18 ,\b1[0].ss_i_n_19 ,\b1[0].ss_i_n_20 ,\b1[0].ss_i_n_21 ,\b1[0].ss_i_n_22 ,\b1[0].ss_i_n_23 ,\b1[0].ss_i_n_24 ,\b1[0].ss_i_n_25 ,\b1[0].ss_i_n_26 ,\b1[0].ss_i_n_27 ,\b1[0].ss_i_n_28 ,\b1[0].ss_i_n_29 ,\b1[0].ss_i_n_30 ,\b1[0].ss_i_n_31 ,\b1[0].ss_i_n_32 ,\b1[0].ss_i_n_33 ,\b1[0].ss_i_n_34 ,\b1[0].ss_i_n_35 ,\b1[0].ss_i_n_36 ,\b1[0].ss_i_n_37 ,\b1[0].ss_i_n_38 ,\b1[0].ss_i_n_39 ,\b1[0].ss_i_n_40 ,\b1[0].ss_i_n_41 ,\b1[0].ss_i_n_42 ,\b1[0].ss_i_n_43 ,\b1[0].ss_i_n_44 ,\b1[0].ss_i_n_45 ,\b1[0].ss_i_n_46 ,\b1[0].ss_i_n_47 ,\b1[0].ss_i_n_48 ,\b1[0].ss_i_n_49 ,\b1[0].ss_i_n_50 ,\b1[0].ss_i_n_51 ,\b1[0].ss_i_n_52 ,\b1[0].ss_i_n_53 ,\b1[0].ss_i_n_54 ,\b1[0].ss_i_n_55 ,\b1[0].ss_i_n_56 ,\b1[0].ss_i_n_57 ,\b1[0].ss_i_n_58 ,\b1[0].ss_i_n_59 ,\b1[0].ss_i_n_60 ,\b1[0].ss_i_n_61 ,\b1[0].ss_i_n_62 ,\b1[0].ss_i_n_63 ,\b1[0].ss_i_n_64 ,\b1[0].ss_i_n_65 }),
        .E(\b2[3].merge_i/data_i ),
        ._trace_valid(_trace_valid[0]),
        .\data_i_reg[0] (\b1[1].ss_i_n_65 ),
        .\data_i_reg[10] (\b1[1].ss_i_n_55 ),
        .\data_i_reg[11] (\b1[1].ss_i_n_54 ),
        .\data_i_reg[12] (\b1[1].ss_i_n_53 ),
        .\data_i_reg[13] (\b1[1].ss_i_n_52 ),
        .\data_i_reg[14] (\b1[1].ss_i_n_51 ),
        .\data_i_reg[15] (\b1[1].ss_i_n_50 ),
        .\data_i_reg[16] (\b1[1].ss_i_n_49 ),
        .\data_i_reg[17] (\b1[1].ss_i_n_48 ),
        .\data_i_reg[18] (\b1[1].ss_i_n_47 ),
        .\data_i_reg[19] (\b1[1].ss_i_n_46 ),
        .\data_i_reg[1] (\b1[1].ss_i_n_64 ),
        .\data_i_reg[20] (\b1[1].ss_i_n_45 ),
        .\data_i_reg[21] (\b1[1].ss_i_n_44 ),
        .\data_i_reg[22] (\b1[1].ss_i_n_43 ),
        .\data_i_reg[23] (\b1[1].ss_i_n_42 ),
        .\data_i_reg[24] (\b1[1].ss_i_n_41 ),
        .\data_i_reg[25] (\b1[1].ss_i_n_40 ),
        .\data_i_reg[26] (\b1[1].ss_i_n_39 ),
        .\data_i_reg[27] (\b1[1].ss_i_n_38 ),
        .\data_i_reg[28] (\b1[1].ss_i_n_37 ),
        .\data_i_reg[29] (\b1[1].ss_i_n_36 ),
        .\data_i_reg[2] (\b1[1].ss_i_n_63 ),
        .\data_i_reg[30] (\b1[1].ss_i_n_35 ),
        .\data_i_reg[31] (\b1[1].ss_i_n_34 ),
        .\data_i_reg[32] (\b1[1].ss_i_n_33 ),
        .\data_i_reg[33] (\b1[1].ss_i_n_32 ),
        .\data_i_reg[34] (\b1[1].ss_i_n_31 ),
        .\data_i_reg[35] (\b1[1].ss_i_n_30 ),
        .\data_i_reg[36] (\b1[1].ss_i_n_29 ),
        .\data_i_reg[37] (\b1[1].ss_i_n_28 ),
        .\data_i_reg[38] (\b1[1].ss_i_n_27 ),
        .\data_i_reg[39] (\b1[1].ss_i_n_26 ),
        .\data_i_reg[3] (\b1[1].ss_i_n_62 ),
        .\data_i_reg[40] (\b1[1].ss_i_n_25 ),
        .\data_i_reg[41] (\b1[1].ss_i_n_24 ),
        .\data_i_reg[42] (\b1[1].ss_i_n_23 ),
        .\data_i_reg[43] (\b1[1].ss_i_n_22 ),
        .\data_i_reg[44] (\b1[1].ss_i_n_21 ),
        .\data_i_reg[45] (\b1[1].ss_i_n_20 ),
        .\data_i_reg[46] (\b1[1].ss_i_n_19 ),
        .\data_i_reg[47] (\b1[1].ss_i_n_18 ),
        .\data_i_reg[48] (\b1[1].ss_i_n_17 ),
        .\data_i_reg[49] (\b1[1].ss_i_n_16 ),
        .\data_i_reg[4] (\b1[1].ss_i_n_61 ),
        .\data_i_reg[50] (\b1[1].ss_i_n_15 ),
        .\data_i_reg[51] (\b1[1].ss_i_n_14 ),
        .\data_i_reg[52] (\b1[1].ss_i_n_13 ),
        .\data_i_reg[53] (\b1[1].ss_i_n_12 ),
        .\data_i_reg[54] (\b1[1].ss_i_n_11 ),
        .\data_i_reg[55] (\b1[1].ss_i_n_10 ),
        .\data_i_reg[56] (\b1[1].ss_i_n_9 ),
        .\data_i_reg[57] (\b1[1].ss_i_n_8 ),
        .\data_i_reg[58] (\b1[1].ss_i_n_7 ),
        .\data_i_reg[59] (\b1[1].ss_i_n_6 ),
        .\data_i_reg[5] (\b1[1].ss_i_n_60 ),
        .\data_i_reg[60] (\b1[1].ss_i_n_5 ),
        .\data_i_reg[61] (\b1[1].ss_i_n_4 ),
        .\data_i_reg[62] (\b1[1].ss_i_n_3 ),
        .\data_i_reg[63] (\b1[1].ss_i_n_2 ),
        .\data_i_reg[6] (\b1[1].ss_i_n_59 ),
        .\data_i_reg[7] (\b1[1].ss_i_n_58 ),
        .\data_i_reg[8] (\b1[1].ss_i_n_57 ),
        .\data_i_reg[9] (\b1[1].ss_i_n_56 ),
        .dout(sw_data),
        .empty(event_empty_i),
        .have_data0(\b2[3].merge_i/have_data0 ),
        .have_data_reg_0(trace_rst),
        .ready_i_reg_reg_0(merge_tree_i_n_0),
        .ready_i_reg_reg_1(_trace_valid[1]),
        .sw_read(sw_read),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0 \b1[1].ss_i 
       (._trace_valid(_trace_valid[0]),
        .\buffer_reg[0]_0 (\b1[1].ss_i_n_65 ),
        .\buffer_reg[10]_0 (\b1[1].ss_i_n_55 ),
        .\buffer_reg[11]_0 (\b1[1].ss_i_n_54 ),
        .\buffer_reg[12]_0 (\b1[1].ss_i_n_53 ),
        .\buffer_reg[13]_0 (\b1[1].ss_i_n_52 ),
        .\buffer_reg[14]_0 (\b1[1].ss_i_n_51 ),
        .\buffer_reg[15]_0 (\b1[1].ss_i_n_50 ),
        .\buffer_reg[16]_0 (\b1[1].ss_i_n_49 ),
        .\buffer_reg[17]_0 (\b1[1].ss_i_n_48 ),
        .\buffer_reg[18]_0 (\b1[1].ss_i_n_47 ),
        .\buffer_reg[19]_0 (\b1[1].ss_i_n_46 ),
        .\buffer_reg[1]_0 (\b1[1].ss_i_n_64 ),
        .\buffer_reg[20]_0 (\b1[1].ss_i_n_45 ),
        .\buffer_reg[21]_0 (\b1[1].ss_i_n_44 ),
        .\buffer_reg[22]_0 (\b1[1].ss_i_n_43 ),
        .\buffer_reg[23]_0 (\b1[1].ss_i_n_42 ),
        .\buffer_reg[24]_0 (\b1[1].ss_i_n_41 ),
        .\buffer_reg[25]_0 (\b1[1].ss_i_n_40 ),
        .\buffer_reg[26]_0 (\b1[1].ss_i_n_39 ),
        .\buffer_reg[27]_0 (\b1[1].ss_i_n_38 ),
        .\buffer_reg[28]_0 (\b1[1].ss_i_n_37 ),
        .\buffer_reg[29]_0 (\b1[1].ss_i_n_36 ),
        .\buffer_reg[2]_0 (\b1[1].ss_i_n_63 ),
        .\buffer_reg[30]_0 (\b1[1].ss_i_n_35 ),
        .\buffer_reg[31]_0 (\b1[1].ss_i_n_34 ),
        .\buffer_reg[32]_0 (\b1[1].ss_i_n_33 ),
        .\buffer_reg[33]_0 (\b1[1].ss_i_n_32 ),
        .\buffer_reg[34]_0 (\b1[1].ss_i_n_31 ),
        .\buffer_reg[35]_0 (\b1[1].ss_i_n_30 ),
        .\buffer_reg[36]_0 (\b1[1].ss_i_n_29 ),
        .\buffer_reg[37]_0 (\b1[1].ss_i_n_28 ),
        .\buffer_reg[38]_0 (\b1[1].ss_i_n_27 ),
        .\buffer_reg[39]_0 (\b1[1].ss_i_n_26 ),
        .\buffer_reg[3]_0 (\b1[1].ss_i_n_62 ),
        .\buffer_reg[40]_0 (\b1[1].ss_i_n_25 ),
        .\buffer_reg[41]_0 (\b1[1].ss_i_n_24 ),
        .\buffer_reg[42]_0 (\b1[1].ss_i_n_23 ),
        .\buffer_reg[43]_0 (\b1[1].ss_i_n_22 ),
        .\buffer_reg[44]_0 (\b1[1].ss_i_n_21 ),
        .\buffer_reg[45]_0 (\b1[1].ss_i_n_20 ),
        .\buffer_reg[46]_0 (\b1[1].ss_i_n_19 ),
        .\buffer_reg[47]_0 (\b1[1].ss_i_n_18 ),
        .\buffer_reg[48]_0 (\b1[1].ss_i_n_17 ),
        .\buffer_reg[49]_0 (\b1[1].ss_i_n_16 ),
        .\buffer_reg[4]_0 (\b1[1].ss_i_n_61 ),
        .\buffer_reg[50]_0 (\b1[1].ss_i_n_15 ),
        .\buffer_reg[51]_0 (\b1[1].ss_i_n_14 ),
        .\buffer_reg[52]_0 (\b1[1].ss_i_n_13 ),
        .\buffer_reg[53]_0 (\b1[1].ss_i_n_12 ),
        .\buffer_reg[54]_0 (\b1[1].ss_i_n_11 ),
        .\buffer_reg[55]_0 (\b1[1].ss_i_n_10 ),
        .\buffer_reg[56]_0 (\b1[1].ss_i_n_9 ),
        .\buffer_reg[57]_0 (\b1[1].ss_i_n_8 ),
        .\buffer_reg[58]_0 (\b1[1].ss_i_n_7 ),
        .\buffer_reg[59]_0 (\b1[1].ss_i_n_6 ),
        .\buffer_reg[5]_0 (\b1[1].ss_i_n_60 ),
        .\buffer_reg[60]_0 (\b1[1].ss_i_n_5 ),
        .\buffer_reg[61]_0 (\b1[1].ss_i_n_4 ),
        .\buffer_reg[62]_0 (\b1[1].ss_i_n_3 ),
        .\buffer_reg[63]_0 (\b1[1].ss_i_n_2 ),
        .\buffer_reg[6]_0 (\b1[1].ss_i_n_59 ),
        .\buffer_reg[7]_0 (\b1[1].ss_i_n_58 ),
        .\buffer_reg[8]_0 (\b1[1].ss_i_n_57 ),
        .\buffer_reg[9]_0 (\b1[1].ss_i_n_56 ),
        .have_data0(\b2[3].merge_i/have_data0 ),
        .have_data_reg_0(_trace_valid[1]),
        .have_data_reg_1(trace_rst),
        .ready_i_reg_reg_0(trace0_read),
        .ready_i_reg_reg_1(merge_tree_i_n_0),
        .trace0_data(trace0_data),
        .trace0_valid(trace0_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1 \b1[2].ss_i 
       (.D({\b1[2].ss_i_n_2 ,\b1[2].ss_i_n_3 ,\b1[2].ss_i_n_4 ,\b1[2].ss_i_n_5 ,\b1[2].ss_i_n_6 ,\b1[2].ss_i_n_7 ,\b1[2].ss_i_n_8 ,\b1[2].ss_i_n_9 ,\b1[2].ss_i_n_10 ,\b1[2].ss_i_n_11 ,\b1[2].ss_i_n_12 ,\b1[2].ss_i_n_13 ,\b1[2].ss_i_n_14 ,\b1[2].ss_i_n_15 ,\b1[2].ss_i_n_16 ,\b1[2].ss_i_n_17 ,\b1[2].ss_i_n_18 ,\b1[2].ss_i_n_19 ,\b1[2].ss_i_n_20 ,\b1[2].ss_i_n_21 ,\b1[2].ss_i_n_22 ,\b1[2].ss_i_n_23 ,\b1[2].ss_i_n_24 ,\b1[2].ss_i_n_25 ,\b1[2].ss_i_n_26 ,\b1[2].ss_i_n_27 ,\b1[2].ss_i_n_28 ,\b1[2].ss_i_n_29 ,\b1[2].ss_i_n_30 ,\b1[2].ss_i_n_31 ,\b1[2].ss_i_n_32 ,\b1[2].ss_i_n_33 ,\b1[2].ss_i_n_34 ,\b1[2].ss_i_n_35 ,\b1[2].ss_i_n_36 ,\b1[2].ss_i_n_37 ,\b1[2].ss_i_n_38 ,\b1[2].ss_i_n_39 ,\b1[2].ss_i_n_40 ,\b1[2].ss_i_n_41 ,\b1[2].ss_i_n_42 ,\b1[2].ss_i_n_43 ,\b1[2].ss_i_n_44 ,\b1[2].ss_i_n_45 ,\b1[2].ss_i_n_46 ,\b1[2].ss_i_n_47 ,\b1[2].ss_i_n_48 ,\b1[2].ss_i_n_49 ,\b1[2].ss_i_n_50 ,\b1[2].ss_i_n_51 ,\b1[2].ss_i_n_52 ,\b1[2].ss_i_n_53 ,\b1[2].ss_i_n_54 ,\b1[2].ss_i_n_55 ,\b1[2].ss_i_n_56 ,\b1[2].ss_i_n_57 ,\b1[2].ss_i_n_58 ,\b1[2].ss_i_n_59 ,\b1[2].ss_i_n_60 ,\b1[2].ss_i_n_61 ,\b1[2].ss_i_n_62 ,\b1[2].ss_i_n_63 ,\b1[2].ss_i_n_64 ,\b1[2].ss_i_n_65 }),
        .E(\b2[4].merge_i/data_i ),
        ._trace_valid(_trace_valid[2]),
        .\data_i_reg[0] (\b1[3].ss_i_n_66 ),
        .\data_i_reg[10] (\b1[3].ss_i_n_56 ),
        .\data_i_reg[11] (\b1[3].ss_i_n_55 ),
        .\data_i_reg[12] (\b1[3].ss_i_n_54 ),
        .\data_i_reg[13] (\b1[3].ss_i_n_53 ),
        .\data_i_reg[14] (\b1[3].ss_i_n_52 ),
        .\data_i_reg[15] (\b1[3].ss_i_n_51 ),
        .\data_i_reg[16] (\b1[3].ss_i_n_50 ),
        .\data_i_reg[17] (\b1[3].ss_i_n_49 ),
        .\data_i_reg[18] (\b1[3].ss_i_n_48 ),
        .\data_i_reg[19] (\b1[3].ss_i_n_47 ),
        .\data_i_reg[1] (\b1[3].ss_i_n_65 ),
        .\data_i_reg[20] (\b1[3].ss_i_n_46 ),
        .\data_i_reg[21] (\b1[3].ss_i_n_45 ),
        .\data_i_reg[22] (\b1[3].ss_i_n_44 ),
        .\data_i_reg[23] (\b1[3].ss_i_n_43 ),
        .\data_i_reg[24] (\b1[3].ss_i_n_42 ),
        .\data_i_reg[25] (\b1[3].ss_i_n_41 ),
        .\data_i_reg[26] (\b1[3].ss_i_n_40 ),
        .\data_i_reg[27] (\b1[3].ss_i_n_39 ),
        .\data_i_reg[28] (\b1[3].ss_i_n_38 ),
        .\data_i_reg[29] (\b1[3].ss_i_n_37 ),
        .\data_i_reg[2] (\b1[3].ss_i_n_64 ),
        .\data_i_reg[30] (\b1[3].ss_i_n_36 ),
        .\data_i_reg[31] (\b1[3].ss_i_n_35 ),
        .\data_i_reg[32] (\b1[3].ss_i_n_34 ),
        .\data_i_reg[33] (\b1[3].ss_i_n_33 ),
        .\data_i_reg[34] (\b1[3].ss_i_n_32 ),
        .\data_i_reg[35] (\b1[3].ss_i_n_31 ),
        .\data_i_reg[36] (\b1[3].ss_i_n_30 ),
        .\data_i_reg[37] (\b1[3].ss_i_n_29 ),
        .\data_i_reg[38] (\b1[3].ss_i_n_28 ),
        .\data_i_reg[39] (\b1[3].ss_i_n_27 ),
        .\data_i_reg[3] (\b1[3].ss_i_n_63 ),
        .\data_i_reg[40] (\b1[3].ss_i_n_26 ),
        .\data_i_reg[41] (\b1[3].ss_i_n_25 ),
        .\data_i_reg[42] (\b1[3].ss_i_n_24 ),
        .\data_i_reg[43] (\b1[3].ss_i_n_23 ),
        .\data_i_reg[44] (\b1[3].ss_i_n_22 ),
        .\data_i_reg[45] (\b1[3].ss_i_n_21 ),
        .\data_i_reg[46] (\b1[3].ss_i_n_20 ),
        .\data_i_reg[47] (\b1[3].ss_i_n_19 ),
        .\data_i_reg[48] (\b1[3].ss_i_n_18 ),
        .\data_i_reg[49] (\b1[3].ss_i_n_17 ),
        .\data_i_reg[4] (\b1[3].ss_i_n_62 ),
        .\data_i_reg[50] (\b1[3].ss_i_n_16 ),
        .\data_i_reg[51] (\b1[3].ss_i_n_15 ),
        .\data_i_reg[52] (\b1[3].ss_i_n_14 ),
        .\data_i_reg[53] (\b1[3].ss_i_n_13 ),
        .\data_i_reg[54] (\b1[3].ss_i_n_12 ),
        .\data_i_reg[55] (\b1[3].ss_i_n_11 ),
        .\data_i_reg[56] (\b1[3].ss_i_n_10 ),
        .\data_i_reg[57] (\b1[3].ss_i_n_9 ),
        .\data_i_reg[58] (\b1[3].ss_i_n_8 ),
        .\data_i_reg[59] (\b1[3].ss_i_n_7 ),
        .\data_i_reg[5] (\b1[3].ss_i_n_61 ),
        .\data_i_reg[60] (\b1[3].ss_i_n_6 ),
        .\data_i_reg[61] (\b1[3].ss_i_n_5 ),
        .\data_i_reg[62] (\b1[3].ss_i_n_4 ),
        .\data_i_reg[63] (\b1[3].ss_i_n_3 ),
        .\data_i_reg[6] (\b1[3].ss_i_n_60 ),
        .\data_i_reg[7] (\b1[3].ss_i_n_59 ),
        .\data_i_reg[8] (\b1[3].ss_i_n_58 ),
        .\data_i_reg[9] (\b1[3].ss_i_n_57 ),
        .have_data0(\b2[4].merge_i/have_data0 ),
        .have_data_reg_0(trace_rst),
        .ready_i_reg_reg_0(trace1_read),
        .ready_i_reg_reg_1(merge_tree_i_n_1),
        .ready_i_reg_reg_2(_trace_valid[3]),
        .trace1_data(trace1_data),
        .trace1_valid(trace1_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2 \b1[3].ss_i 
       (._trace_valid(_trace_valid[2]),
        .\buffer_reg[0]_0 (\b1[3].ss_i_n_66 ),
        .\buffer_reg[10]_0 (\b1[3].ss_i_n_56 ),
        .\buffer_reg[11]_0 (\b1[3].ss_i_n_55 ),
        .\buffer_reg[12]_0 (\b1[3].ss_i_n_54 ),
        .\buffer_reg[13]_0 (\b1[3].ss_i_n_53 ),
        .\buffer_reg[14]_0 (\b1[3].ss_i_n_52 ),
        .\buffer_reg[15]_0 (\b1[3].ss_i_n_51 ),
        .\buffer_reg[16]_0 (\b1[3].ss_i_n_50 ),
        .\buffer_reg[17]_0 (\b1[3].ss_i_n_49 ),
        .\buffer_reg[18]_0 (\b1[3].ss_i_n_48 ),
        .\buffer_reg[19]_0 (\b1[3].ss_i_n_47 ),
        .\buffer_reg[1]_0 (\b1[3].ss_i_n_65 ),
        .\buffer_reg[20]_0 (\b1[3].ss_i_n_46 ),
        .\buffer_reg[21]_0 (\b1[3].ss_i_n_45 ),
        .\buffer_reg[22]_0 (\b1[3].ss_i_n_44 ),
        .\buffer_reg[23]_0 (\b1[3].ss_i_n_43 ),
        .\buffer_reg[24]_0 (\b1[3].ss_i_n_42 ),
        .\buffer_reg[25]_0 (\b1[3].ss_i_n_41 ),
        .\buffer_reg[26]_0 (\b1[3].ss_i_n_40 ),
        .\buffer_reg[27]_0 (\b1[3].ss_i_n_39 ),
        .\buffer_reg[28]_0 (\b1[3].ss_i_n_38 ),
        .\buffer_reg[29]_0 (\b1[3].ss_i_n_37 ),
        .\buffer_reg[2]_0 (\b1[3].ss_i_n_64 ),
        .\buffer_reg[30]_0 (\b1[3].ss_i_n_36 ),
        .\buffer_reg[31]_0 (\b1[3].ss_i_n_35 ),
        .\buffer_reg[32]_0 (\b1[3].ss_i_n_34 ),
        .\buffer_reg[33]_0 (\b1[3].ss_i_n_33 ),
        .\buffer_reg[34]_0 (\b1[3].ss_i_n_32 ),
        .\buffer_reg[35]_0 (\b1[3].ss_i_n_31 ),
        .\buffer_reg[36]_0 (\b1[3].ss_i_n_30 ),
        .\buffer_reg[37]_0 (\b1[3].ss_i_n_29 ),
        .\buffer_reg[38]_0 (\b1[3].ss_i_n_28 ),
        .\buffer_reg[39]_0 (\b1[3].ss_i_n_27 ),
        .\buffer_reg[3]_0 (\b1[3].ss_i_n_63 ),
        .\buffer_reg[40]_0 (\b1[3].ss_i_n_26 ),
        .\buffer_reg[41]_0 (\b1[3].ss_i_n_25 ),
        .\buffer_reg[42]_0 (\b1[3].ss_i_n_24 ),
        .\buffer_reg[43]_0 (\b1[3].ss_i_n_23 ),
        .\buffer_reg[44]_0 (\b1[3].ss_i_n_22 ),
        .\buffer_reg[45]_0 (\b1[3].ss_i_n_21 ),
        .\buffer_reg[46]_0 (\b1[3].ss_i_n_20 ),
        .\buffer_reg[47]_0 (\b1[3].ss_i_n_19 ),
        .\buffer_reg[48]_0 (\b1[3].ss_i_n_18 ),
        .\buffer_reg[49]_0 (\b1[3].ss_i_n_17 ),
        .\buffer_reg[4]_0 (\b1[3].ss_i_n_62 ),
        .\buffer_reg[50]_0 (\b1[3].ss_i_n_16 ),
        .\buffer_reg[51]_0 (\b1[3].ss_i_n_15 ),
        .\buffer_reg[52]_0 (\b1[3].ss_i_n_14 ),
        .\buffer_reg[53]_0 (\b1[3].ss_i_n_13 ),
        .\buffer_reg[54]_0 (\b1[3].ss_i_n_12 ),
        .\buffer_reg[55]_0 (\b1[3].ss_i_n_11 ),
        .\buffer_reg[56]_0 (\b1[3].ss_i_n_10 ),
        .\buffer_reg[57]_0 (\b1[3].ss_i_n_9 ),
        .\buffer_reg[58]_0 (\b1[3].ss_i_n_8 ),
        .\buffer_reg[59]_0 (\b1[3].ss_i_n_7 ),
        .\buffer_reg[5]_0 (\b1[3].ss_i_n_61 ),
        .\buffer_reg[60]_0 (\b1[3].ss_i_n_6 ),
        .\buffer_reg[61]_0 (\b1[3].ss_i_n_5 ),
        .\buffer_reg[62]_0 (\b1[3].ss_i_n_4 ),
        .\buffer_reg[63]_0 (\b1[3].ss_i_n_3 ),
        .\buffer_reg[6]_0 (\b1[3].ss_i_n_60 ),
        .\buffer_reg[7]_0 (\b1[3].ss_i_n_59 ),
        .\buffer_reg[8]_0 (\b1[3].ss_i_n_58 ),
        .\buffer_reg[9]_0 (\b1[3].ss_i_n_57 ),
        .have_data0(\b2[4].merge_i/have_data0 ),
        .have_data02_out(\b2[4].merge_i/have_data02_out ),
        .have_data_reg_0(_trace_valid[3]),
        .have_data_reg_1(trace_rst),
        .ready_i_reg_reg_0(trace2_read),
        .ready_i_reg_reg_1(merge_tree_i_n_1),
        .trace2_data(trace2_data),
        .trace2_valid(trace2_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3 \b1[4].ss_i 
       (.D({\b1[4].ss_i_n_2 ,\b1[4].ss_i_n_3 ,\b1[4].ss_i_n_4 ,\b1[4].ss_i_n_5 ,\b1[4].ss_i_n_6 ,\b1[4].ss_i_n_7 ,\b1[4].ss_i_n_8 ,\b1[4].ss_i_n_9 ,\b1[4].ss_i_n_10 ,\b1[4].ss_i_n_11 ,\b1[4].ss_i_n_12 ,\b1[4].ss_i_n_13 ,\b1[4].ss_i_n_14 ,\b1[4].ss_i_n_15 ,\b1[4].ss_i_n_16 ,\b1[4].ss_i_n_17 ,\b1[4].ss_i_n_18 ,\b1[4].ss_i_n_19 ,\b1[4].ss_i_n_20 ,\b1[4].ss_i_n_21 ,\b1[4].ss_i_n_22 ,\b1[4].ss_i_n_23 ,\b1[4].ss_i_n_24 ,\b1[4].ss_i_n_25 ,\b1[4].ss_i_n_26 ,\b1[4].ss_i_n_27 ,\b1[4].ss_i_n_28 ,\b1[4].ss_i_n_29 ,\b1[4].ss_i_n_30 ,\b1[4].ss_i_n_31 ,\b1[4].ss_i_n_32 ,\b1[4].ss_i_n_33 ,\b1[4].ss_i_n_34 ,\b1[4].ss_i_n_35 ,\b1[4].ss_i_n_36 ,\b1[4].ss_i_n_37 ,\b1[4].ss_i_n_38 ,\b1[4].ss_i_n_39 ,\b1[4].ss_i_n_40 ,\b1[4].ss_i_n_41 ,\b1[4].ss_i_n_42 ,\b1[4].ss_i_n_43 ,\b1[4].ss_i_n_44 ,\b1[4].ss_i_n_45 ,\b1[4].ss_i_n_46 ,\b1[4].ss_i_n_47 ,\b1[4].ss_i_n_48 ,\b1[4].ss_i_n_49 ,\b1[4].ss_i_n_50 ,\b1[4].ss_i_n_51 ,\b1[4].ss_i_n_52 ,\b1[4].ss_i_n_53 ,\b1[4].ss_i_n_54 ,\b1[4].ss_i_n_55 ,\b1[4].ss_i_n_56 ,\b1[4].ss_i_n_57 ,\b1[4].ss_i_n_58 ,\b1[4].ss_i_n_59 ,\b1[4].ss_i_n_60 ,\b1[4].ss_i_n_61 ,\b1[4].ss_i_n_62 ,\b1[4].ss_i_n_63 ,\b1[4].ss_i_n_64 ,\b1[4].ss_i_n_65 }),
        ._trace_valid(_trace_valid[4]),
        .\data_i_reg[0] (\b1[5].ss_i_n_66 ),
        .\data_i_reg[10] (\b1[5].ss_i_n_56 ),
        .\data_i_reg[11] (\b1[5].ss_i_n_55 ),
        .\data_i_reg[12] (\b1[5].ss_i_n_54 ),
        .\data_i_reg[13] (\b1[5].ss_i_n_53 ),
        .\data_i_reg[14] (\b1[5].ss_i_n_52 ),
        .\data_i_reg[15] (\b1[5].ss_i_n_51 ),
        .\data_i_reg[16] (\b1[5].ss_i_n_50 ),
        .\data_i_reg[17] (\b1[5].ss_i_n_49 ),
        .\data_i_reg[18] (\b1[5].ss_i_n_48 ),
        .\data_i_reg[19] (\b1[5].ss_i_n_47 ),
        .\data_i_reg[1] (\b1[5].ss_i_n_65 ),
        .\data_i_reg[20] (\b1[5].ss_i_n_46 ),
        .\data_i_reg[21] (\b1[5].ss_i_n_45 ),
        .\data_i_reg[22] (\b1[5].ss_i_n_44 ),
        .\data_i_reg[23] (\b1[5].ss_i_n_43 ),
        .\data_i_reg[24] (\b1[5].ss_i_n_42 ),
        .\data_i_reg[25] (\b1[5].ss_i_n_41 ),
        .\data_i_reg[26] (\b1[5].ss_i_n_40 ),
        .\data_i_reg[27] (\b1[5].ss_i_n_39 ),
        .\data_i_reg[28] (\b1[5].ss_i_n_38 ),
        .\data_i_reg[29] (\b1[5].ss_i_n_37 ),
        .\data_i_reg[2] (\b1[5].ss_i_n_64 ),
        .\data_i_reg[30] (\b1[5].ss_i_n_36 ),
        .\data_i_reg[31] (\b1[5].ss_i_n_35 ),
        .\data_i_reg[32] (\b1[5].ss_i_n_34 ),
        .\data_i_reg[33] (\b1[5].ss_i_n_33 ),
        .\data_i_reg[34] (\b1[5].ss_i_n_32 ),
        .\data_i_reg[35] (\b1[5].ss_i_n_31 ),
        .\data_i_reg[36] (\b1[5].ss_i_n_30 ),
        .\data_i_reg[37] (\b1[5].ss_i_n_29 ),
        .\data_i_reg[38] (\b1[5].ss_i_n_28 ),
        .\data_i_reg[39] (\b1[5].ss_i_n_27 ),
        .\data_i_reg[3] (\b1[5].ss_i_n_63 ),
        .\data_i_reg[40] (\b1[5].ss_i_n_26 ),
        .\data_i_reg[41] (\b1[5].ss_i_n_25 ),
        .\data_i_reg[42] (\b1[5].ss_i_n_24 ),
        .\data_i_reg[43] (\b1[5].ss_i_n_23 ),
        .\data_i_reg[44] (\b1[5].ss_i_n_22 ),
        .\data_i_reg[45] (\b1[5].ss_i_n_21 ),
        .\data_i_reg[46] (\b1[5].ss_i_n_20 ),
        .\data_i_reg[47] (\b1[5].ss_i_n_19 ),
        .\data_i_reg[48] (\b1[5].ss_i_n_18 ),
        .\data_i_reg[49] (\b1[5].ss_i_n_17 ),
        .\data_i_reg[4] (\b1[5].ss_i_n_62 ),
        .\data_i_reg[50] (\b1[5].ss_i_n_16 ),
        .\data_i_reg[51] (\b1[5].ss_i_n_15 ),
        .\data_i_reg[52] (\b1[5].ss_i_n_14 ),
        .\data_i_reg[53] (\b1[5].ss_i_n_13 ),
        .\data_i_reg[54] (\b1[5].ss_i_n_12 ),
        .\data_i_reg[55] (\b1[5].ss_i_n_11 ),
        .\data_i_reg[56] (\b1[5].ss_i_n_10 ),
        .\data_i_reg[57] (\b1[5].ss_i_n_9 ),
        .\data_i_reg[58] (\b1[5].ss_i_n_8 ),
        .\data_i_reg[59] (\b1[5].ss_i_n_7 ),
        .\data_i_reg[5] (\b1[5].ss_i_n_61 ),
        .\data_i_reg[60] (\b1[5].ss_i_n_6 ),
        .\data_i_reg[61] (\b1[5].ss_i_n_5 ),
        .\data_i_reg[62] (\b1[5].ss_i_n_4 ),
        .\data_i_reg[63] (\b1[5].ss_i_n_3 ),
        .\data_i_reg[6] (\b1[5].ss_i_n_60 ),
        .\data_i_reg[7] (\b1[5].ss_i_n_59 ),
        .\data_i_reg[8] (\b1[5].ss_i_n_58 ),
        .\data_i_reg[9] (\b1[5].ss_i_n_57 ),
        .have_data0(\b2[5].merge_i/have_data0 ),
        .have_data_reg_0(trace_rst),
        .ready_i_reg_reg_0(trace3_read),
        .ready_i_reg_reg_1(merge_tree_i_n_2),
        .ready_i_reg_reg_2(_trace_valid[5]),
        .trace3_data(trace3_data),
        .trace3_valid(trace3_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4 \b1[5].ss_i 
       (._trace_valid(_trace_valid[4]),
        .\buffer_reg[0]_0 (\b1[5].ss_i_n_66 ),
        .\buffer_reg[10]_0 (\b1[5].ss_i_n_56 ),
        .\buffer_reg[11]_0 (\b1[5].ss_i_n_55 ),
        .\buffer_reg[12]_0 (\b1[5].ss_i_n_54 ),
        .\buffer_reg[13]_0 (\b1[5].ss_i_n_53 ),
        .\buffer_reg[14]_0 (\b1[5].ss_i_n_52 ),
        .\buffer_reg[15]_0 (\b1[5].ss_i_n_51 ),
        .\buffer_reg[16]_0 (\b1[5].ss_i_n_50 ),
        .\buffer_reg[17]_0 (\b1[5].ss_i_n_49 ),
        .\buffer_reg[18]_0 (\b1[5].ss_i_n_48 ),
        .\buffer_reg[19]_0 (\b1[5].ss_i_n_47 ),
        .\buffer_reg[1]_0 (\b1[5].ss_i_n_65 ),
        .\buffer_reg[20]_0 (\b1[5].ss_i_n_46 ),
        .\buffer_reg[21]_0 (\b1[5].ss_i_n_45 ),
        .\buffer_reg[22]_0 (\b1[5].ss_i_n_44 ),
        .\buffer_reg[23]_0 (\b1[5].ss_i_n_43 ),
        .\buffer_reg[24]_0 (\b1[5].ss_i_n_42 ),
        .\buffer_reg[25]_0 (\b1[5].ss_i_n_41 ),
        .\buffer_reg[26]_0 (\b1[5].ss_i_n_40 ),
        .\buffer_reg[27]_0 (\b1[5].ss_i_n_39 ),
        .\buffer_reg[28]_0 (\b1[5].ss_i_n_38 ),
        .\buffer_reg[29]_0 (\b1[5].ss_i_n_37 ),
        .\buffer_reg[2]_0 (\b1[5].ss_i_n_64 ),
        .\buffer_reg[30]_0 (\b1[5].ss_i_n_36 ),
        .\buffer_reg[31]_0 (\b1[5].ss_i_n_35 ),
        .\buffer_reg[32]_0 (\b1[5].ss_i_n_34 ),
        .\buffer_reg[33]_0 (\b1[5].ss_i_n_33 ),
        .\buffer_reg[34]_0 (\b1[5].ss_i_n_32 ),
        .\buffer_reg[35]_0 (\b1[5].ss_i_n_31 ),
        .\buffer_reg[36]_0 (\b1[5].ss_i_n_30 ),
        .\buffer_reg[37]_0 (\b1[5].ss_i_n_29 ),
        .\buffer_reg[38]_0 (\b1[5].ss_i_n_28 ),
        .\buffer_reg[39]_0 (\b1[5].ss_i_n_27 ),
        .\buffer_reg[3]_0 (\b1[5].ss_i_n_63 ),
        .\buffer_reg[40]_0 (\b1[5].ss_i_n_26 ),
        .\buffer_reg[41]_0 (\b1[5].ss_i_n_25 ),
        .\buffer_reg[42]_0 (\b1[5].ss_i_n_24 ),
        .\buffer_reg[43]_0 (\b1[5].ss_i_n_23 ),
        .\buffer_reg[44]_0 (\b1[5].ss_i_n_22 ),
        .\buffer_reg[45]_0 (\b1[5].ss_i_n_21 ),
        .\buffer_reg[46]_0 (\b1[5].ss_i_n_20 ),
        .\buffer_reg[47]_0 (\b1[5].ss_i_n_19 ),
        .\buffer_reg[48]_0 (\b1[5].ss_i_n_18 ),
        .\buffer_reg[49]_0 (\b1[5].ss_i_n_17 ),
        .\buffer_reg[4]_0 (\b1[5].ss_i_n_62 ),
        .\buffer_reg[50]_0 (\b1[5].ss_i_n_16 ),
        .\buffer_reg[51]_0 (\b1[5].ss_i_n_15 ),
        .\buffer_reg[52]_0 (\b1[5].ss_i_n_14 ),
        .\buffer_reg[53]_0 (\b1[5].ss_i_n_13 ),
        .\buffer_reg[54]_0 (\b1[5].ss_i_n_12 ),
        .\buffer_reg[55]_0 (\b1[5].ss_i_n_11 ),
        .\buffer_reg[56]_0 (\b1[5].ss_i_n_10 ),
        .\buffer_reg[57]_0 (\b1[5].ss_i_n_9 ),
        .\buffer_reg[58]_0 (\b1[5].ss_i_n_8 ),
        .\buffer_reg[59]_0 (\b1[5].ss_i_n_7 ),
        .\buffer_reg[5]_0 (\b1[5].ss_i_n_61 ),
        .\buffer_reg[60]_0 (\b1[5].ss_i_n_6 ),
        .\buffer_reg[61]_0 (\b1[5].ss_i_n_5 ),
        .\buffer_reg[62]_0 (\b1[5].ss_i_n_4 ),
        .\buffer_reg[63]_0 (\b1[5].ss_i_n_3 ),
        .\buffer_reg[6]_0 (\b1[5].ss_i_n_60 ),
        .\buffer_reg[7]_0 (\b1[5].ss_i_n_59 ),
        .\buffer_reg[8]_0 (\b1[5].ss_i_n_58 ),
        .\buffer_reg[9]_0 (\b1[5].ss_i_n_57 ),
        .have_data0(\b2[5].merge_i/have_data0 ),
        .have_data02_out(\b2[5].merge_i/have_data02_out ),
        .have_data_reg_0(_trace_valid[5]),
        .have_data_reg_1(trace_rst),
        .ready_i_reg_reg_0(trace4_read),
        .ready_i_reg_reg_1(merge_tree_i_n_2),
        .trace4_data(trace4_data),
        .trace4_valid(trace4_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_5 \b1[6].ss_i 
       (.D({\b1[6].ss_i_n_2 ,\b1[6].ss_i_n_3 ,\b1[6].ss_i_n_4 ,\b1[6].ss_i_n_5 ,\b1[6].ss_i_n_6 ,\b1[6].ss_i_n_7 ,\b1[6].ss_i_n_8 ,\b1[6].ss_i_n_9 ,\b1[6].ss_i_n_10 ,\b1[6].ss_i_n_11 ,\b1[6].ss_i_n_12 ,\b1[6].ss_i_n_13 ,\b1[6].ss_i_n_14 ,\b1[6].ss_i_n_15 ,\b1[6].ss_i_n_16 ,\b1[6].ss_i_n_17 ,\b1[6].ss_i_n_18 ,\b1[6].ss_i_n_19 ,\b1[6].ss_i_n_20 ,\b1[6].ss_i_n_21 ,\b1[6].ss_i_n_22 ,\b1[6].ss_i_n_23 ,\b1[6].ss_i_n_24 ,\b1[6].ss_i_n_25 ,\b1[6].ss_i_n_26 ,\b1[6].ss_i_n_27 ,\b1[6].ss_i_n_28 ,\b1[6].ss_i_n_29 ,\b1[6].ss_i_n_30 ,\b1[6].ss_i_n_31 ,\b1[6].ss_i_n_32 ,\b1[6].ss_i_n_33 ,\b1[6].ss_i_n_34 ,\b1[6].ss_i_n_35 ,\b1[6].ss_i_n_36 ,\b1[6].ss_i_n_37 ,\b1[6].ss_i_n_38 ,\b1[6].ss_i_n_39 ,\b1[6].ss_i_n_40 ,\b1[6].ss_i_n_41 ,\b1[6].ss_i_n_42 ,\b1[6].ss_i_n_43 ,\b1[6].ss_i_n_44 ,\b1[6].ss_i_n_45 ,\b1[6].ss_i_n_46 ,\b1[6].ss_i_n_47 ,\b1[6].ss_i_n_48 ,\b1[6].ss_i_n_49 ,\b1[6].ss_i_n_50 ,\b1[6].ss_i_n_51 ,\b1[6].ss_i_n_52 ,\b1[6].ss_i_n_53 ,\b1[6].ss_i_n_54 ,\b1[6].ss_i_n_55 ,\b1[6].ss_i_n_56 ,\b1[6].ss_i_n_57 ,\b1[6].ss_i_n_58 ,\b1[6].ss_i_n_59 ,\b1[6].ss_i_n_60 ,\b1[6].ss_i_n_61 ,\b1[6].ss_i_n_62 ,\b1[6].ss_i_n_63 ,\b1[6].ss_i_n_64 ,\b1[6].ss_i_n_65 }),
        .E(\b2[6].merge_i/data_i ),
        ._trace_valid(_trace_valid[6]),
        .\data_i_reg[0] (\b1[7].ss_i_n_66 ),
        .\data_i_reg[10] (\b1[7].ss_i_n_56 ),
        .\data_i_reg[11] (\b1[7].ss_i_n_55 ),
        .\data_i_reg[12] (\b1[7].ss_i_n_54 ),
        .\data_i_reg[13] (\b1[7].ss_i_n_53 ),
        .\data_i_reg[14] (\b1[7].ss_i_n_52 ),
        .\data_i_reg[15] (\b1[7].ss_i_n_51 ),
        .\data_i_reg[16] (\b1[7].ss_i_n_50 ),
        .\data_i_reg[17] (\b1[7].ss_i_n_49 ),
        .\data_i_reg[18] (\b1[7].ss_i_n_48 ),
        .\data_i_reg[19] (\b1[7].ss_i_n_47 ),
        .\data_i_reg[1] (\b1[7].ss_i_n_65 ),
        .\data_i_reg[20] (\b1[7].ss_i_n_46 ),
        .\data_i_reg[21] (\b1[7].ss_i_n_45 ),
        .\data_i_reg[22] (\b1[7].ss_i_n_44 ),
        .\data_i_reg[23] (\b1[7].ss_i_n_43 ),
        .\data_i_reg[24] (\b1[7].ss_i_n_42 ),
        .\data_i_reg[25] (\b1[7].ss_i_n_41 ),
        .\data_i_reg[26] (\b1[7].ss_i_n_40 ),
        .\data_i_reg[27] (\b1[7].ss_i_n_39 ),
        .\data_i_reg[28] (\b1[7].ss_i_n_38 ),
        .\data_i_reg[29] (\b1[7].ss_i_n_37 ),
        .\data_i_reg[2] (\b1[7].ss_i_n_64 ),
        .\data_i_reg[30] (\b1[7].ss_i_n_36 ),
        .\data_i_reg[31] (\b1[7].ss_i_n_35 ),
        .\data_i_reg[32] (\b1[7].ss_i_n_34 ),
        .\data_i_reg[33] (\b1[7].ss_i_n_33 ),
        .\data_i_reg[34] (\b1[7].ss_i_n_32 ),
        .\data_i_reg[35] (\b1[7].ss_i_n_31 ),
        .\data_i_reg[36] (\b1[7].ss_i_n_30 ),
        .\data_i_reg[37] (\b1[7].ss_i_n_29 ),
        .\data_i_reg[38] (\b1[7].ss_i_n_28 ),
        .\data_i_reg[39] (\b1[7].ss_i_n_27 ),
        .\data_i_reg[3] (\b1[7].ss_i_n_63 ),
        .\data_i_reg[40] (\b1[7].ss_i_n_26 ),
        .\data_i_reg[41] (\b1[7].ss_i_n_25 ),
        .\data_i_reg[42] (\b1[7].ss_i_n_24 ),
        .\data_i_reg[43] (\b1[7].ss_i_n_23 ),
        .\data_i_reg[44] (\b1[7].ss_i_n_22 ),
        .\data_i_reg[45] (\b1[7].ss_i_n_21 ),
        .\data_i_reg[46] (\b1[7].ss_i_n_20 ),
        .\data_i_reg[47] (\b1[7].ss_i_n_19 ),
        .\data_i_reg[48] (\b1[7].ss_i_n_18 ),
        .\data_i_reg[49] (\b1[7].ss_i_n_17 ),
        .\data_i_reg[4] (\b1[7].ss_i_n_62 ),
        .\data_i_reg[50] (\b1[7].ss_i_n_16 ),
        .\data_i_reg[51] (\b1[7].ss_i_n_15 ),
        .\data_i_reg[52] (\b1[7].ss_i_n_14 ),
        .\data_i_reg[53] (\b1[7].ss_i_n_13 ),
        .\data_i_reg[54] (\b1[7].ss_i_n_12 ),
        .\data_i_reg[55] (\b1[7].ss_i_n_11 ),
        .\data_i_reg[56] (\b1[7].ss_i_n_10 ),
        .\data_i_reg[57] (\b1[7].ss_i_n_9 ),
        .\data_i_reg[58] (\b1[7].ss_i_n_8 ),
        .\data_i_reg[59] (\b1[7].ss_i_n_7 ),
        .\data_i_reg[5] (\b1[7].ss_i_n_61 ),
        .\data_i_reg[60] (\b1[7].ss_i_n_6 ),
        .\data_i_reg[61] (\b1[7].ss_i_n_5 ),
        .\data_i_reg[62] (\b1[7].ss_i_n_4 ),
        .\data_i_reg[63] (\b1[7].ss_i_n_3 ),
        .\data_i_reg[6] (\b1[7].ss_i_n_60 ),
        .\data_i_reg[7] (\b1[7].ss_i_n_59 ),
        .\data_i_reg[8] (\b1[7].ss_i_n_58 ),
        .\data_i_reg[9] (\b1[7].ss_i_n_57 ),
        .have_data0(\b2[6].merge_i/have_data0 ),
        .have_data_reg_0(trace_rst),
        .ready_i_reg_reg_0(trace5_read),
        .ready_i_reg_reg_1(merge_tree_i_n_3),
        .ready_i_reg_reg_2(_trace_valid[7]),
        .trace5_data(trace5_data),
        .trace5_valid(trace5_valid),
        .trace_clk(trace_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_6 \b1[7].ss_i 
       (._trace_valid(_trace_valid[6]),
        .\buffer_reg[0]_0 (\b1[7].ss_i_n_66 ),
        .\buffer_reg[10]_0 (\b1[7].ss_i_n_56 ),
        .\buffer_reg[11]_0 (\b1[7].ss_i_n_55 ),
        .\buffer_reg[12]_0 (\b1[7].ss_i_n_54 ),
        .\buffer_reg[13]_0 (\b1[7].ss_i_n_53 ),
        .\buffer_reg[14]_0 (\b1[7].ss_i_n_52 ),
        .\buffer_reg[15]_0 (\b1[7].ss_i_n_51 ),
        .\buffer_reg[16]_0 (\b1[7].ss_i_n_50 ),
        .\buffer_reg[17]_0 (\b1[7].ss_i_n_49 ),
        .\buffer_reg[18]_0 (\b1[7].ss_i_n_48 ),
        .\buffer_reg[19]_0 (\b1[7].ss_i_n_47 ),
        .\buffer_reg[1]_0 (\b1[7].ss_i_n_65 ),
        .\buffer_reg[20]_0 (\b1[7].ss_i_n_46 ),
        .\buffer_reg[21]_0 (\b1[7].ss_i_n_45 ),
        .\buffer_reg[22]_0 (\b1[7].ss_i_n_44 ),
        .\buffer_reg[23]_0 (\b1[7].ss_i_n_43 ),
        .\buffer_reg[24]_0 (\b1[7].ss_i_n_42 ),
        .\buffer_reg[25]_0 (\b1[7].ss_i_n_41 ),
        .\buffer_reg[26]_0 (\b1[7].ss_i_n_40 ),
        .\buffer_reg[27]_0 (\b1[7].ss_i_n_39 ),
        .\buffer_reg[28]_0 (\b1[7].ss_i_n_38 ),
        .\buffer_reg[29]_0 (\b1[7].ss_i_n_37 ),
        .\buffer_reg[2]_0 (\b1[7].ss_i_n_64 ),
        .\buffer_reg[30]_0 (\b1[7].ss_i_n_36 ),
        .\buffer_reg[31]_0 (\b1[7].ss_i_n_35 ),
        .\buffer_reg[32]_0 (\b1[7].ss_i_n_34 ),
        .\buffer_reg[33]_0 (\b1[7].ss_i_n_33 ),
        .\buffer_reg[34]_0 (\b1[7].ss_i_n_32 ),
        .\buffer_reg[35]_0 (\b1[7].ss_i_n_31 ),
        .\buffer_reg[36]_0 (\b1[7].ss_i_n_30 ),
        .\buffer_reg[37]_0 (\b1[7].ss_i_n_29 ),
        .\buffer_reg[38]_0 (\b1[7].ss_i_n_28 ),
        .\buffer_reg[39]_0 (\b1[7].ss_i_n_27 ),
        .\buffer_reg[3]_0 (\b1[7].ss_i_n_63 ),
        .\buffer_reg[40]_0 (\b1[7].ss_i_n_26 ),
        .\buffer_reg[41]_0 (\b1[7].ss_i_n_25 ),
        .\buffer_reg[42]_0 (\b1[7].ss_i_n_24 ),
        .\buffer_reg[43]_0 (\b1[7].ss_i_n_23 ),
        .\buffer_reg[44]_0 (\b1[7].ss_i_n_22 ),
        .\buffer_reg[45]_0 (\b1[7].ss_i_n_21 ),
        .\buffer_reg[46]_0 (\b1[7].ss_i_n_20 ),
        .\buffer_reg[47]_0 (\b1[7].ss_i_n_19 ),
        .\buffer_reg[48]_0 (\b1[7].ss_i_n_18 ),
        .\buffer_reg[49]_0 (\b1[7].ss_i_n_17 ),
        .\buffer_reg[4]_0 (\b1[7].ss_i_n_62 ),
        .\buffer_reg[50]_0 (\b1[7].ss_i_n_16 ),
        .\buffer_reg[51]_0 (\b1[7].ss_i_n_15 ),
        .\buffer_reg[52]_0 (\b1[7].ss_i_n_14 ),
        .\buffer_reg[53]_0 (\b1[7].ss_i_n_13 ),
        .\buffer_reg[54]_0 (\b1[7].ss_i_n_12 ),
        .\buffer_reg[55]_0 (\b1[7].ss_i_n_11 ),
        .\buffer_reg[56]_0 (\b1[7].ss_i_n_10 ),
        .\buffer_reg[57]_0 (\b1[7].ss_i_n_9 ),
        .\buffer_reg[58]_0 (\b1[7].ss_i_n_8 ),
        .\buffer_reg[59]_0 (\b1[7].ss_i_n_7 ),
        .\buffer_reg[5]_0 (\b1[7].ss_i_n_61 ),
        .\buffer_reg[60]_0 (\b1[7].ss_i_n_6 ),
        .\buffer_reg[61]_0 (\b1[7].ss_i_n_5 ),
        .\buffer_reg[62]_0 (\b1[7].ss_i_n_4 ),
        .\buffer_reg[63]_0 (\b1[7].ss_i_n_3 ),
        .\buffer_reg[6]_0 (\b1[7].ss_i_n_60 ),
        .\buffer_reg[7]_0 (\b1[7].ss_i_n_59 ),
        .\buffer_reg[8]_0 (\b1[7].ss_i_n_58 ),
        .\buffer_reg[9]_0 (\b1[7].ss_i_n_57 ),
        .have_data0(\b2[6].merge_i/have_data0 ),
        .have_data02_out(\b2[6].merge_i/have_data02_out ),
        .have_data_reg_0(_trace_valid[7]),
        .have_data_reg_1(trace_rst),
        .ready_i_reg_reg_0(trace6_read),
        .ready_i_reg_reg_1(merge_tree_i_n_3),
        .trace6_data(trace6_data),
        .trace6_valid(trace6_valid),
        .trace_clk(trace_clk));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[7]_i_2 
       (.I0(trace6_counter[0]),
        .O(\counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    counter_overflow_i_1
       (.I0(sw_reset_mon),
        .I1(mon_resetn),
        .O(counter_overflow_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_10
       (.I0(trace6_counter[5]),
        .I1(trace6_counter[6]),
        .I2(trace6_counter[3]),
        .I3(trace6_counter[4]),
        .I4(trace6_counter[8]),
        .I5(trace6_counter[7]),
        .O(counter_overflow_i_10_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    counter_overflow_i_2
       (.I0(counter_overflow_i_3_n_0),
        .I1(counter_overflow_i_4_n_0),
        .I2(counter_overflow_i_5_n_0),
        .I3(counter_overflow_i_6_n_0),
        .I4(counter_overflow_i_7_n_0),
        .I5(trace6_counter_overflow),
        .O(counter_overflow_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    counter_overflow_i_3
       (.I0(counter_overflow_i_8_n_0),
        .I1(counter_overflow_i_9_n_0),
        .I2(counter_overflow_i_10_n_0),
        .I3(trace6_counter[2]),
        .I4(trace6_counter[1]),
        .I5(trace6_counter[0]),
        .O(counter_overflow_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_4
       (.I0(trace6_counter[35]),
        .I1(trace6_counter[36]),
        .I2(trace6_counter[33]),
        .I3(trace6_counter[34]),
        .I4(trace6_counter[38]),
        .I5(trace6_counter[37]),
        .O(counter_overflow_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_5
       (.I0(trace6_counter[41]),
        .I1(trace6_counter[42]),
        .I2(trace6_counter[39]),
        .I3(trace6_counter[40]),
        .I4(trace6_counter[44]),
        .I5(trace6_counter[43]),
        .O(counter_overflow_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_6
       (.I0(trace6_counter[23]),
        .I1(trace6_counter[24]),
        .I2(trace6_counter[21]),
        .I3(trace6_counter[22]),
        .I4(trace6_counter[26]),
        .I5(trace6_counter[25]),
        .O(counter_overflow_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_7
       (.I0(trace6_counter[29]),
        .I1(trace6_counter[30]),
        .I2(trace6_counter[27]),
        .I3(trace6_counter[28]),
        .I4(trace6_counter[32]),
        .I5(trace6_counter[31]),
        .O(counter_overflow_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_8
       (.I0(trace6_counter[11]),
        .I1(trace6_counter[12]),
        .I2(trace6_counter[9]),
        .I3(trace6_counter[10]),
        .I4(trace6_counter[14]),
        .I5(trace6_counter[13]),
        .O(counter_overflow_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counter_overflow_i_9
       (.I0(trace6_counter[17]),
        .I1(trace6_counter[18]),
        .I2(trace6_counter[15]),
        .I3(trace6_counter[16]),
        .I4(trace6_counter[20]),
        .I5(trace6_counter[19]),
        .O(counter_overflow_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    counter_overflow_reg
       (.C(mon_clk),
        .CE(1'b1),
        .D(counter_overflow_i_2_n_0),
        .Q(trace6_counter_overflow),
        .R(counter_overflow_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_15 ),
        .Q(trace6_counter[0]),
        .S(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_13 ),
        .Q(trace6_counter[10]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_12 ),
        .Q(trace6_counter[11]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_11 ),
        .Q(trace6_counter[12]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_10 ),
        .Q(trace6_counter[13]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_9 ),
        .Q(trace6_counter[14]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_8 ),
        .Q(trace6_counter[15]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[15]_i_1 
       (.CI(\counter_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[15]_i_1_n_0 ,\counter_reg[15]_i_1_n_1 ,\counter_reg[15]_i_1_n_2 ,\counter_reg[15]_i_1_n_3 ,\counter_reg[15]_i_1_n_4 ,\counter_reg[15]_i_1_n_5 ,\counter_reg[15]_i_1_n_6 ,\counter_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[15]_i_1_n_8 ,\counter_reg[15]_i_1_n_9 ,\counter_reg[15]_i_1_n_10 ,\counter_reg[15]_i_1_n_11 ,\counter_reg[15]_i_1_n_12 ,\counter_reg[15]_i_1_n_13 ,\counter_reg[15]_i_1_n_14 ,\counter_reg[15]_i_1_n_15 }),
        .S(trace6_counter[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_15 ),
        .Q(trace6_counter[16]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_14 ),
        .Q(trace6_counter[17]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_13 ),
        .Q(trace6_counter[18]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_12 ),
        .Q(trace6_counter[19]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_14 ),
        .Q(trace6_counter[1]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_11 ),
        .Q(trace6_counter[20]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_10 ),
        .Q(trace6_counter[21]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_9 ),
        .Q(trace6_counter[22]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_8 ),
        .Q(trace6_counter[23]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[23]_i_1 
       (.CI(\counter_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[23]_i_1_n_0 ,\counter_reg[23]_i_1_n_1 ,\counter_reg[23]_i_1_n_2 ,\counter_reg[23]_i_1_n_3 ,\counter_reg[23]_i_1_n_4 ,\counter_reg[23]_i_1_n_5 ,\counter_reg[23]_i_1_n_6 ,\counter_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[23]_i_1_n_8 ,\counter_reg[23]_i_1_n_9 ,\counter_reg[23]_i_1_n_10 ,\counter_reg[23]_i_1_n_11 ,\counter_reg[23]_i_1_n_12 ,\counter_reg[23]_i_1_n_13 ,\counter_reg[23]_i_1_n_14 ,\counter_reg[23]_i_1_n_15 }),
        .S(trace6_counter[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_15 ),
        .Q(trace6_counter[24]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_14 ),
        .Q(trace6_counter[25]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_13 ),
        .Q(trace6_counter[26]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_12 ),
        .Q(trace6_counter[27]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_11 ),
        .Q(trace6_counter[28]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_10 ),
        .Q(trace6_counter[29]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_13 ),
        .Q(trace6_counter[2]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_9 ),
        .Q(trace6_counter[30]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_1_n_8 ),
        .Q(trace6_counter[31]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[31]_i_1 
       (.CI(\counter_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[31]_i_1_n_0 ,\counter_reg[31]_i_1_n_1 ,\counter_reg[31]_i_1_n_2 ,\counter_reg[31]_i_1_n_3 ,\counter_reg[31]_i_1_n_4 ,\counter_reg[31]_i_1_n_5 ,\counter_reg[31]_i_1_n_6 ,\counter_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[31]_i_1_n_8 ,\counter_reg[31]_i_1_n_9 ,\counter_reg[31]_i_1_n_10 ,\counter_reg[31]_i_1_n_11 ,\counter_reg[31]_i_1_n_12 ,\counter_reg[31]_i_1_n_13 ,\counter_reg[31]_i_1_n_14 ,\counter_reg[31]_i_1_n_15 }),
        .S(trace6_counter[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[32] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_15 ),
        .Q(trace6_counter[32]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[33] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_14 ),
        .Q(trace6_counter[33]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[34] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_13 ),
        .Q(trace6_counter[34]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[35] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_12 ),
        .Q(trace6_counter[35]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[36] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_11 ),
        .Q(trace6_counter[36]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[37] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_10 ),
        .Q(trace6_counter[37]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[38] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_9 ),
        .Q(trace6_counter[38]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[39] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[39]_i_1_n_8 ),
        .Q(trace6_counter[39]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[39]_i_1 
       (.CI(\counter_reg[31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[39]_i_1_n_0 ,\counter_reg[39]_i_1_n_1 ,\counter_reg[39]_i_1_n_2 ,\counter_reg[39]_i_1_n_3 ,\counter_reg[39]_i_1_n_4 ,\counter_reg[39]_i_1_n_5 ,\counter_reg[39]_i_1_n_6 ,\counter_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[39]_i_1_n_8 ,\counter_reg[39]_i_1_n_9 ,\counter_reg[39]_i_1_n_10 ,\counter_reg[39]_i_1_n_11 ,\counter_reg[39]_i_1_n_12 ,\counter_reg[39]_i_1_n_13 ,\counter_reg[39]_i_1_n_14 ,\counter_reg[39]_i_1_n_15 }),
        .S(trace6_counter[39:32]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_12 ),
        .Q(trace6_counter[3]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[40] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[44]_i_1_n_15 ),
        .Q(trace6_counter[40]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[41] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[44]_i_1_n_14 ),
        .Q(trace6_counter[41]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[42] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[44]_i_1_n_13 ),
        .Q(trace6_counter[42]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[43] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[44]_i_1_n_12 ),
        .Q(trace6_counter[43]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[44] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[44]_i_1_n_11 ),
        .Q(trace6_counter[44]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[44]_i_1 
       (.CI(\counter_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[44]_i_1_CO_UNCONNECTED [7:4],\counter_reg[44]_i_1_n_4 ,\counter_reg[44]_i_1_n_5 ,\counter_reg[44]_i_1_n_6 ,\counter_reg[44]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[44]_i_1_O_UNCONNECTED [7:5],\counter_reg[44]_i_1_n_11 ,\counter_reg[44]_i_1_n_12 ,\counter_reg[44]_i_1_n_13 ,\counter_reg[44]_i_1_n_14 ,\counter_reg[44]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,trace6_counter[44:40]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_11 ),
        .Q(trace6_counter[4]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_10 ),
        .Q(trace6_counter[5]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_9 ),
        .Q(trace6_counter[6]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_8 ),
        .Q(trace6_counter[7]),
        .R(counter_overflow_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[7]_i_1_n_0 ,\counter_reg[7]_i_1_n_1 ,\counter_reg[7]_i_1_n_2 ,\counter_reg[7]_i_1_n_3 ,\counter_reg[7]_i_1_n_4 ,\counter_reg[7]_i_1_n_5 ,\counter_reg[7]_i_1_n_6 ,\counter_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[7]_i_1_n_8 ,\counter_reg[7]_i_1_n_9 ,\counter_reg[7]_i_1_n_10 ,\counter_reg[7]_i_1_n_11 ,\counter_reg[7]_i_1_n_12 ,\counter_reg[7]_i_1_n_13 ,\counter_reg[7]_i_1_n_14 ,\counter_reg[7]_i_1_n_15 }),
        .S({trace6_counter[7:1],\counter[7]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_15 ),
        .Q(trace6_counter[8]),
        .R(counter_overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(mon_clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_14 ),
        .Q(trace6_counter[9]),
        .R(counter_overflow_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ctr_src_send_i_1
       (.I0(ctr_src_rcv),
        .I1(mon_resetn),
        .O(ctr_src_send_i_1_n_0));
  FDRE ctr_src_send_reg
       (.C(mon_clk),
        .CE(1'b1),
        .D(ctr_src_send_i_1_n_0),
        .Q(ctr_src_send),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree merge_tree_i
       (.D({\b1[6].ss_i_n_2 ,\b1[6].ss_i_n_3 ,\b1[6].ss_i_n_4 ,\b1[6].ss_i_n_5 ,\b1[6].ss_i_n_6 ,\b1[6].ss_i_n_7 ,\b1[6].ss_i_n_8 ,\b1[6].ss_i_n_9 ,\b1[6].ss_i_n_10 ,\b1[6].ss_i_n_11 ,\b1[6].ss_i_n_12 ,\b1[6].ss_i_n_13 ,\b1[6].ss_i_n_14 ,\b1[6].ss_i_n_15 ,\b1[6].ss_i_n_16 ,\b1[6].ss_i_n_17 ,\b1[6].ss_i_n_18 ,\b1[6].ss_i_n_19 ,\b1[6].ss_i_n_20 ,\b1[6].ss_i_n_21 ,\b1[6].ss_i_n_22 ,\b1[6].ss_i_n_23 ,\b1[6].ss_i_n_24 ,\b1[6].ss_i_n_25 ,\b1[6].ss_i_n_26 ,\b1[6].ss_i_n_27 ,\b1[6].ss_i_n_28 ,\b1[6].ss_i_n_29 ,\b1[6].ss_i_n_30 ,\b1[6].ss_i_n_31 ,\b1[6].ss_i_n_32 ,\b1[6].ss_i_n_33 ,\b1[6].ss_i_n_34 ,\b1[6].ss_i_n_35 ,\b1[6].ss_i_n_36 ,\b1[6].ss_i_n_37 ,\b1[6].ss_i_n_38 ,\b1[6].ss_i_n_39 ,\b1[6].ss_i_n_40 ,\b1[6].ss_i_n_41 ,\b1[6].ss_i_n_42 ,\b1[6].ss_i_n_43 ,\b1[6].ss_i_n_44 ,\b1[6].ss_i_n_45 ,\b1[6].ss_i_n_46 ,\b1[6].ss_i_n_47 ,\b1[6].ss_i_n_48 ,\b1[6].ss_i_n_49 ,\b1[6].ss_i_n_50 ,\b1[6].ss_i_n_51 ,\b1[6].ss_i_n_52 ,\b1[6].ss_i_n_53 ,\b1[6].ss_i_n_54 ,\b1[6].ss_i_n_55 ,\b1[6].ss_i_n_56 ,\b1[6].ss_i_n_57 ,\b1[6].ss_i_n_58 ,\b1[6].ss_i_n_59 ,\b1[6].ss_i_n_60 ,\b1[6].ss_i_n_61 ,\b1[6].ss_i_n_62 ,\b1[6].ss_i_n_63 ,\b1[6].ss_i_n_64 ,\b1[6].ss_i_n_65 }),
        .E(\b2[6].merge_i/data_i ),
        ._trace_valid(_trace_valid),
        .\data_i_reg[0] (\b2[4].merge_i/data_i ),
        .\data_i_reg[0]_0 (\b2[3].merge_i/data_i ),
        .\data_i_reg[63] ({\b1[4].ss_i_n_2 ,\b1[4].ss_i_n_3 ,\b1[4].ss_i_n_4 ,\b1[4].ss_i_n_5 ,\b1[4].ss_i_n_6 ,\b1[4].ss_i_n_7 ,\b1[4].ss_i_n_8 ,\b1[4].ss_i_n_9 ,\b1[4].ss_i_n_10 ,\b1[4].ss_i_n_11 ,\b1[4].ss_i_n_12 ,\b1[4].ss_i_n_13 ,\b1[4].ss_i_n_14 ,\b1[4].ss_i_n_15 ,\b1[4].ss_i_n_16 ,\b1[4].ss_i_n_17 ,\b1[4].ss_i_n_18 ,\b1[4].ss_i_n_19 ,\b1[4].ss_i_n_20 ,\b1[4].ss_i_n_21 ,\b1[4].ss_i_n_22 ,\b1[4].ss_i_n_23 ,\b1[4].ss_i_n_24 ,\b1[4].ss_i_n_25 ,\b1[4].ss_i_n_26 ,\b1[4].ss_i_n_27 ,\b1[4].ss_i_n_28 ,\b1[4].ss_i_n_29 ,\b1[4].ss_i_n_30 ,\b1[4].ss_i_n_31 ,\b1[4].ss_i_n_32 ,\b1[4].ss_i_n_33 ,\b1[4].ss_i_n_34 ,\b1[4].ss_i_n_35 ,\b1[4].ss_i_n_36 ,\b1[4].ss_i_n_37 ,\b1[4].ss_i_n_38 ,\b1[4].ss_i_n_39 ,\b1[4].ss_i_n_40 ,\b1[4].ss_i_n_41 ,\b1[4].ss_i_n_42 ,\b1[4].ss_i_n_43 ,\b1[4].ss_i_n_44 ,\b1[4].ss_i_n_45 ,\b1[4].ss_i_n_46 ,\b1[4].ss_i_n_47 ,\b1[4].ss_i_n_48 ,\b1[4].ss_i_n_49 ,\b1[4].ss_i_n_50 ,\b1[4].ss_i_n_51 ,\b1[4].ss_i_n_52 ,\b1[4].ss_i_n_53 ,\b1[4].ss_i_n_54 ,\b1[4].ss_i_n_55 ,\b1[4].ss_i_n_56 ,\b1[4].ss_i_n_57 ,\b1[4].ss_i_n_58 ,\b1[4].ss_i_n_59 ,\b1[4].ss_i_n_60 ,\b1[4].ss_i_n_61 ,\b1[4].ss_i_n_62 ,\b1[4].ss_i_n_63 ,\b1[4].ss_i_n_64 ,\b1[4].ss_i_n_65 }),
        .\data_i_reg[63]_0 ({\b1[2].ss_i_n_2 ,\b1[2].ss_i_n_3 ,\b1[2].ss_i_n_4 ,\b1[2].ss_i_n_5 ,\b1[2].ss_i_n_6 ,\b1[2].ss_i_n_7 ,\b1[2].ss_i_n_8 ,\b1[2].ss_i_n_9 ,\b1[2].ss_i_n_10 ,\b1[2].ss_i_n_11 ,\b1[2].ss_i_n_12 ,\b1[2].ss_i_n_13 ,\b1[2].ss_i_n_14 ,\b1[2].ss_i_n_15 ,\b1[2].ss_i_n_16 ,\b1[2].ss_i_n_17 ,\b1[2].ss_i_n_18 ,\b1[2].ss_i_n_19 ,\b1[2].ss_i_n_20 ,\b1[2].ss_i_n_21 ,\b1[2].ss_i_n_22 ,\b1[2].ss_i_n_23 ,\b1[2].ss_i_n_24 ,\b1[2].ss_i_n_25 ,\b1[2].ss_i_n_26 ,\b1[2].ss_i_n_27 ,\b1[2].ss_i_n_28 ,\b1[2].ss_i_n_29 ,\b1[2].ss_i_n_30 ,\b1[2].ss_i_n_31 ,\b1[2].ss_i_n_32 ,\b1[2].ss_i_n_33 ,\b1[2].ss_i_n_34 ,\b1[2].ss_i_n_35 ,\b1[2].ss_i_n_36 ,\b1[2].ss_i_n_37 ,\b1[2].ss_i_n_38 ,\b1[2].ss_i_n_39 ,\b1[2].ss_i_n_40 ,\b1[2].ss_i_n_41 ,\b1[2].ss_i_n_42 ,\b1[2].ss_i_n_43 ,\b1[2].ss_i_n_44 ,\b1[2].ss_i_n_45 ,\b1[2].ss_i_n_46 ,\b1[2].ss_i_n_47 ,\b1[2].ss_i_n_48 ,\b1[2].ss_i_n_49 ,\b1[2].ss_i_n_50 ,\b1[2].ss_i_n_51 ,\b1[2].ss_i_n_52 ,\b1[2].ss_i_n_53 ,\b1[2].ss_i_n_54 ,\b1[2].ss_i_n_55 ,\b1[2].ss_i_n_56 ,\b1[2].ss_i_n_57 ,\b1[2].ss_i_n_58 ,\b1[2].ss_i_n_59 ,\b1[2].ss_i_n_60 ,\b1[2].ss_i_n_61 ,\b1[2].ss_i_n_62 ,\b1[2].ss_i_n_63 ,\b1[2].ss_i_n_64 ,\b1[2].ss_i_n_65 }),
        .\data_i_reg[63]_1 ({\b1[0].ss_i_n_2 ,\b1[0].ss_i_n_3 ,\b1[0].ss_i_n_4 ,\b1[0].ss_i_n_5 ,\b1[0].ss_i_n_6 ,\b1[0].ss_i_n_7 ,\b1[0].ss_i_n_8 ,\b1[0].ss_i_n_9 ,\b1[0].ss_i_n_10 ,\b1[0].ss_i_n_11 ,\b1[0].ss_i_n_12 ,\b1[0].ss_i_n_13 ,\b1[0].ss_i_n_14 ,\b1[0].ss_i_n_15 ,\b1[0].ss_i_n_16 ,\b1[0].ss_i_n_17 ,\b1[0].ss_i_n_18 ,\b1[0].ss_i_n_19 ,\b1[0].ss_i_n_20 ,\b1[0].ss_i_n_21 ,\b1[0].ss_i_n_22 ,\b1[0].ss_i_n_23 ,\b1[0].ss_i_n_24 ,\b1[0].ss_i_n_25 ,\b1[0].ss_i_n_26 ,\b1[0].ss_i_n_27 ,\b1[0].ss_i_n_28 ,\b1[0].ss_i_n_29 ,\b1[0].ss_i_n_30 ,\b1[0].ss_i_n_31 ,\b1[0].ss_i_n_32 ,\b1[0].ss_i_n_33 ,\b1[0].ss_i_n_34 ,\b1[0].ss_i_n_35 ,\b1[0].ss_i_n_36 ,\b1[0].ss_i_n_37 ,\b1[0].ss_i_n_38 ,\b1[0].ss_i_n_39 ,\b1[0].ss_i_n_40 ,\b1[0].ss_i_n_41 ,\b1[0].ss_i_n_42 ,\b1[0].ss_i_n_43 ,\b1[0].ss_i_n_44 ,\b1[0].ss_i_n_45 ,\b1[0].ss_i_n_46 ,\b1[0].ss_i_n_47 ,\b1[0].ss_i_n_48 ,\b1[0].ss_i_n_49 ,\b1[0].ss_i_n_50 ,\b1[0].ss_i_n_51 ,\b1[0].ss_i_n_52 ,\b1[0].ss_i_n_53 ,\b1[0].ss_i_n_54 ,\b1[0].ss_i_n_55 ,\b1[0].ss_i_n_56 ,\b1[0].ss_i_n_57 ,\b1[0].ss_i_n_58 ,\b1[0].ss_i_n_59 ,\b1[0].ss_i_n_60 ,\b1[0].ss_i_n_61 ,\b1[0].ss_i_n_62 ,\b1[0].ss_i_n_63 ,\b1[0].ss_i_n_64 ,\b1[0].ss_i_n_65 }),
        .have_data0(\b2[5].merge_i/have_data0 ),
        .have_data02_out(\b2[5].merge_i/have_data02_out ),
        .have_data02_out_3(\b2[6].merge_i/have_data02_out ),
        .have_data02_out_4(\b2[4].merge_i/have_data02_out ),
        .have_data0_0(\b2[6].merge_i/have_data0 ),
        .have_data0_1(\b2[3].merge_i/have_data0 ),
        .have_data0_2(\b2[4].merge_i/have_data0 ),
        .have_data_reg(out_valid),
        .out_data(out_data),
        .out_ready(out_ready),
        .trace_clk(trace_clk),
        .wrote0_reg(merge_tree_i_n_0),
        .wrote0_reg_0(merge_tree_i_n_1),
        .wrote0_reg_1(merge_tree_i_n_2),
        .wrote0_reg_2(merge_tree_i_n_3),
        .wrote0_reg_3(trace_rst));
  FDRE sw_counter_overflow_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(ctr_of_dest_out),
        .Q(sw_counter_overflow),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \sw_counter_reg[0] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[0]),
        .Q(sw_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[10] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[10]),
        .Q(sw_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[11] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[11]),
        .Q(sw_counter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[12] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[12]),
        .Q(sw_counter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[13] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[13]),
        .Q(sw_counter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[14] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[14]),
        .Q(sw_counter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[15] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[15]),
        .Q(sw_counter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[16] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[16]),
        .Q(sw_counter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[17] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[17]),
        .Q(sw_counter[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[18] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[18]),
        .Q(sw_counter[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[19] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[19]),
        .Q(sw_counter[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[1] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[1]),
        .Q(sw_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[20] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[20]),
        .Q(sw_counter[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[21] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[21]),
        .Q(sw_counter[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[22] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[22]),
        .Q(sw_counter[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[23] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[23]),
        .Q(sw_counter[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[24] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[24]),
        .Q(sw_counter[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[25] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[25]),
        .Q(sw_counter[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[26] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[26]),
        .Q(sw_counter[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[27] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[27]),
        .Q(sw_counter[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[28] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[28]),
        .Q(sw_counter[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[29] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[29]),
        .Q(sw_counter[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[2] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[2]),
        .Q(sw_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[30] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[30]),
        .Q(sw_counter[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[31] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[31]),
        .Q(sw_counter[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[32] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[32]),
        .Q(sw_counter[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[33] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[33]),
        .Q(sw_counter[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[34] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[34]),
        .Q(sw_counter[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[35] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[35]),
        .Q(sw_counter[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[36] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[36]),
        .Q(sw_counter[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[37] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[37]),
        .Q(sw_counter[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[38] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[38]),
        .Q(sw_counter[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[39] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[39]),
        .Q(sw_counter[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[3] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[3]),
        .Q(sw_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[40] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[40]),
        .Q(sw_counter[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[41] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[41]),
        .Q(sw_counter[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[42] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[42]),
        .Q(sw_counter[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[43] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[43]),
        .Q(sw_counter[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[44] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[44]),
        .Q(sw_counter[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[4] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[4]),
        .Q(sw_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[5] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[5]),
        .Q(sw_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[6] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[6]),
        .Q(sw_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[7] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[7]),
        .Q(sw_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[8] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[8]),
        .Q(sw_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_counter_reg[9] 
       (.C(trace_clk),
        .CE(ctr_dest_req),
        .D(ctr_dest_out[9]),
        .Q(sw_counter[9]),
        .R(1'b0));
  FDRE sw_reset_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(axi_lite_if_i_n_9),
        .Q(trace_rst),
        .R(axi_lite_if_i_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[0] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[0]),
        .Q(\sw_trace_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[10] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[10]),
        .Q(\sw_trace_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[11] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[11]),
        .Q(\sw_trace_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[12] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[12]),
        .Q(\sw_trace_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[13] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[13]),
        .Q(\sw_trace_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[14] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[14]),
        .Q(\sw_trace_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[15] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[15]),
        .Q(\sw_trace_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[1] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[1]),
        .Q(\sw_trace_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[2] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[2]),
        .Q(\sw_trace_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[3] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[3]),
        .Q(\sw_trace_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[4] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[4]),
        .Q(\sw_trace_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[5] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[5]),
        .Q(\sw_trace_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[6] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[6]),
        .Q(\sw_trace_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[7] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[7]),
        .Q(\sw_trace_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[8] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[8]),
        .Q(\sw_trace_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sw_trace_data_reg[9] 
       (.C(trace_clk),
        .CE(axi_lite_if_i_n_7),
        .D(s_axi_wdata[9]),
        .Q(\sw_trace_data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE sw_trace_write_reg
       (.C(trace_clk),
        .CE(1'b1),
        .D(sw_trace_data),
        .Q(sw_trace_write_reg_n_0),
        .R(axi_lite_if_i_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper sw_ts
       (.din({sw_counter_overflow,\sw_trace_data_reg_n_0_[15] ,\sw_trace_data_reg_n_0_[14] ,\sw_trace_data_reg_n_0_[13] ,\sw_trace_data_reg_n_0_[12] ,\sw_trace_data_reg_n_0_[11] ,\sw_trace_data_reg_n_0_[10] ,\sw_trace_data_reg_n_0_[9] ,\sw_trace_data_reg_n_0_[8] ,\sw_trace_data_reg_n_0_[7] ,\sw_trace_data_reg_n_0_[6] ,\sw_trace_data_reg_n_0_[5] ,\sw_trace_data_reg_n_0_[4] ,\sw_trace_data_reg_n_0_[3] ,\sw_trace_data_reg_n_0_[2] ,\sw_trace_data_reg_n_0_[1] ,\sw_trace_data_reg_n_0_[0] ,sw_counter}),
        .dout(sw_data),
        .empty(event_empty_i),
        .error_reg_0(trace_rst),
        .error_reg_1(sw_trace_write_reg_n_0),
        .sw_read(sw_read),
        .trace_clk(trace_clk));
  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "45" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake xpm_cdc_handshake_inst
       (.dest_ack(1'b0),
        .dest_clk(trace_clk),
        .dest_out(ctr_dest_out),
        .dest_req(ctr_dest_req),
        .src_clk(mon_clk),
        .src_in(trace6_counter),
        .src_rcv(ctr_src_rcv),
        .src_send(ctr_src_send));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0 xpm_cdc_single_inst
       (.dest_clk(trace_clk),
        .dest_out(ctr_of_dest_out),
        .src_clk(mon_clk),
        .src_in(trace6_counter_overflow));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1 xpm_cdc_single_sw_rst_inst
       (.dest_clk(mon_clk),
        .dest_out(sw_reset_mon),
        .src_clk(1'b0),
        .src_in(trace_rst));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [2:0]\^dest_out_bin ;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  assign dest_out_bin[3] = \dest_graysync_ff[1] [3];
  assign dest_out_bin[2:0] = \^dest_out_bin [2:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[3] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[3] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [0]),
        .I1(\dest_graysync_ff[3] [2]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [3]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [1]),
        .I1(\dest_graysync_ff[3] [3]),
        .I2(\dest_graysync_ff[3] [4]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [2]),
        .I1(\dest_graysync_ff[3] [4]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\dest_graysync_ff[3] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [3:0]\^dest_out_bin ;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  assign dest_out_bin[4] = \dest_graysync_ff[1] [4];
  assign dest_out_bin[3:0] = \^dest_out_bin [3:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "4" *) (* VERSION = "0" *) 
(* WIDTH = "45" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [44:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [44:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [44:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [44:0]src_hsdata_ff;
  wire [44:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[44:0] = dest_hsdata_ff;
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[36] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[36]),
        .Q(dest_hsdata_ff[36]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[37] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[37]),
        .Q(dest_hsdata_ff[37]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[38] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[38]),
        .Q(dest_hsdata_ff[38]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[39] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[39]),
        .Q(dest_hsdata_ff[39]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[40] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[40]),
        .Q(dest_hsdata_ff[40]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[41] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[41]),
        .Q(dest_hsdata_ff[41]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[42] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[42]),
        .Q(dest_hsdata_ff[42]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[43] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[43]),
        .Q(dest_hsdata_ff[43]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[44] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[44]),
        .Q(dest_hsdata_ff[44]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[44]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[36] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[36]),
        .Q(src_hsdata_ff[36]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[37] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[37]),
        .Q(src_hsdata_ff[37]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[38] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[38]),
        .Q(src_hsdata_ff[38]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[39] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[39]),
        .Q(src_hsdata_ff[39]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[40] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[40]),
        .Q(src_hsdata_ff[40]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[41] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[41]),
        .Q(src_hsdata_ff[41]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[42] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[42]),
        .Q(src_hsdata_ff[42]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[43] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[43]),
        .Q(src_hsdata_ff[43]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[44] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[44]),
        .Q(src_hsdata_ff[44]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(1'b0),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(1'b0),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [2:0]syncstages_ff;

  assign dest_out = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (Q,
    D,
    \count_value_i_reg[1]_0 ,
    src_in_bin,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    rd_en,
    \grdc.rd_data_count_i_reg[2] ,
    \grdc.rd_data_count_i_reg[2]_0 ,
    SR,
    rd_clk);
  output [1:0]Q;
  output [0:0]D;
  output \count_value_i_reg[1]_0 ;
  output [0:0]src_in_bin;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1]_1 ;
  input rd_en;
  input [2:0]\grdc.rd_data_count_i_reg[2] ;
  input [2:0]\grdc.rd_data_count_i_reg[2]_0 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire \count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire \gen_fwft.count_en ;
  wire [2:0]\grdc.rd_data_count_i_reg[2] ;
  wire [2:0]\grdc.rd_data_count_i_reg[2]_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]src_in_bin;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_1 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[1]_1 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_1 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q[1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1]_1 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1]_1 [0]),
        .I5(Q[0]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[2]_0 [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[2]_0 [1]),
        .O(src_in_bin));
  LUT6 #(
    .INIT(64'h9696699669966969)) 
    \grdc.rd_data_count_i[2]_i_1 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(\grdc.rd_data_count_i_reg[2] [2]),
        .I2(\grdc.rd_data_count_i_reg[2]_0 [2]),
        .I3(\grdc.rd_data_count_i_reg[2]_0 [1]),
        .I4(Q[1]),
        .I5(\grdc.rd_data_count_i_reg[2] [1]),
        .O(D));
  LUT6 #(
    .INIT(64'h69FF696969690069)) 
    \grdc.rd_data_count_i[4]_i_4 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[2]_0 [1]),
        .I2(\grdc.rd_data_count_i_reg[2] [1]),
        .I3(\grdc.rd_data_count_i_reg[2]_0 [0]),
        .I4(Q[0]),
        .I5(\grdc.rd_data_count_i_reg[2] [0]),
        .O(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (D,
    Q,
    \reg_out_i_reg[2] ,
    E,
    src_in_bin,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    \grdc.rd_data_count_i_reg[4]_0 ,
    \grdc.rd_data_count_i_reg[4]_1 ,
    \src_gray_ff_reg[4] ,
    \count_value_i_reg[4]_0 ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output [1:0]\reg_out_i_reg[2] ;
  output [0:0]E;
  output [3:0]src_in_bin;
  input [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[0]_0 ;
  input \grdc.rd_data_count_i_reg[4] ;
  input [3:0]\grdc.rd_data_count_i_reg[4]_0 ;
  input \grdc.rd_data_count_i_reg[4]_1 ;
  input [1:0]\src_gray_ff_reg[4] ;
  input \count_value_i_reg[4]_0 ;
  input rd_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_1__4_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[4]_0 ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ;
  wire \grdc.rd_data_count_i[4]_i_3_n_0 ;
  wire \grdc.rd_data_count_i[4]_i_6_n_0 ;
  wire \grdc.rd_data_count_i_reg[4] ;
  wire [3:0]\grdc.rd_data_count_i_reg[4]_0 ;
  wire \grdc.rd_data_count_i_reg[4]_1 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [1:0]\reg_out_i_reg[2] ;
  wire [1:0]\src_gray_ff_reg[4] ;
  wire [3:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__4 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__4 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\count_value_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFE00001501)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(Q[3]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ),
        .I2(Q[1]),
        .I3(\src_gray_ff_reg[4] [1]),
        .I4(Q[2]),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hFBFBBAFB04044504)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[2]),
        .I1(\src_gray_ff_reg[4] [1]),
        .I2(Q[1]),
        .I3(\src_gray_ff_reg[4] [0]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB0FB4F04)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[4] [0]),
        .I2(Q[1]),
        .I3(\src_gray_ff_reg[4] [1]),
        .I4(Q[2]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[4] [0]),
        .O(src_in_bin[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[4] [0]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I4(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1 
       (.I0(Q[1]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [1]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [2]),
        .I4(Q[2]),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDDDFDDDD44454444)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2 
       (.I0(Q[0]),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(\count_value_i_reg[0]_0 [1]),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] [3]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT6 #(
    .INIT(64'h1EE1788787781EE1)) 
    \grdc.rd_data_count_i[3]_i_1 
       (.I0(\grdc.rd_data_count_i_reg[4] ),
        .I1(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I2(\grdc.rd_data_count_i_reg[4]_0 [2]),
        .I3(Q[3]),
        .I4(\grdc.rd_data_count_i_reg[4]_0 [1]),
        .I5(Q[2]),
        .O(\reg_out_i_reg[2] [0]));
  LUT6 #(
    .INIT(64'h1701FF7FE8FE0080)) 
    \grdc.rd_data_count_i[4]_i_2 
       (.I0(\grdc.rd_data_count_i[4]_i_3_n_0 ),
        .I1(\grdc.rd_data_count_i_reg[4] ),
        .I2(\grdc.rd_data_count_i_reg[4]_0 [1]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[4]_1 ),
        .I5(\grdc.rd_data_count_i[4]_i_6_n_0 ),
        .O(\reg_out_i_reg[2] [1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \grdc.rd_data_count_i[4]_i_3 
       (.I0(Q[1]),
        .I1(\src_gray_ff_reg[4] [1]),
        .I2(\grdc.rd_data_count_i_reg[4]_0 [0]),
        .O(\grdc.rd_data_count_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \grdc.rd_data_count_i[4]_i_6 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[4]_0 [2]),
        .I2(\count_value_i_reg_n_0_[4] ),
        .I3(\grdc.rd_data_count_i_reg[4]_0 [3]),
        .O(\grdc.rd_data_count_i[4]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_9
   (D,
    Q,
    \gwdc.wr_data_count_i_reg[2] ,
    wrst_busy,
    E,
    wr_clk);
  output [0:0]D;
  output [4:0]Q;
  input [2:0]\gwdc.wr_data_count_i_reg[2] ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire [2:0]\gwdc.wr_data_count_i_reg[2] ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \gwdc.wr_data_count_i[2]_i_1 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[2] [0]),
        .I2(Q[1]),
        .I3(\gwdc.wr_data_count_i_reg[2] [1]),
        .I4(\gwdc.wr_data_count_i_reg[2] [2]),
        .I5(Q[2]),
        .O(D));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10
   (Q,
    \count_value_i_reg[3]_0 ,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  output \count_value_i_reg[3]_0 ;
  input [0:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire [0:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[3]),
        .I1(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ),
        .O(\count_value_i_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (Q,
    wrst_busy,
    E,
    wr_clk);
  output [3:0]Q;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire wr_clk;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "distributed" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "0" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "1" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "4" *) (* READ_DATA_WIDTH = "64" *) 
(* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "64" *) 
(* WR_DATA_COUNT_WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [63:0]din;
  output full;
  output prog_full;
  output [3:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [63:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [3:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire [3:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "1024" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "4" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "64" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "64" *) 
  (* WR_DATA_COUNT_WIDTH = "4" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ),
        .data_valid(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "1024" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "4" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "64" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "64" *) (* WR_DATA_COUNT_WIDTH = "4" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [63:0]din;
  output full;
  output full_n;
  output prog_full;
  output [3:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [63:0]dout;
  output empty;
  output prog_empty;
  output [3:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire [3:0]diff_pntr_pe;
  wire [4:4]diff_pntr_pf_q0;
  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire [4:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [4:1]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in__0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire rd_clk;
  wire [3:0]rd_data_count;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire [3:3]rd_pntr_wr;
  wire [3:0]rd_pntr_wr_cdc;
  wire [4:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_8;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [1:1]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [3:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire [4:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [3:0]wr_pntr_rd_cdc;
  wire [4:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp1_inst_n_4;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrst_busy;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [63:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,src_in_bin00_out,rdp_inst_n_12}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .E(wr_pntr_plus1_pf_carry),
        .Q(rd_pntr_wr),
        .diff_pntr_pf_q0(diff_pntr_pf_q0),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] (wrpp1_inst_n_4),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0 (full),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (wr_pntr_plus1_pf),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .ram_full_i0(ram_full_i0),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D({\gwdc.diff_wr_rd_pntr1_out [4:3],\gwdc.diff_wr_rd_pntr1_out [1]}),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .\gwdc.wr_data_count_i_reg[4] (wr_pntr_ext),
        .\reg_out_i_reg[4]_0 (rd_pntr_wr_cdc_dc),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_7 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe[1:0]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .enb(rdp_inst_n_8),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] (curr_fwft_state),
        .\gen_pf_ic_rc.ram_empty_i_reg (rd_pntr_ext),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[3]_0 (wr_pntr_rd_cdc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_8 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\grdc.rd_data_count_i_reg[1] (count_value_i),
        .\grdc.rd_data_count_i_reg[4] ({rd_pntr_ext[3],rd_pntr_ext[1:0]}),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[3]_0 (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .\reg_out_i_reg[4]_0 (rd_rst_busy),
        .\reg_out_i_reg[4]_1 (wr_pntr_rd_cdc_dc));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "4" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[3:0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(count_value_i),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[1]_1 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[2] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 }),
        .\grdc.rd_data_count_i_reg[2]_0 (rd_pntr_ext[2:0]),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin(src_in_bin00_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h8888888BBBBBBBBB)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0),
        .Q(p_1_in__0),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "64" *) 
  (* BYTE_WRITE_WIDTH_B = "64" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "1024" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "64" *) 
  (* P_MIN_WIDTH_DATA_A = "64" *) 
  (* P_MIN_WIDTH_DATA_B = "64" *) 
  (* P_MIN_WIDTH_DATA_ECC = "64" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "64" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "64" *) 
  (* P_WIDTH_COL_WRITE_B = "64" *) 
  (* READ_DATA_WIDTH_A = "64" *) 
  (* READ_DATA_WIDTH_B = "64" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "1" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "64" *) 
  (* WRITE_DATA_WIDTH_B = "64" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "64" *) 
  (* rstb_loop_iter = "64" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[3:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [63:0]),
        .doutb(dout),
        .ena(wr_pntr_plus1_pf_carry),
        .enb(rdp_inst_n_8),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.D(diff_pntr_pe[3:2]),
        .E(rdp_inst_n_8),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[4]_0 (rd_rst_busy),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] ({\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 }),
        .\grdc.rd_data_count_i_reg[4] (\gen_fwft.rdpp1_inst_n_3 ),
        .\grdc.rd_data_count_i_reg[4]_0 ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 }),
        .\grdc.rd_data_count_i_reg[4]_1 (\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[2] (\grdc.diff_wr_rd_pntr_rdc [4:3]),
        .\src_gray_ff_reg[4] (count_value_i),
        .src_in_bin({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11,rdp_inst_n_12}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_8),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] (rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .overflow_i0(overflow_i0),
        .p_1_in__0(p_1_in__0),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_9 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_ext),
        .\gwdc.wr_data_count_i_reg[2] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_10 wrpp1_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(wr_pntr_plus1_pf),
        .\count_value_i_reg[3]_0 (wrpp1_inst_n_4),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] (rd_pntr_wr),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 wrpp2_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3}),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(wr_pntr_plus1_pf_carry),
        .Q(curr_fwft_state),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[3] (full),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_1 (\grdc.rd_data_count_i0 ),
        .\guf.underflow_i_reg (empty),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ,
    overflow_i0,
    wrst_busy,
    wr_clk,
    p_1_in__0,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    rst,
    wr_en);
  output rst_d1;
  output \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  output overflow_i0;
  input wrst_busy;
  input wr_clk;
  input p_1_in__0;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input rst;
  input wr_en;

  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire overflow_i0;
  wire p_1_in__0;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E200E2E2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(p_1_in__0),
        .I1(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I2(prog_full),
        .I3(rst),
        .I4(rst_d1),
        .I5(wrst_busy),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(rst_d1),
        .I1(wrst_busy),
        .I2(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I3(wr_en),
        .O(overflow_i0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
   (diff_pntr_pf_q0,
    Q,
    ram_full_i0,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ,
    E,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ,
    rst_d1,
    wrst_busy,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0 ,
    wr_en,
    D,
    wr_clk);
  output [0:0]diff_pntr_pf_q0;
  output [0:0]Q;
  output ram_full_i0;
  input [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  input [0:0]E;
  input [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input rst_d1;
  input wrst_busy;
  input \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0 ;
  input wr_en;
  input [3:0]D;
  input wr_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]diff_pntr_pf_q0;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire ram_full_i0;
  wire [2:0]rd_pntr_wr;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT6 #(
    .INIT(64'h2BFF002BD400FFD4)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1 
       (.I0(rd_pntr_wr[1]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .I2(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I4(rd_pntr_wr[2]),
        .I5(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] ),
        .O(diff_pntr_pf_q0));
  LUT6 #(
    .INIT(64'h4444444D44444444)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2 
       (.I0(rd_pntr_wr[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I2(rst_d1),
        .I3(wrst_busy),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0 ),
        .I5(wr_en),
        .O(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(E),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [3]),
        .I5(Q),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(rd_pntr_wr[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(rd_pntr_wr[0]),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [0]),
        .I2(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [2]),
        .I3(rd_pntr_wr[2]),
        .I4(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg [1]),
        .I5(rd_pntr_wr[1]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(rd_pntr_wr[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(rd_pntr_wr[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(rd_pntr_wr[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_7
   (D,
    Q,
    ram_empty_i0,
    enb,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ,
    rd_en,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \reg_out_i_reg[0]_0 ,
    \reg_out_i_reg[3]_0 ,
    rd_clk);
  output [1:0]D;
  output [3:0]Q;
  output ram_empty_i0;
  input enb;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input [1:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ;
  input rd_en;
  input ram_empty_i;
  input [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input \reg_out_i_reg[0]_0 ;
  input [3:0]\reg_out_i_reg[3]_0 ;
  input rd_clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire enb;
  wire [1:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire [3:0]\gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [3:0]\reg_out_i_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h6666666699999969)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [1]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] [0]),
        .I4(rd_en),
        .I5(ram_empty_i),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD42B2BD4)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1 
       (.I0(Q[0]),
        .I1(enb),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I3(Q[1]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF8080802020FF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(enb),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I5(Q[3]),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
   (D,
    Q,
    \gwdc.wr_data_count_i_reg[4] ,
    wrst_busy,
    \reg_out_i_reg[4]_0 ,
    wr_clk);
  output [2:0]D;
  output [2:0]Q;
  input [4:0]\gwdc.wr_data_count_i_reg[4] ;
  input wrst_busy;
  input [4:0]\reg_out_i_reg[4]_0 ;
  input wr_clk;

  wire [2:0]D;
  wire [2:0]Q;
  wire \gwdc.wr_data_count_i[4]_i_2_n_0 ;
  wire [4:0]\gwdc.wr_data_count_i_reg[4] ;
  wire [4:0]\reg_out_i_reg[4]_0 ;
  wire \reg_out_i_reg_n_0_[3] ;
  wire \reg_out_i_reg_n_0_[4] ;
  wire wr_clk;
  wire wrst_busy;

  LUT4 #(
    .INIT(16'h2DD2)) 
    \gwdc.wr_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[4] [0]),
        .I2(Q[1]),
        .I3(\gwdc.wr_data_count_i_reg[4] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gwdc.wr_data_count_i[3]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\reg_out_i_reg_n_0_[3] ),
        .I2(\gwdc.wr_data_count_i_reg[4] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[4]_i_1 
       (.I0(\gwdc.wr_data_count_i[4]_i_2_n_0 ),
        .I1(\gwdc.wr_data_count_i_reg[4] [3]),
        .I2(\reg_out_i_reg_n_0_[3] ),
        .I3(\reg_out_i_reg_n_0_[4] ),
        .I4(\gwdc.wr_data_count_i_reg[4] [4]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    \gwdc.wr_data_count_i[4]_i_2 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[4] [2]),
        .I2(\gwdc.wr_data_count_i_reg[4] [0]),
        .I3(Q[0]),
        .I4(\gwdc.wr_data_count_i_reg[4] [1]),
        .I5(Q[1]),
        .O(\gwdc.wr_data_count_i[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [3]),
        .Q(\reg_out_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_0 [4]),
        .Q(\reg_out_i_reg_n_0_[4] ),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_8
   (D,
    Q,
    \reg_out_i_reg[3]_0 ,
    \grdc.rd_data_count_i_reg[4] ,
    \grdc.rd_data_count_i_reg[1] ,
    \reg_out_i_reg[4]_0 ,
    \reg_out_i_reg[4]_1 ,
    rd_clk);
  output [0:0]D;
  output [4:0]Q;
  output \reg_out_i_reg[3]_0 ;
  input [2:0]\grdc.rd_data_count_i_reg[4] ;
  input [1:0]\grdc.rd_data_count_i_reg[1] ;
  input \reg_out_i_reg[4]_0 ;
  input [4:0]\reg_out_i_reg[4]_1 ;
  input rd_clk;

  wire [0:0]D;
  wire [4:0]Q;
  wire [1:0]\grdc.rd_data_count_i_reg[1] ;
  wire [2:0]\grdc.rd_data_count_i_reg[4] ;
  wire rd_clk;
  wire \reg_out_i_reg[3]_0 ;
  wire \reg_out_i_reg[4]_0 ;
  wire [4:0]\reg_out_i_reg[4]_1 ;

  LUT6 #(
    .INIT(64'hC33C96696996C33C)) 
    \grdc.rd_data_count_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[4] [1]),
        .I3(\grdc.rd_data_count_i_reg[1] [1]),
        .I4(\grdc.rd_data_count_i_reg[1] [0]),
        .I5(\grdc.rd_data_count_i_reg[4] [0]),
        .O(D));
  LUT2 #(
    .INIT(4'h9)) 
    \grdc.rd_data_count_i[4]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[4] [2]),
        .O(\reg_out_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_1 [0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_1 [1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_1 [2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_1 [3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[4]_1 [4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[4]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    E,
    wr_rst_busy,
    SR,
    \gen_rst_ic.fifo_rd_rst_ic_reg_1 ,
    underflow_i0,
    rd_clk,
    wr_clk,
    rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    ram_empty_i,
    Q,
    rd_en,
    \guf.underflow_i_reg );
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output [0:0]E;
  output wr_rst_busy;
  output [0:0]SR;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  output underflow_i0;
  input rd_clk;
  input wr_clk;
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input ram_empty_i;
  input [1:0]Q;
  input rd_en;
  input \guf.underflow_i_reg ;

  wire \/i__n_0 ;
  wire [0:0]E;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[3] ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire \guf.underflow_i_reg ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1__2 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(SR));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[3] ),
        .I2(wrst_busy),
        .I3(rst_d1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[4]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_1 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \guf.underflow_i_i_1 
       (.I0(\guf.underflow_i_reg ),
        .I1(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I2(rd_en),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "64" *) (* BYTE_WRITE_WIDTH_B = "64" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "1024" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) (* P_MIN_WIDTH_DATA = "64" *) 
(* P_MIN_WIDTH_DATA_A = "64" *) (* P_MIN_WIDTH_DATA_B = "64" *) (* P_MIN_WIDTH_DATA_ECC = "64" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "64" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "64" *) 
(* P_WIDTH_COL_WRITE_B = "64" *) (* READ_DATA_WIDTH_A = "64" *) (* READ_DATA_WIDTH_B = "64" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "1" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "64" *) (* WRITE_DATA_WIDTH_B = "64" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "64" *) (* rstb_loop_iter = "64" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [63:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [63:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [63:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [63:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [63:0]\gen_rd_b.doutb_reg ;
  wire [63:0]\gen_rd_b.doutb_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOE_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOF_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOG_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(\gen_rd_b.doutb_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[10] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [10]),
        .Q(\gen_rd_b.doutb_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[11] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [11]),
        .Q(\gen_rd_b.doutb_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[12] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [12]),
        .Q(\gen_rd_b.doutb_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[13] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [13]),
        .Q(\gen_rd_b.doutb_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[14] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [14]),
        .Q(\gen_rd_b.doutb_reg [14]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[15] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [15]),
        .Q(\gen_rd_b.doutb_reg [15]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[16] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [16]),
        .Q(\gen_rd_b.doutb_reg [16]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[17] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [17]),
        .Q(\gen_rd_b.doutb_reg [17]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[18] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [18]),
        .Q(\gen_rd_b.doutb_reg [18]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[19] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [19]),
        .Q(\gen_rd_b.doutb_reg [19]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(\gen_rd_b.doutb_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[20] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [20]),
        .Q(\gen_rd_b.doutb_reg [20]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[21] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [21]),
        .Q(\gen_rd_b.doutb_reg [21]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[22] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [22]),
        .Q(\gen_rd_b.doutb_reg [22]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[23] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [23]),
        .Q(\gen_rd_b.doutb_reg [23]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[24] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [24]),
        .Q(\gen_rd_b.doutb_reg [24]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[25] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [25]),
        .Q(\gen_rd_b.doutb_reg [25]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[26] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [26]),
        .Q(\gen_rd_b.doutb_reg [26]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[27] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [27]),
        .Q(\gen_rd_b.doutb_reg [27]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[28] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [28]),
        .Q(\gen_rd_b.doutb_reg [28]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[29] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [29]),
        .Q(\gen_rd_b.doutb_reg [29]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(\gen_rd_b.doutb_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[30] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [30]),
        .Q(\gen_rd_b.doutb_reg [30]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[31] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [31]),
        .Q(\gen_rd_b.doutb_reg [31]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[32] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [32]),
        .Q(\gen_rd_b.doutb_reg [32]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[33] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [33]),
        .Q(\gen_rd_b.doutb_reg [33]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[34] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [34]),
        .Q(\gen_rd_b.doutb_reg [34]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[35] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [35]),
        .Q(\gen_rd_b.doutb_reg [35]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[36] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [36]),
        .Q(\gen_rd_b.doutb_reg [36]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[37] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [37]),
        .Q(\gen_rd_b.doutb_reg [37]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[38] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [38]),
        .Q(\gen_rd_b.doutb_reg [38]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[39] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [39]),
        .Q(\gen_rd_b.doutb_reg [39]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(\gen_rd_b.doutb_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[40] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [40]),
        .Q(\gen_rd_b.doutb_reg [40]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[41] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [41]),
        .Q(\gen_rd_b.doutb_reg [41]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[42] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [42]),
        .Q(\gen_rd_b.doutb_reg [42]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[43] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [43]),
        .Q(\gen_rd_b.doutb_reg [43]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[44] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [44]),
        .Q(\gen_rd_b.doutb_reg [44]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[45] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [45]),
        .Q(\gen_rd_b.doutb_reg [45]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[46] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [46]),
        .Q(\gen_rd_b.doutb_reg [46]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[47] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [47]),
        .Q(\gen_rd_b.doutb_reg [47]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[48] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [48]),
        .Q(\gen_rd_b.doutb_reg [48]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[49] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [49]),
        .Q(\gen_rd_b.doutb_reg [49]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(\gen_rd_b.doutb_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[50] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [50]),
        .Q(\gen_rd_b.doutb_reg [50]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[51] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [51]),
        .Q(\gen_rd_b.doutb_reg [51]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[52] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [52]),
        .Q(\gen_rd_b.doutb_reg [52]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[53] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [53]),
        .Q(\gen_rd_b.doutb_reg [53]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[54] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [54]),
        .Q(\gen_rd_b.doutb_reg [54]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[55] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [55]),
        .Q(\gen_rd_b.doutb_reg [55]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[56] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [56]),
        .Q(\gen_rd_b.doutb_reg [56]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[57] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [57]),
        .Q(\gen_rd_b.doutb_reg [57]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[58] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [58]),
        .Q(\gen_rd_b.doutb_reg [58]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[59] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [59]),
        .Q(\gen_rd_b.doutb_reg [59]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(\gen_rd_b.doutb_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[60] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [60]),
        .Q(\gen_rd_b.doutb_reg [60]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[61] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [61]),
        .Q(\gen_rd_b.doutb_reg [61]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[62] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [62]),
        .Q(\gen_rd_b.doutb_reg [62]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[63] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [63]),
        .Q(\gen_rd_b.doutb_reg [63]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(\gen_rd_b.doutb_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(\gen_rd_b.doutb_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[8] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [8]),
        .Q(\gen_rd_b.doutb_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[9] 
       (.C(clkb),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [9]),
        .Q(\gen_rd_b.doutb_reg [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [14]),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [15]),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [16]),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [17]),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [18]),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [19]),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [20]),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [21]),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [22]),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [23]),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [24]),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [25]),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [26]),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [27]),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [28]),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [29]),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [30]),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [31]),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [32]),
        .Q(doutb[32]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [33]),
        .Q(doutb[33]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [34]),
        .Q(doutb[34]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [35]),
        .Q(doutb[35]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [36]),
        .Q(doutb[36]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [37]),
        .Q(doutb[37]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [38]),
        .Q(doutb[38]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [39]),
        .Q(doutb[39]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [40]),
        .Q(doutb[40]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [41]),
        .Q(doutb[41]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [42]),
        .Q(doutb[42]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [43]),
        .Q(doutb[43]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [44]),
        .Q(doutb[44]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [45]),
        .Q(doutb[45]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [46]),
        .Q(doutb[46]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [47]),
        .Q(doutb[47]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [48]),
        .Q(doutb[48]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [49]),
        .Q(doutb[49]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [50]),
        .Q(doutb[50]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [51]),
        .Q(doutb[51]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [52]),
        .Q(doutb[52]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [53]),
        .Q(doutb[53]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [54]),
        .Q(doutb[54]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [55]),
        .Q(doutb[55]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [56]),
        .Q(doutb[56]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [57]),
        .Q(doutb[57]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [58]),
        .Q(doutb[58]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [59]),
        .Q(doutb[59]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [60]),
        .Q(doutb[60]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [61]),
        .Q(doutb[61]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [62]),
        .Q(doutb[62]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [63]),
        .Q(doutb[63]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9] 
       (.C(clkb),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* dram_emb_xdc = "yes" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID(dina[7:6]),
        .DIE(dina[9:8]),
        .DIF(dina[11:10]),
        .DIG(dina[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\gen_rd_b.doutb_reg0 [7:6]),
        .DOE(\gen_rd_b.doutb_reg0 [9:8]),
        .DOF(\gen_rd_b.doutb_reg0 [11:10]),
        .DOG(\gen_rd_b.doutb_reg0 [13:12]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* dram_emb_xdc = "yes" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[15:14]),
        .DIB(dina[17:16]),
        .DIC(dina[19:18]),
        .DID(dina[21:20]),
        .DIE(dina[23:22]),
        .DIF(dina[25:24]),
        .DIG(dina[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [15:14]),
        .DOB(\gen_rd_b.doutb_reg0 [17:16]),
        .DOC(\gen_rd_b.doutb_reg0 [19:18]),
        .DOD(\gen_rd_b.doutb_reg0 [21:20]),
        .DOE(\gen_rd_b.doutb_reg0 [23:22]),
        .DOF(\gen_rd_b.doutb_reg0 [25:24]),
        .DOG(\gen_rd_b.doutb_reg0 [27:26]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* dram_emb_xdc = "yes" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "41" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[29:28]),
        .DIB(dina[31:30]),
        .DIC(dina[33:32]),
        .DID(dina[35:34]),
        .DIE(dina[37:36]),
        .DIF(dina[39:38]),
        .DIG(dina[41:40]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [29:28]),
        .DOB(\gen_rd_b.doutb_reg0 [31:30]),
        .DOC(\gen_rd_b.doutb_reg0 [33:32]),
        .DOD(\gen_rd_b.doutb_reg0 [35:34]),
        .DOE(\gen_rd_b.doutb_reg0 [37:36]),
        .DOF(\gen_rd_b.doutb_reg0 [39:38]),
        .DOG(\gen_rd_b.doutb_reg0 [41:40]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* dram_emb_xdc = "yes" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "55" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[43:42]),
        .DIB(dina[45:44]),
        .DIC(dina[47:46]),
        .DID(dina[49:48]),
        .DIE(dina[51:50]),
        .DIF(dina[53:52]),
        .DIG(dina[55:54]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [43:42]),
        .DOB(\gen_rd_b.doutb_reg0 [45:44]),
        .DOC(\gen_rd_b.doutb_reg0 [47:46]),
        .DOD(\gen_rd_b.doutb_reg0 [49:48]),
        .DOE(\gen_rd_b.doutb_reg0 [51:50]),
        .DOF(\gen_rd_b.doutb_reg0 [53:52]),
        .DOG(\gen_rd_b.doutb_reg0 [55:54]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* dram_emb_xdc = "yes" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "63" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[57:56]),
        .DIB(dina[59:58]),
        .DIC(dina[61:60]),
        .DID(dina[63:62]),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [57:56]),
        .DOB(\gen_rd_b.doutb_reg0 [59:58]),
        .DOC(\gen_rd_b.doutb_reg0 [61:60]),
        .DOD(\gen_rd_b.doutb_reg0 [63:62]),
        .DOE(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
