// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 12 13:13:51 2021
// Host        : ip-172-31-34-244.ec2.internal running 64-bit Amazon Linux release 2 (Karoo)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_dpa_hub_0_stub.v
// Design      : cl_dpa_hub_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "trace_integrator,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mon_clk, mon_resetn, trace_clk, trace_resetn, 
  trace_rst, out_valid, out_ready, out_data, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bvalid, 
  s_axi_bready, s_axi_bresp, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, trace0_counter, trace0_read, 
  trace0_event, trace0_data, trace0_counter_overflow, trace0_valid, trace1_counter, 
  trace1_read, trace1_event, trace1_data, trace1_counter_overflow, trace1_valid, 
  trace2_counter, trace2_read, trace2_event, trace2_data, trace2_counter_overflow, 
  trace2_valid, trace3_counter, trace3_read, trace3_event, trace3_data, 
  trace3_counter_overflow, trace3_valid, trace4_counter, trace4_read, trace4_event, 
  trace4_data, trace4_counter_overflow, trace4_valid, trace5_counter, trace5_read, 
  trace5_event, trace5_data, trace5_counter_overflow, trace5_valid, trace6_counter, 
  trace6_read, trace6_event, trace6_data, trace6_counter_overflow, trace6_valid)
/* synthesis syn_black_box black_box_pad_pin="mon_clk,mon_resetn,trace_clk,trace_resetn,trace_rst,out_valid,out_ready,out_data[63:0],s_axi_awaddr[3:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_araddr[3:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,trace0_counter[44:0],trace0_read,trace0_event,trace0_data[63:0],trace0_counter_overflow,trace0_valid,trace1_counter[44:0],trace1_read,trace1_event,trace1_data[63:0],trace1_counter_overflow,trace1_valid,trace2_counter[44:0],trace2_read,trace2_event,trace2_data[63:0],trace2_counter_overflow,trace2_valid,trace3_counter[44:0],trace3_read,trace3_event,trace3_data[63:0],trace3_counter_overflow,trace3_valid,trace4_counter[44:0],trace4_read,trace4_event,trace4_data[63:0],trace4_counter_overflow,trace4_valid,trace5_counter[44:0],trace5_read,trace5_event,trace5_data[63:0],trace5_counter_overflow,trace5_valid,trace6_counter[44:0],trace6_read,trace6_event,trace6_data[63:0],trace6_counter_overflow,trace6_valid" */;
  input mon_clk;
  input mon_resetn;
  input trace_clk;
  input trace_resetn;
  output trace_rst;
  output out_valid;
  input out_ready;
  output [63:0]out_data;
  input [3:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  input [3:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [44:0]trace0_counter;
  output trace0_read;
  input trace0_event;
  input [63:0]trace0_data;
  output trace0_counter_overflow;
  input trace0_valid;
  output [44:0]trace1_counter;
  output trace1_read;
  input trace1_event;
  input [63:0]trace1_data;
  output trace1_counter_overflow;
  input trace1_valid;
  output [44:0]trace2_counter;
  output trace2_read;
  input trace2_event;
  input [63:0]trace2_data;
  output trace2_counter_overflow;
  input trace2_valid;
  output [44:0]trace3_counter;
  output trace3_read;
  input trace3_event;
  input [63:0]trace3_data;
  output trace3_counter_overflow;
  input trace3_valid;
  output [44:0]trace4_counter;
  output trace4_read;
  input trace4_event;
  input [63:0]trace4_data;
  output trace4_counter_overflow;
  input trace4_valid;
  output [44:0]trace5_counter;
  output trace5_read;
  input trace5_event;
  input [63:0]trace5_data;
  output trace5_counter_overflow;
  input trace5_valid;
  output [44:0]trace6_counter;
  output trace6_read;
  input trace6_event;
  input [63:0]trace6_data;
  output trace6_counter_overflow;
  input trace6_valid;
endmodule
