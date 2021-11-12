// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 12 13:18:59 2021
// Host        : ip-172-31-34-244.ec2.internal running 64-bit Amazon Linux release 2 (Karoo)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_5847_lut_buffer_0_sim_netlist.v
// Design      : bd_5847_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_5847_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bBTLKNRCXWhOAx1+YMj4Xx/Jr4A/ssh77gsESoWMEwxUHKGn57FvXJP9nsHr13plL6UGvrcIELJE
/ww/BCXU+VyrblusNZ/2CXIXW+XX2yuz6acXk0wWG7AwULz5IHKXwbV08ymDvQRCCUj0tn3C0Vt0
Y/OZIJxb+/1lRFjRgBc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KQkJRK64UH/2tN0ZhuVJQ2ppl5WuTRzUAGyzMePOe4p2tJxRMqY6a9ifZXRB91bG0Q/l56ak6+x2
0/xi5LRq2YztvoZfw8XE8XReQpAtBUN9F5P4HcTGG8NsxuJtDQR0VaOuaTViizAucEqIjhdas3OS
Mucq4tSWQ9lhG+heMF4Pv0l/LVbloP3qTfUh6KuG0nXeJzh1Q1Hw6aEhywj+1etgBMhfXc0JIa+3
UkV7I5qsVNYopXhcC6Mm5U4baKeK3HspCYF4KiTakmWQ6kOnpMIUiVVSd3mfOZylYqUh3CMaSqx7
fdQ6ZWME7T2tRnbjgdZgAFcyMMWZhiEi5cTIKw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y3b+GG3CqfotOb5bwZWphegg+kNXDYHW1UUrUr3gK3Yrh3Gv9F2kDlRT/YfAMgruk/1PSQjZUado
WbPUUFCkNR02++pNfDkKtI9tkjJOuQ/wxT5acGqqWUCrTEZt5jmWxhWFpzm6ZDnKaRZzcngpnNT3
x1Wd0bVJA+my70JOVHM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TqLpjfOnPLEi2zB+g1VqYC6ZrKLLpmng/mLDRhpKb/WR81gwTPjTiiuVTcX9sqLNtBeqtH/oOmIl
VCu1YkmmtbWkMGvseencNSpX7UCmrzTs/aPnHkfRYiIaiOPhlugsqjmDiTKgA2Tq/tT5PjXq/zW+
XUFrq3xJ4Rhtz1HgrAFai+X08+ewo2Qt3CRHJjV6dlyF9nMMROE1fjTfCcWVpo/78oEGtX5Bjk1D
MrB0tivvgVSYxdKLcpJVgj6PLBAITw+62Fm3SMXUTLFdxC43ZMyszgtK6sEu7aZmfVM2w1BdVc6o
FaYItBtJ6Pc68XF/TZkulB555IBq7C5sGCpBog==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SOvC56WAvslkDg8n0L6SYQdMmY9MTJeJdttZ0jlTtj+O8yqTMbotqztuypMWMmWLavEcgOOV7gEw
J4o8h8Ue3caRdIm21sbI8c+3GnfaXvk1lsaoM7f8U0T/Umubono0IetBO0J1lgs++rmf+p0gDJNZ
kT0atXyPLLLLIqTjHTvKhiAzd/S1VSq0ZYAQ8iM7BhA7EfDwLhAaKpcWlo7fqx79QdkJwrAkHZDi
UK57tdApeh7KUsS6YfVMszwLzMiLa075FthbuSkcS/F946cb1MWJyWl4CG2+jJS3YtrsahNsN1k6
tmHHWSKPlRdih7HOePQeVlmQpDxev57XOFOBlQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tiw8f73kpeAklLTOD0oMGVhruDKflKu5jKJMhGzWQqBPBMzZHur2DxyYsQeBfsUU2kE+Ron6WE5V
+n5E4edfcSVPRIDodFRbT8RIf6E5Jnz9yed75HAm3ROYlIYdAVpCGpVkzuGLVHBSNmpgMmqghk6q
FsYu9vRDTHf966FJhBlvqa9PYtdzJVJCdkJxikwYdkDn6uMKwO3Ki7GSr5V5LnPd4IGr3ypEoMNV
ZQlpnbfpmpCJAHlATHUNDBaTz1Uj7EdxGbok3xKGIEU83ohI2Anx0uowQglOkCQpCkNB506CdwQZ
i7pA1HbIGUaD12Sjd4HLNEt9E354+jAbE2anHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IKg4Ui6aztSoWjSvG54rTKBtyz55ZlHwZ/Peyb7r0ywMcoqiFpR5T2wweCE67b3SQG4Y5T+xGaIn
A80CE08e9uoyGnJTaucfR8URF2Zspp+fVAM+MVC9k7Am8cKnQCj7tDVli2/+AfluaNXP3xMGF6gp
l0j1NSppOvrLjJOPUojm+p5Dtosd6NVHG9yKKmLDMgs4SJyQCnH8WpDZTbetSStccve0Wh+8BPjX
kn24RtUcfWpdMc3/p7sFRAS/xZ9yqr3PamZjkQLbtqiAdGuufgDu7QXkadWIBf+qMutx3PaF9PnQ
Kwla72sRF9OL5CIvalqMWy3UHXCoIU8O+PNFSA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NH8E2j5Z9kVzx30F7yEjdpqHZQZfyinmIkLBE0sElyXKo7RkW7O2w3ANqxMN8dDJjDvo+Afyn09W
FtKBXG1hQ7IJjMSIVyrhqHzVNTSx7/HQjfn5xwWzK1B3NTo9zynU5CicBoNICCUUA085VteOIFSD
lX2NhqMnyMvcq+ZGW1Pl9GC1xLXcDdqRuOwol93J2KcfyKs3L1+Ces2K54MnLHSmh/wH7oz0+irc
edD4XZubqP3RoNejV7n4JZfr283agIrxralDLNpfiAZAEZNzeHX2YnFwXNRZ8++5IUwJsj57Bxjv
S3De0VfC3v1o/AHkmMwkZrlhvccAiolopdOyH6e3uCkocnoNPOPVPltgSXIqd//u1IYkxqlWVJBx
QOeZU2q4MaUZj8iP9KOE9QFDHelN5efjw0ecidRfLTyxcoEeT24Z1pHWSTHPfu6BmjUia/eUWJ1S
mNMuwQjSuOwuhY1oUMt022dENh40auRUKOsKpoct7toIpl0CJ/okPmI3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CcHFq/bSOCYX/lphfljbwbptit8aJqo4TfpjkNOMqLa8QH6TqEITgYKyih5HbuAs2zCLNkbLClLt
GcQFw/GJ6L9TvstcUfWXNWgsrZiIWPJh4t+SWR6DAr07Js3NqwU35oA+bggBNB6xWUysztACo6cB
/S9O5c0bo+WojPtcFcLs0zU+mLwZFflmBJaGSYKiNYmK1awlI2sl9DicuLw8G5Bkt+CXMLSyMGe3
O/QtauigzQ4hSFn+HJ5EJ6MR5MeGdXQESBs9Z6+de3V+ezfUQ/VaBudlFlU3gvC6qS2Pjrp/1Xwp
EDzasAhIIVJwfXKzJQMuhX3RcINDzx0ePJj3LA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
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
