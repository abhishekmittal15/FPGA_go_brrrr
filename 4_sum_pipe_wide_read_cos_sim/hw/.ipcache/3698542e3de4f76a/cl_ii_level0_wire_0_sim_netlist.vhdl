-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Nov 12 13:12:52 2021
-- Host        : ip-172-31-34-244.ec2.internal running 64-bit Amazon Linux release 2 (Karoo)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cl_ii_level0_wire_0_sim_netlist.vhdl
-- Design      : cl_ii_level0_wire_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(31 downto 0) <= m_axi_rdata(31 downto 0);
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_araddr\(24 downto 0) <= s_axi_araddr(24 downto 0);
  \^s_axi_arprot\(2 downto 0) <= s_axi_arprot(2 downto 0);
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_awaddr\(24 downto 0) <= s_axi_awaddr(24 downto 0);
  \^s_axi_awprot\(2 downto 0) <= s_axi_awprot(2 downto 0);
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_araddr(24 downto 0) <= \^s_axi_araddr\(24 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awaddr(24 downto 0) <= \^s_axi_awaddr\(24 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is "axi_register_slice_v2_1_24_axi_register_slice";
  attribute P_FORWARD : integer;
  attribute P_FORWARD of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ : entity is 1;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(31 downto 0) <= m_axi_rdata(31 downto 0);
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_araddr\(24 downto 0) <= s_axi_araddr(24 downto 0);
  \^s_axi_arprot\(2 downto 0) <= s_axi_arprot(2 downto 0);
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_awaddr\(24 downto 0) <= s_axi_awaddr(24 downto 0);
  \^s_axi_awprot\(2 downto 0) <= s_axi_awprot(2 downto 0);
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_araddr(24 downto 0) <= \^s_axi_araddr\(24 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awaddr(24 downto 0) <= \^s_axi_awaddr\(24 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 512;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 6;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 70;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 72;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 85;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 6;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 76;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 84;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 99;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 91;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 95;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 67;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 99;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 70;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 72;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 85;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 6;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 76;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 84;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 99;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 91;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 95;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 4;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 67;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 99;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 6;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 8;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 8;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 512;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 515;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 6;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 514;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 521;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 512;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 521;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 512;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 577;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 576;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 577;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 512;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 64;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 577;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is "axi_register_slice_v2_1_24_axi_register_slice";
  attribute P_FORWARD : integer;
  attribute P_FORWARD of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ : entity is 1;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bid\(5 downto 0) <= m_axi_bid(5 downto 0);
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(511 downto 0) <= m_axi_rdata(511 downto 0);
  \^m_axi_rid\(5 downto 0) <= m_axi_rid(5 downto 0);
  \^m_axi_rlast\ <= m_axi_rlast;
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_araddr\(63 downto 0) <= s_axi_araddr(63 downto 0);
  \^s_axi_arburst\(1 downto 0) <= s_axi_arburst(1 downto 0);
  \^s_axi_arid\(5 downto 0) <= s_axi_arid(5 downto 0);
  \^s_axi_arlen\(7 downto 0) <= s_axi_arlen(7 downto 0);
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_awaddr\(63 downto 0) <= s_axi_awaddr(63 downto 0);
  \^s_axi_awburst\(1 downto 0) <= s_axi_awburst(1 downto 0);
  \^s_axi_awid\(5 downto 0) <= s_axi_awid(5 downto 0);
  \^s_axi_awlen\(7 downto 0) <= s_axi_awlen(7 downto 0);
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(511 downto 0) <= s_axi_wdata(511 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(63 downto 0) <= s_axi_wstrb(63 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_araddr(63 downto 0) <= \^s_axi_araddr\(63 downto 0);
  m_axi_arburst(1 downto 0) <= \^s_axi_arburst\(1 downto 0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(5 downto 0) <= \^s_axi_arid\(5 downto 0);
  m_axi_arlen(7 downto 0) <= \^s_axi_arlen\(7 downto 0);
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awaddr(63 downto 0) <= \^s_axi_awaddr\(63 downto 0);
  m_axi_awburst(1 downto 0) <= \^s_axi_awburst\(1 downto 0);
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(5 downto 0) <= \^s_axi_awid\(5 downto 0);
  m_axi_awlen(7 downto 0) <= \^s_axi_awlen\(7 downto 0);
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(511 downto 0) <= \^s_axi_wdata\(511 downto 0);
  m_axi_wid(5) <= \<const0>\;
  m_axi_wid(4) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(63 downto 0) <= \^s_axi_wstrb\(63 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bid(5 downto 0) <= \^m_axi_bid\(5 downto 0);
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(511 downto 0) <= \^m_axi_rdata\(511 downto 0);
  s_axi_rid(5 downto 0) <= \^m_axi_rid\(5 downto 0);
  s_axi_rlast <= \^m_axi_rlast\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 512;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 6;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 70;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 72;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 85;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 6;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 76;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 84;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 99;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 91;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 95;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 67;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 99;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 70;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 72;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 85;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 6;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 76;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 84;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 99;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 91;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 95;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 4;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 67;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 99;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 6;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 8;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 8;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 512;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 515;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 6;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 514;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 521;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 512;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 521;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 512;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 577;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 576;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 577;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 512;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 64;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 577;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is "axi_register_slice_v2_1_24_axi_register_slice";
  attribute P_FORWARD : integer;
  attribute P_FORWARD of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ : entity is 1;
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bid\(5 downto 0) <= m_axi_bid(5 downto 0);
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(511 downto 0) <= m_axi_rdata(511 downto 0);
  \^m_axi_rid\(5 downto 0) <= m_axi_rid(5 downto 0);
  \^m_axi_rlast\ <= m_axi_rlast;
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_araddr\(63 downto 0) <= s_axi_araddr(63 downto 0);
  \^s_axi_arburst\(1 downto 0) <= s_axi_arburst(1 downto 0);
  \^s_axi_arid\(5 downto 0) <= s_axi_arid(5 downto 0);
  \^s_axi_arlen\(7 downto 0) <= s_axi_arlen(7 downto 0);
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_awaddr\(63 downto 0) <= s_axi_awaddr(63 downto 0);
  \^s_axi_awburst\(1 downto 0) <= s_axi_awburst(1 downto 0);
  \^s_axi_awid\(5 downto 0) <= s_axi_awid(5 downto 0);
  \^s_axi_awlen\(7 downto 0) <= s_axi_awlen(7 downto 0);
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(511 downto 0) <= s_axi_wdata(511 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(63 downto 0) <= s_axi_wstrb(63 downto 0);
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_araddr(63 downto 0) <= \^s_axi_araddr\(63 downto 0);
  m_axi_arburst(1 downto 0) <= \^s_axi_arburst\(1 downto 0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(5 downto 0) <= \^s_axi_arid\(5 downto 0);
  m_axi_arlen(7 downto 0) <= \^s_axi_arlen\(7 downto 0);
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awaddr(63 downto 0) <= \^s_axi_awaddr\(63 downto 0);
  m_axi_awburst(1 downto 0) <= \^s_axi_awburst\(1 downto 0);
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(5 downto 0) <= \^s_axi_awid\(5 downto 0);
  m_axi_awlen(7 downto 0) <= \^s_axi_awlen\(7 downto 0);
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(511 downto 0) <= \^s_axi_wdata\(511 downto 0);
  m_axi_wid(5) <= \<const0>\;
  m_axi_wid(4) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(63 downto 0) <= \^s_axi_wstrb\(63 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bid(5 downto 0) <= \^m_axi_bid\(5 downto 0);
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(511 downto 0) <= \^m_axi_rdata\(511 downto 0);
  s_axi_rid(5 downto 0) <= \^m_axi_rid\(5 downto 0);
  s_axi_rlast <= \^m_axi_rlast\;
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0 is
  port (
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0 : entity is "bd_8181_ip_aresetn_data_h2c_00_0,pipeline_reg_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0 : entity is "pipeline_reg_v1_0_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLOCK, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^d\(0) <= d(0);
  q(0) <= \^d\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 is
  port (
    m_drck : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_sel : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_capture : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_shift : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_update : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_tdi : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_runtest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_tck : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_tms : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_bscanid_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_tdo : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_drck : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_capture : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_shift : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_update : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tdi : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_runtest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tck : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tms : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_bscanid_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_tdo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 : entity is "bd_8181_ip_bscan_user_00_0,bscan_wirethrough,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 : entity is "bscan_wirethrough,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0 is
  signal \^m_tdo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_bscanid_en\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_capture\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_drck\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_reset\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_runtest\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_sel\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_shift\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_tck\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_tdi\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_tms\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_update\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN BSCANID_EN";
  attribute X_INTERFACE_INFO of m_capture : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of m_drck : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN DRCK";
  attribute X_INTERFACE_INFO of m_reset : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN RESET";
  attribute X_INTERFACE_INFO of m_runtest : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of m_sel : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN SEL";
  attribute X_INTERFACE_INFO of m_shift : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of m_tck : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN TCK";
  attribute X_INTERFACE_INFO of m_tdi : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN TDI";
  attribute X_INTERFACE_INFO of m_tdo : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN TDO";
  attribute X_INTERFACE_INFO of m_tms : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN TMS";
  attribute X_INTERFACE_INFO of m_update : signal is "xilinx.com:interface:bscan:1.0 M_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of s_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_INFO of s_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of s_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of s_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of s_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of s_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of s_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of s_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of s_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of s_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of s_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of s_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
begin
  \^m_tdo\(0) <= m_tdo(0);
  \^s_bscanid_en\(0) <= s_bscanid_en(0);
  \^s_capture\(0) <= s_capture(0);
  \^s_drck\(0) <= s_drck(0);
  \^s_reset\(0) <= s_reset(0);
  \^s_runtest\(0) <= s_runtest(0);
  \^s_sel\(0) <= s_sel(0);
  \^s_shift\(0) <= s_shift(0);
  \^s_tck\(0) <= s_tck(0);
  \^s_tdi\(0) <= s_tdi(0);
  \^s_tms\(0) <= s_tms(0);
  \^s_update\(0) <= s_update(0);
  m_bscanid_en(0) <= \^s_bscanid_en\(0);
  m_capture(0) <= \^s_capture\(0);
  m_drck(0) <= \^s_drck\(0);
  m_reset(0) <= \^s_reset\(0);
  m_runtest(0) <= \^s_runtest\(0);
  m_sel(0) <= \^s_sel\(0);
  m_shift(0) <= \^s_shift\(0);
  m_tck(0) <= \^s_tck\(0);
  m_tdi(0) <= \^s_tdi\(0);
  m_tms(0) <= \^s_tms\(0);
  m_update(0) <= \^s_update\(0);
  s_tdo(0) <= \^m_tdo\(0);
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
J8HxNtRNOODdltljBFIypL46/hp+nPF2T/317Rfi1TJsDSCYYwuZy417N8wQKDMyWP1R+i3rzXit
PMWLadAl3w==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
eZpw8/+Cf3A6mztL4G6xRHvkQOVuRW8Xea3Khte6YrmAXwSeXLI9MKzefd8/eE9HwJwUVqHRxnZ1
55XwhB8WkEJVlfDCbDbluqbT91TQ1lRmcteBXsmjSurBBqUMaoLitWzO4nSyzhSM6aSS5srLIx+S
JRm7nirCca+7pLUwIOw=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
j6RhsXtPNEBJQ2HudCrmd0A6SflyTNXkMDj87CdoMN1n/+ULBTNmFmvUUTkAA9gh668F3y6e/bDW
2OB0xjrx2p8xsDQHQQtf2SiA8brdKVN5XAQXPCj2ZwDnEXGuqLH2hMzfWC6QK7j0Cp46MFun2jDb
W55tEefpZkxMFX12Bu+qbdu2DB+3t+cA1QlrJbNySJG1mZYJBrcVjGoCoqxubi1Uo+dAbah2pGRD
6NIkNx5qicSeTMAAaJ9oKSrzbUJ/ulDOTDjsV4cQEJfHUhrCO19wSVJZorHt0i3gLKRUJF/jlGA3
ZU/POdhcjChQswfFEhHTou460oDg12QpPHPbpg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Pp5P+z8f3u+kKEZs1RAVOsulvxq1RUT9DTg1Bjct+KDFh0lgr9GVMCck7x+NxG427EUGaMIB03Bz
ewFLiXGElupqIeTvQhsaye7lWk8PPZxtQ1VBIIwHFxLEU7o/naewA9IW7bOmQDe1oPW4sncLHgaR
4Sk1FDYtng6zymf6b7iagB9b3YUx5A0mxKv0fp5WxVf7xefqoqyZKyBEXBSBjjiceqVyiZMGFVxw
ftk1Exa+jrFzZO+9CRGQj4xXPnnjuuq79MZKcjlRgvGf54reneziImYaH8VmzXorocPhFl85M+u1
GGWRgECdFuvaf/VMfpK3xSFxqPtd3XeKp3rhag==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dkpFbwITGHSRUAGFBv31PAwYUga7sNW5ZBTjU7ovHsFfrFNv4zk5v6ynRb0kZNHvz2Z9vg8nvDui
qmTsMur/aCBUgtyL21UPc0qx9IXGHBky4UlUJLD5icXORl+SwCbAetupSctaq1ljG+myz8Nmpczz
vGY47+KviVH/KlTv3IO8WRAERdWV8pAdJR5kW1tJzptLds66hZCrlTb9eXY1ZPu8PcGPaIiTQvKz
S2xxW2IEnJ+MpcPeOl1XYcwR2YiIq+bqidrMmYK8riwXy+9SHxsAxRcJt+RXcVxySDJ2spv4kjh6
2G3wHZm0ik03bt54EXtlMtG0i9Gr26VRWAa5vw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
lr0PEbwpXWeLTH0CQ3v4hXqTGNpS/lS6tXh4qJFRsDirPv0vRg0LJCC6DaspPNq82OtlEv/YRewV
xYkqQOSi2yk+z6VYpLYNY9EC0v6uouYnl4tFDKUu0VxwTpI+bZlBJXMWYIqTbZs1dDMrigAnoDnd
dyQo2oGnvq3LbzsoSxM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
PhbTct7241+ZBtxNKbzQJxTBn/lNemz/V+qwwso4tXEARrlRIti5HL8UoMlEsFs1M70HwhG6LrPb
fZizAYoSJzKuPQaV7KbxRuxAdwwFdA73X54lPxz2vOmGwz4015mduGqGGLO1Qcs4DTfk4Dfp2Q/D
mXhi6SEAyUMlul9pDZhL3Dy5FegdCvsobuFOxRazh7qbL6+YFKbwkhLqD+hds6aDLwQRbi82WNIR
m9dj4jRbYFOD7pSSYvfEqWioFVkUY4diGcoo5CHcii7jL3gEca5h3WCei+xcWsa4Q76L/feBJ6K/
JrrTwjz2jkXjg9LbsM+PJ6magqSv1itncnM3pw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4000)
`protect data_block
6Z4ri+ZUPuB47O3F7/XdAu5M4hEUkWBegW2sBD9/ToLJGJhx1N6fZ5iuGuS9Q2CJG8Dy5aTYXxpX
Rr5ZE5SM4WNkU9wTB/LdvAh9AA9QXgCSdoU86Lsi9txqfepUFqU75BPO5ykCoF9fZG58ZyjiaE1q
1Ub/Kga7/xFtQR/BmJavWW997A0edMJWgXQtKvFfET9b41OQYWb1lA7jAtxUBn0xQICI6702Bfkq
ewRl4plH50D50tg36qMim////4i+QWeeUHrrMBtDusKnjSQ1vwOeP+cBg3uIQlwtvVam+YMx3eY5
vvxqmfCpdRDUUSjFRqv9Lt8Qc/j+5spZdiAO78wuKU2HLRKqVZ+XMsCw8Z7ugQZZbQk/5rrlQ2nb
kjIvXDLiu+wpkodstbSZNY05pWQA6oTc0wkyeBLzNFqrMsZD3YFzAxkd/JtzaX7KQzxmCHAOCEdp
0c5T/O8w6vInuexfwlYh7GlNS2spgNw/Bq04FHBfNrmsO6CgtVj9+eOS1LEIah9OaB27IWzqWQ6J
E8KdWSos65e+LGZil3xB2yFUDwOJzUL8sUM8xUIAeZKuozgWXd39AJ4M/YL4Yw6nB+zMYjAUJrSk
bofqy1ld5NtANpBosolA0DxkPZb60A35UGpXDxc7gUHpnYwQCyD7xgRpjkn+qXeCbk7h360tnzJh
zQoAgGxfVcqn6sFXAdBksOF/VmM6E/qvg/VIL78mDVa2PS9mVI7visiT/5if/ZTmtdVRjJfOyXiJ
jFZue/flEg1hojErercaG1r0IvTi6yg5toBPLYa/RnBzejLBejpuoulUPD+Rx/aqapx2JHIXlC0b
O5omJGuijdugxIbCt5WlmMb35d+6Z+Ut8Gh1v7b80tkOvTd4qNPJ3yw69w0GUeNiO12KQxHnrKU2
ZRmgAfGBFkRmlCa6KRlp1sVI69cszx/8BBunqgQr7vK562jJt5KHQh7uA4lcrdDWb4MseeiN3hDe
UloAqMU9f6tqCXiGEe0i1zvqL0I0Lb8baBO12aU0lUIC7tNHojYqcdcuMFEvgsPrlLAypEQNTa/y
pxFjb4u8CQ0v1CZuQe+RxMnXs9oLRVQ8Z+q+1cHvyhfqVTIWagsCvLYAig3krVhsNCDRRftBYHKh
Vdy8/NekJppUdine2vhmZF1ZBZDfBtFVBtsXvVQdqSRElzpk0k6b9l1QXPh2TLiZxLO+n9DyvN4R
qkHcGOZc7ASvRoGS+7hBsQnTgpWKTD/W9KV80IwXCpHzwuQzmzdsyyZfvhd7LjAw19yb6zMK32TZ
yj0NbaHZb1MFrKh1ZZ3ARd8vaUDc4TO7AwXL/d3JfjqCBC0O9NZYpoWibrgIfltcKTnNclGAb8wP
p7ytpDvcCNRMfPBfECwls2LzoN8VeEyRj01WhrvzmYAiP0/R6QhkxCsVDtvWt/zP7y2PNmhA5c1D
Yzfwq+u076TXeYGXwD8cUs9nd1k8Vdht+pkv3yqVVJ4u76dypoWjcc5PCtKYqGgL66Bs2Pj+XT7E
EUSGAi+WJ31kTZJTjFbaA8as5HGQMVZXmgIr/Nyq06tpSjqeN2CJsZM3YgQ1a5rCZZgWuBRN2SD/
+6pQUFBjvtaq3mWZawh5B5sjkQbTgJ93mXCAru+Pj+5apDV2DqLFHpoQFxyKQJh0TKsuLLUT6OAd
wWAex+Ess8Y6hn+CaT2HkIoII06pfH7xvanKshBzwNiYfSJ2wsIiP7RtfzJhuWqmw1JAwMCeFZjB
Xo0v6vDY9lD2d903U2oygjMNbsaxzlCF84jXpkLZpIM4zNrRjkBbHO8a+Fqfo771MW1F5HHyS2XM
CERS3/UIi2aR/uGyvTNlj6e1SBwWtDOSEJJ1RpEFQG3FVPwJTpwbVDLo2P+H+LlEGlLFv+wlN9qn
S6s1s7b5sr0udspgfds8jPX0BlmAoju+HW41fpk2ZoUf0B1RsAj20WaVBtEjBZJbQhcxAvITCGg9
gkRxVVgZxC1uZSJaDIBoY1MvBpMz4j78hGIExByhuk3l+dFp7rKJN5Y+sSj7/MWYi3m7nOFOqZlg
hp7sK4B8WCcmdPDJ2Am4KJiu8z6QFIeyHswXgWT0U2FqSsek25dkMr+N7gDRlXrq4GorjL204D8k
uBlhUvFX79B4WvjN18TZG5PZKt0t2OtoJKcFrZBe85JhSPFNTtM5+RseXL6Y1lOkE+PmN2FYAcXJ
NMUkwHc6i6UipQkqsw7DF+PpLv9wPOJKH7GGQiyJ8MvX/RT3S0k2NpNnrhRyh5A6zlld7mvnXX+H
PVW5Og++Fu+ks/bcyy7AcsEeHXnViGjSytm+5Dp2KNiGF+1n94CCfrB4O5n3/w5aIHlA2c9ATdUZ
P2VBWd6JBaR+h6MxeA0aSkSXk4Lh9+b8XBrpr/rJt+kmf2cd0kcfGAJCiqktn9z5hkfyV1FNBZRT
5EvPN23MSWCTx6ziJCNVDkp2c9f9YLmrnltql4NhwjSzKSkP7HJ+nY21mgWAjioGwMtuczkFqeNj
1YJtPalAW7kLGZI49EsJfz7xl+fqCMHxx4+tqsjSemfxk2n+l4wSxc3Xq3kovPalav9pSMSJv6E/
E1urNwto3qWvbKZX2pf3GQgRqRHVbL6JTSLB311r9ztOeScj+8HVl6AC1p1OtMpOg27UG7ZFaE+S
6SaQmmkwsWdiAxJqCEW8Hh3XXO1Tn9E8n8q6+GclRMIV9J1DfV2t95WOaFWx+pLftaLy6411eJsf
xVusKGqZybzL6eY3LXtoHJYCkkva5t3gdKPSrw0/rcaql3GEWp5tc4KLUnanFXA7dgB6huYHwSHx
DOlwIIX0NZQPYn7VKEEWGyBir3+LuFlT3SSWoXnV03EIQFP8xzBlnZsvm4h+NMIprUawrPReFW/W
MUrG/Uz0EvwWPBjXHIH9AoIryMimw7af5zz4MzWxNxJogk114slpZYl03Qu//ouQhLaEy/44jGcy
+Uh/OwH2GKBPufzu7BqC9jGs1dy6Wuy9R6ItPRkwP9kh7UVrU/LXd6WjDNqsNXP/sZWC5hAYGKMi
le/P0hmIDQgGS9SFm1Iag7z5GTFuZ0uw7ZxzDZNKuq/guPyWnvNXDV4swEQCI7WXt3xpTRUc1qb2
mCFE6W4w06EF12uKNsArV1WZMwIM7bxi3J3Ljg6WxcrBGe/sR7eW+fmjqzvsIds7XYTOBlOaBpQS
a9ICL+bW2gT2CPi1kLus3BfBvkcuXw5mTtkZIkPmuOuri8vqTF+jGvsxINAi27Ok0pIFk+kENIMU
L4EOJWae3MYJDr0o+MBHE4P6SsIAmzEa9BMUJ+KI/NeC71fgUzD6SdPdQxYKlXEAxKUOty2GAP5I
fja7Vth1hBBq+XkjFwVQPCwgwfosSAUONk8gB2rTFySybTXYfbARzTUYZaATJp64D7VynZp3Ai69
i93T+bnA/YAGRo9e8lelaOnAhUIqKWfGDyp2auJ0ZpOywZDVDLhQ4nWuUAjwaraSACLv4ORlGi6q
MmDMyoZco2QXyH4qz4Lzom45Eem8OqxsxlfHXHfwoB8REJfo3piA2tfoGUnfKfw0tXcHPr4I+vyw
Mm+is1DYZ4gy5z50grUYdEfcZBN0mJOK0ZH/qkMpH5jk9vhc3Whk+aBIEOjsBcYyH+MNuHVMT7R7
1z8eShbjTk/WolwAyLUJ785ITKJ7eUViF48fKLOQr/j1E9GECo+PtWI/4vDta02D+O2eGA6IoUGe
FcmNcCXxDba6XxREK5S2O5a45u41gDvebfaPgzbrSCQG2KrdsIpkNr2lEjiLeOm94iKyYyUiIIAK
E5I+3jYtE+2ojnCfohRQOdmsIsVlEpMW6ydsa0ImE0+iCMFzpvFNvoT/M0hFJ+a8SU6ybOgfx9i/
g1w47Mv/ngyvMtgHRaDSgB5u39IvZBXoi0Ph3UofpL53cwgpqL0heehNub9uR1CS56f+HO4jdJFP
XxAS8T0OSIutAxL2QQLxz4FBF10an/QtzfDXCBID+VnRIOiVamNAnoBre8z/IDvf3f1JClAAkDr6
vghrdWtySb2IvKsPB0ndv8bsmumUfEHsU7LxhR3X+D9fPUQikuGXCUoJJ3fkmKZ2bcR6e896Pofc
GUDGuLrDmPlwxOHEunge8EL3M88lQropOXDVEHDls3sQbriNwmNbT7P1uFPUIja/vNeCL34UyHuP
7qA99j0ttTEvXN8hXosP6ce0vFe/AhSvkaT7joX7L2cx3QxuHGwBQkxljy1CZ92tfPrvkmjx9oKO
Wa+wUyYYrYuDdc+BzzyApyOWcVt926uWMOUD9Ta+YEplnh5+AF5RVV9qXZENB2f0OpXydNbvq0V/
bnqmEC7q4W4kzV/+Mm4CHGbBimG25J7xWa23oXkqWYIGrdEk8T79FFs7T/hMHBSNDILpPLArQXsq
vQ+yYD9FiuqnfEV660mrygVehtbJV07rDLUqtc4PYG6dMEYT7/3AFel3/ytOulWEFB5gx1PiePi3
lGCzFgRzf3Pon3HUC5RnZN2ZesQeXFCkUYiUff5MKBfi1BHNl/NwYRfnHuekZvg8x3NtmK+L59r6
zNMKn8gkN97pxGnp4050RluFSOopCfN1zqNGx1ee/3S/vuyaRm7CcPjRSuBjS1WiA4rPLVbud1rt
TUhtpOZ2vDjvuzMRV58Q/D+dKhDmJPHY8XwYgTFaSOv9u5Z76oYc6AolsBCoIgNV2BviV/ByMtT/
5HnjgQ395peKQQSzVo+ot8nQDAme+1oLniPiD9wg0pEgbg7SAioB5lbI4ne3MaL+PEDXM1ZWFGqW
UEK96RSTJlAKzv6Ev2Z3du5Qt3TfKVl+pmdv8YW07zJQIWN51jyDWtH4Sa0Y8lnw1hlP9jkU3Nkn
/vFxkgIqwvOdx51ayUbiBATI8ozxYjV47020G/38nXbRV3uAjSH8zyVUuYeXhV9/YIT+zCnUymE4
mOlZjMC5nCIiH5difyMS1RQjwzWWxWSb3gd6qPiF0NTlvn2YLP7fya5HHJrj3p+ClJXtAqRUNryo
sU073tGWnPDtEVPM02FzJYoEOgT97FGM0pirXOHqWczzS9c/BL2rWHyqhskEAmivm9iDF1ArGRny
KCsmI7HUSjhIhFpUnqS2jIa9drSGVGhMH3czVqsE/bDmoj+RQtuA375Ukw0VqGMGYaCOGgPC1zXz
FbHmfRNDupUmfwRxQo2GPYOKMcc2g4s5KH7qChiamSaeSdrJzuYpKc4h+sGf+5qMPZr0nJvful24
vvlTvNC3r9+WFjxtShU8hXcpOGWRJwyj+1fcxyvJfroNAS5ND9CFGKvT6/29jTbjRvNFgrCk4u/K
lxsw+k2w33HoBw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0 : entity is "bd_8181_ip_aclk_ctrl_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0 : entity is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0__1\
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0 : entity is "bd_8181_ip_aclk_data_h2c_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0 : entity is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0__2\
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0 : entity is "bd_8181_ip_aclk_extra_c_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0 : entity is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0__3\
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0 : entity is "bd_8181_ip_aclk_kernel_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0 : entity is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLOCK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLOCK_IN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 CLOCK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME CLOCK_OUT, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_metadata_adapter_v1_0_0
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0 : entity is "bd_8181_m_ip_axi_ctrl_user_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0 : entity is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of inst : label is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of inst : label is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of inst : label is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of inst : label is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of inst : label is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of inst : label is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of inst : label is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of inst : label is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of inst : label is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of inst : label is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of inst : label is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of inst : label is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of inst : label is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of inst : label is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__1\
     port map (
      aclk => '0',
      aclk2x => '0',
      aresetn => '0',
      m_axi_araddr(24 downto 0) => m_axi_araddr(24 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(24 downto 0) => m_axi_awaddr(24 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(24 downto 0) => s_axi_araddr(24 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(24 downto 0) => s_axi_awaddr(24 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0 : entity is "bd_8181_m_ip_axi_data_h2c_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0 : entity is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0 is
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 64;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 512;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 6;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of inst : label is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of inst : label is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of inst : label is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of inst : label is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of inst : label is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of inst : label is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of inst : label is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of inst : label is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of inst : label is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of inst : label is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of inst : label is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of inst : label is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of inst : label is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 64;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 70;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 72;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 85;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 6;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 76;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 84;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 99;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 64;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 91;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 95;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 4;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 67;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 99;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 64;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 70;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 72;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 85;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 6;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 76;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 84;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 99;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 64;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 91;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 95;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 4;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 67;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 99;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 6;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 8;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 8;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 512;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 515;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 6;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 514;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 521;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 512;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 521;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 512;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 577;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 576;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 577;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 512;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 64;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 577;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of inst : label is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0__1\
     port map (
      aclk => '0',
      aclk2x => '0',
      aresetn => '0',
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(5 downto 0) => m_axi_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(5 downto 0) => m_axi_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(5 downto 0) => m_axi_bid(5 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(511 downto 0) => m_axi_rdata(511 downto 0),
      m_axi_rid(5 downto 0) => m_axi_rid(5 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wid(5 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(5 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(5 downto 0) => s_axi_arid(5 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"110",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(5 downto 0) => s_axi_awid(5 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"110",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(5 downto 0) => s_axi_bid(5 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      s_axi_rid(5 downto 0) => s_axi_rid(5 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(511 downto 0) => s_axi_wdata(511 downto 0),
      s_axi_wid(5 downto 0) => B"000000",
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(63 downto 0) => s_axi_wstrb(63 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0 : entity is "bd_8181_s_ip_axi_ctrl_user_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0 : entity is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 25;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of inst : label is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of inst : label is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of inst : label is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of inst : label is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of inst : label is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of inst : label is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of inst : label is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of inst : label is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of inst : label is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of inst : label is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of inst : label is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of inst : label is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of inst : label is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 25;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 28;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 0;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 28;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 28;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 0;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 28;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 0;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 28;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 25;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 28;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 0;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 28;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 28;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 28;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 25;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 28;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 0;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 28;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 0;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 28;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 0;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 28;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 0;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 28;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 0;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 28;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 25;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 28;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 0;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 28;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 28;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 0;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 28;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 0;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 2;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 2;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 34;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 0;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 0;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 34;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 34;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 36;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 0;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 36;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 36;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of inst : label is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice
     port map (
      aclk => '0',
      aclk2x => '0',
      aresetn => '0',
      m_axi_araddr(24 downto 0) => m_axi_araddr(24 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(24 downto 0) => m_axi_awaddr(24 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(24 downto 0) => s_axi_araddr(24 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(24 downto 0) => s_axi_awaddr(24 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0 : entity is "bd_8181_s_ip_axi_data_h2c_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0 : entity is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0 is
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 64;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 512;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 6;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtexuplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 0;
  attribute C_PIPELINES_MASTER_AR : integer;
  attribute C_PIPELINES_MASTER_AR of inst : label is 0;
  attribute C_PIPELINES_MASTER_AW : integer;
  attribute C_PIPELINES_MASTER_AW of inst : label is 0;
  attribute C_PIPELINES_MASTER_B : integer;
  attribute C_PIPELINES_MASTER_B of inst : label is 0;
  attribute C_PIPELINES_MASTER_R : integer;
  attribute C_PIPELINES_MASTER_R of inst : label is 0;
  attribute C_PIPELINES_MASTER_W : integer;
  attribute C_PIPELINES_MASTER_W of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AR : integer;
  attribute C_PIPELINES_MIDDLE_AR of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_AW : integer;
  attribute C_PIPELINES_MIDDLE_AW of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_B : integer;
  attribute C_PIPELINES_MIDDLE_B of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_R : integer;
  attribute C_PIPELINES_MIDDLE_R of inst : label is 0;
  attribute C_PIPELINES_MIDDLE_W : integer;
  attribute C_PIPELINES_MIDDLE_W of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AR : integer;
  attribute C_PIPELINES_SLAVE_AR of inst : label is 0;
  attribute C_PIPELINES_SLAVE_AW : integer;
  attribute C_PIPELINES_SLAVE_AW of inst : label is 0;
  attribute C_PIPELINES_SLAVE_B : integer;
  attribute C_PIPELINES_SLAVE_B of inst : label is 0;
  attribute C_PIPELINES_SLAVE_R : integer;
  attribute C_PIPELINES_SLAVE_R of inst : label is 0;
  attribute C_PIPELINES_SLAVE_W : integer;
  attribute C_PIPELINES_SLAVE_W of inst : label is 0;
  attribute C_REG_CONFIG_AR : integer;
  attribute C_REG_CONFIG_AR of inst : label is 0;
  attribute C_REG_CONFIG_AW : integer;
  attribute C_REG_CONFIG_AW of inst : label is 0;
  attribute C_REG_CONFIG_B : integer;
  attribute C_REG_CONFIG_B of inst : label is 0;
  attribute C_REG_CONFIG_R : integer;
  attribute C_REG_CONFIG_R of inst : label is 0;
  attribute C_REG_CONFIG_W : integer;
  attribute C_REG_CONFIG_W of inst : label is 0;
  attribute C_RESERVE_MODE : integer;
  attribute C_RESERVE_MODE of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 64;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 70;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 72;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 85;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 6;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 76;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 84;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 99;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 64;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 91;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 95;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 4;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 67;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 99;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 64;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 70;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 72;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 85;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 6;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 76;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 84;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 99;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 64;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 91;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 95;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 4;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 67;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 99;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 6;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 8;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 8;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 0;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 512;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 515;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 6;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 514;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 521;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 512;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 521;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 0;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 512;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 577;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 576;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 577;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 512;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 64;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 577;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 0;
  attribute P_FORWARD : integer;
  attribute P_FORWARD of inst : label is 0;
  attribute P_RESPONSE : integer;
  attribute P_RESPONSE of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_24_axi_register_slice__parameterized0\
     port map (
      aclk => '0',
      aclk2x => '0',
      aresetn => '0',
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(5 downto 0) => m_axi_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(5 downto 0) => m_axi_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(5 downto 0) => m_axi_bid(5 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(511 downto 0) => m_axi_rdata(511 downto 0),
      m_axi_rid(5 downto 0) => m_axi_rid(5 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wid(5 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(5 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(5 downto 0) => s_axi_arid(5 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"110",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(5 downto 0) => s_axi_awid(5 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"110",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(5 downto 0) => s_axi_bid(5 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      s_axi_rid(5 downto 0) => s_axi_rid(5 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(511 downto 0) => s_axi_wdata(511 downto 0),
      s_axi_wid(5 downto 0) => B"000000",
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(63 downto 0) => s_axi_wstrb(63 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181 is
  port (
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    BLP_S_BSCAN_USER_00_bscanid_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_capture : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_drck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_runtest : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_shift : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdi : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdo : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tms : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_update : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_CTRL_USER_00_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wvalid : out STD_LOGIC;
    ULP_M_BSCAN_USER_00_bscanid_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_capture : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_drck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_runtest : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_sel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_shift : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdi : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdo : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tms : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_update : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_data_h2c_00 : in STD_LOGIC;
    blp_s_aclk_extra_c_00 : in STD_LOGIC;
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    blp_s_aresetn_data_h2c_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aclk_ctrl_00 : out STD_LOGIC;
    ulp_m_aclk_data_h2c_00 : out STD_LOGIC;
    ulp_m_aclk_extra_c_00 : out STD_LOGIC;
    ulp_m_aclk_kernel_00 : out STD_LOGIC;
    ulp_m_aresetn_data_h2c_00 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181 : entity is "ii_level0_wire_pxi_ii_core_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181 is
  signal s_ip_axi_ctrl_user_00_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_ARREADY : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_ARVALID : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_AWREADY : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_AWVALID : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_BREADY : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_BVALID : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_RREADY : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_RVALID : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_WREADY : STD_LOGIC;
  signal s_ip_axi_ctrl_user_00_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_ip_axi_ctrl_user_00_M_AXI_WVALID : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_ARREADY : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_ARVALID : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_AWREADY : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_AWVALID : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_BREADY : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_BVALID : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_RLAST : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_RREADY : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_RVALID : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_WLAST : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_WREADY : STD_LOGIC;
  signal s_ip_axi_data_h2c_00_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_ip_axi_data_h2c_00_M_AXI_WVALID : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ip_aclk_ctrl_00 : label is "bd_8181_ip_aclk_ctrl_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ip_aclk_ctrl_00 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ip_aclk_ctrl_00 : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ip_aclk_data_h2c_00 : label is "bd_8181_ip_aclk_data_h2c_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of ip_aclk_data_h2c_00 : label is "yes";
  attribute X_CORE_INFO of ip_aclk_data_h2c_00 : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ip_aclk_extra_c_00 : label is "bd_8181_ip_aclk_extra_c_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of ip_aclk_extra_c_00 : label is "yes";
  attribute X_CORE_INFO of ip_aclk_extra_c_00 : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ip_aclk_kernel_00 : label is "bd_8181_ip_aclk_kernel_00_0,clk_metadata_adapter_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of ip_aclk_kernel_00 : label is "yes";
  attribute X_CORE_INFO of ip_aclk_kernel_00 : label is "clk_metadata_adapter_v1_0_0,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ip_aresetn_data_h2c_00 : label is "bd_8181_ip_aresetn_data_h2c_00_0,pipeline_reg_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of ip_aresetn_data_h2c_00 : label is "yes";
  attribute X_CORE_INFO of ip_aresetn_data_h2c_00 : label is "pipeline_reg_v1_0_0,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ip_bscan_user_00 : label is "bd_8181_ip_bscan_user_00_0,bscan_wirethrough,{}";
  attribute DowngradeIPIdentifiedWarnings of ip_bscan_user_00 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ip_bscan_user_00 : label is "package_project";
  attribute X_CORE_INFO of ip_bscan_user_00 : label is "bscan_wirethrough,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of m_ip_axi_ctrl_user_00 : label is "bd_8181_m_ip_axi_ctrl_user_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings of m_ip_axi_ctrl_user_00 : label is "yes";
  attribute X_CORE_INFO of m_ip_axi_ctrl_user_00 : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of m_ip_axi_data_h2c_00 : label is "bd_8181_m_ip_axi_data_h2c_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings of m_ip_axi_data_h2c_00 : label is "yes";
  attribute X_CORE_INFO of m_ip_axi_data_h2c_00 : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of s_ip_axi_ctrl_user_00 : label is "bd_8181_s_ip_axi_ctrl_user_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings of s_ip_axi_ctrl_user_00 : label is "yes";
  attribute X_CORE_INFO of s_ip_axi_ctrl_user_00 : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of s_ip_axi_data_h2c_00 : label is "bd_8181_s_ip_axi_data_h2c_00_0,axi_register_slice_v2_1_24_axi_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings of s_ip_axi_data_h2c_00 : label is "yes";
  attribute X_CORE_INFO of s_ip_axi_data_h2c_00 : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00:BLP_S_BSCAN_USER_00, ASSOCIATED_RESET BLP_S_ARESETN_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00:ULP_M_BSCAN_USER_00, ASSOCIATED_RESET ULP_M_ARESETN_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_DATA_H2C_00_araddr : signal is "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of blp_s_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of ulp_m_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of ulp_m_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.ULP_M_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
ip_aclk_ctrl_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_ctrl_00_0
     port map (
      clk_in => blp_s_aclk_ctrl_00,
      clk_out => ulp_m_aclk_ctrl_00
    );
ip_aclk_data_h2c_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_data_h2c_00_0
     port map (
      clk_in => blp_s_aclk_data_h2c_00,
      clk_out => ulp_m_aclk_data_h2c_00
    );
ip_aclk_extra_c_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_extra_c_00_0
     port map (
      clk_in => blp_s_aclk_extra_c_00,
      clk_out => ulp_m_aclk_extra_c_00
    );
ip_aclk_kernel_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aclk_kernel_00_0
     port map (
      clk_in => blp_s_aclk_kernel_00,
      clk_out => ulp_m_aclk_kernel_00
    );
ip_aresetn_data_h2c_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_aresetn_data_h2c_00_0
     port map (
      clk => '0',
      d(0) => blp_s_aresetn_data_h2c_00(0),
      q(0) => ulp_m_aresetn_data_h2c_00(0),
      resetn => '1'
    );
ip_bscan_user_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_ip_bscan_user_00_0
     port map (
      m_bscanid_en(0) => ULP_M_BSCAN_USER_00_bscanid_en(0),
      m_capture(0) => ULP_M_BSCAN_USER_00_capture(0),
      m_drck(0) => ULP_M_BSCAN_USER_00_drck(0),
      m_reset(0) => ULP_M_BSCAN_USER_00_reset(0),
      m_runtest(0) => ULP_M_BSCAN_USER_00_runtest(0),
      m_sel(0) => ULP_M_BSCAN_USER_00_sel(0),
      m_shift(0) => ULP_M_BSCAN_USER_00_shift(0),
      m_tck(0) => ULP_M_BSCAN_USER_00_tck(0),
      m_tdi(0) => ULP_M_BSCAN_USER_00_tdi(0),
      m_tdo(0) => ULP_M_BSCAN_USER_00_tdo(0),
      m_tms(0) => ULP_M_BSCAN_USER_00_tms(0),
      m_update(0) => ULP_M_BSCAN_USER_00_update(0),
      s_bscanid_en(0) => BLP_S_BSCAN_USER_00_bscanid_en(0),
      s_capture(0) => BLP_S_BSCAN_USER_00_capture(0),
      s_drck(0) => BLP_S_BSCAN_USER_00_drck(0),
      s_reset(0) => BLP_S_BSCAN_USER_00_reset(0),
      s_runtest(0) => BLP_S_BSCAN_USER_00_runtest(0),
      s_sel(0) => BLP_S_BSCAN_USER_00_sel(0),
      s_shift(0) => BLP_S_BSCAN_USER_00_shift(0),
      s_tck(0) => BLP_S_BSCAN_USER_00_tck(0),
      s_tdi(0) => BLP_S_BSCAN_USER_00_tdi(0),
      s_tdo(0) => BLP_S_BSCAN_USER_00_tdo(0),
      s_tms(0) => BLP_S_BSCAN_USER_00_tms(0),
      s_update(0) => BLP_S_BSCAN_USER_00_update(0)
    );
m_ip_axi_ctrl_user_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_ctrl_user_00_0
     port map (
      aclk => '0',
      aresetn => '0',
      m_axi_araddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0),
      m_axi_arprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0),
      m_axi_arready => ULP_M_AXI_CTRL_USER_00_arready,
      m_axi_arvalid => ULP_M_AXI_CTRL_USER_00_arvalid,
      m_axi_awaddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0),
      m_axi_awprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0),
      m_axi_awready => ULP_M_AXI_CTRL_USER_00_awready,
      m_axi_awvalid => ULP_M_AXI_CTRL_USER_00_awvalid,
      m_axi_bready => ULP_M_AXI_CTRL_USER_00_bready,
      m_axi_bresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0),
      m_axi_bvalid => ULP_M_AXI_CTRL_USER_00_bvalid,
      m_axi_rdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0),
      m_axi_rready => ULP_M_AXI_CTRL_USER_00_rready,
      m_axi_rresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0),
      m_axi_rvalid => ULP_M_AXI_CTRL_USER_00_rvalid,
      m_axi_wdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0),
      m_axi_wready => ULP_M_AXI_CTRL_USER_00_wready,
      m_axi_wstrb(3 downto 0) => ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0),
      m_axi_wvalid => ULP_M_AXI_CTRL_USER_00_wvalid,
      s_axi_araddr(24 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_ARADDR(24 downto 0),
      s_axi_arprot(2 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_ARPROT(2 downto 0),
      s_axi_arready => s_ip_axi_ctrl_user_00_M_AXI_ARREADY,
      s_axi_arvalid => s_ip_axi_ctrl_user_00_M_AXI_ARVALID,
      s_axi_awaddr(24 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_AWADDR(24 downto 0),
      s_axi_awprot(2 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_AWPROT(2 downto 0),
      s_axi_awready => s_ip_axi_ctrl_user_00_M_AXI_AWREADY,
      s_axi_awvalid => s_ip_axi_ctrl_user_00_M_AXI_AWVALID,
      s_axi_bready => s_ip_axi_ctrl_user_00_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => s_ip_axi_ctrl_user_00_M_AXI_BVALID,
      s_axi_rdata(31 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_RDATA(31 downto 0),
      s_axi_rready => s_ip_axi_ctrl_user_00_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => s_ip_axi_ctrl_user_00_M_AXI_RVALID,
      s_axi_wdata(31 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_WDATA(31 downto 0),
      s_axi_wready => s_ip_axi_ctrl_user_00_M_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => s_ip_axi_ctrl_user_00_M_AXI_WVALID
    );
m_ip_axi_data_h2c_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_m_ip_axi_data_h2c_00_0
     port map (
      aclk => '0',
      aresetn => '0',
      m_axi_araddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0),
      m_axi_arid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0),
      m_axi_arready => ULP_M_AXI_DATA_H2C_00_arready,
      m_axi_arvalid => ULP_M_AXI_DATA_H2C_00_arvalid,
      m_axi_awaddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0),
      m_axi_awid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0),
      m_axi_awready => ULP_M_AXI_DATA_H2C_00_awready,
      m_axi_awvalid => ULP_M_AXI_DATA_H2C_00_awvalid,
      m_axi_bid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_bid(5 downto 0),
      m_axi_bready => ULP_M_AXI_DATA_H2C_00_bready,
      m_axi_bresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0),
      m_axi_bvalid => ULP_M_AXI_DATA_H2C_00_bvalid,
      m_axi_rdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0),
      m_axi_rid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_rid(5 downto 0),
      m_axi_rlast => ULP_M_AXI_DATA_H2C_00_rlast,
      m_axi_rready => ULP_M_AXI_DATA_H2C_00_rready,
      m_axi_rresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0),
      m_axi_rvalid => ULP_M_AXI_DATA_H2C_00_rvalid,
      m_axi_wdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0),
      m_axi_wlast => ULP_M_AXI_DATA_H2C_00_wlast,
      m_axi_wready => ULP_M_AXI_DATA_H2C_00_wready,
      m_axi_wstrb(63 downto 0) => ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0),
      m_axi_wvalid => ULP_M_AXI_DATA_H2C_00_wvalid,
      s_axi_araddr(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARBURST(1 downto 0),
      s_axi_arid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARID(5 downto 0),
      s_axi_arlen(7 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARLEN(7 downto 0),
      s_axi_arready => s_ip_axi_data_h2c_00_M_AXI_ARREADY,
      s_axi_arvalid => s_ip_axi_data_h2c_00_M_AXI_ARVALID,
      s_axi_awaddr(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWBURST(1 downto 0),
      s_axi_awid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWID(5 downto 0),
      s_axi_awlen(7 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWLEN(7 downto 0),
      s_axi_awready => s_ip_axi_data_h2c_00_M_AXI_AWREADY,
      s_axi_awvalid => s_ip_axi_data_h2c_00_M_AXI_AWVALID,
      s_axi_bid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_BID(5 downto 0),
      s_axi_bready => s_ip_axi_data_h2c_00_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => s_ip_axi_data_h2c_00_M_AXI_BVALID,
      s_axi_rdata(511 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RDATA(511 downto 0),
      s_axi_rid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RID(5 downto 0),
      s_axi_rlast => s_ip_axi_data_h2c_00_M_AXI_RLAST,
      s_axi_rready => s_ip_axi_data_h2c_00_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => s_ip_axi_data_h2c_00_M_AXI_RVALID,
      s_axi_wdata(511 downto 0) => s_ip_axi_data_h2c_00_M_AXI_WDATA(511 downto 0),
      s_axi_wlast => s_ip_axi_data_h2c_00_M_AXI_WLAST,
      s_axi_wready => s_ip_axi_data_h2c_00_M_AXI_WREADY,
      s_axi_wstrb(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_WSTRB(63 downto 0),
      s_axi_wvalid => s_ip_axi_data_h2c_00_M_AXI_WVALID
    );
s_ip_axi_ctrl_user_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_ctrl_user_00_0
     port map (
      aclk => '0',
      aresetn => '0',
      m_axi_araddr(24 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => s_ip_axi_ctrl_user_00_M_AXI_ARREADY,
      m_axi_arvalid => s_ip_axi_ctrl_user_00_M_AXI_ARVALID,
      m_axi_awaddr(24 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => s_ip_axi_ctrl_user_00_M_AXI_AWREADY,
      m_axi_awvalid => s_ip_axi_ctrl_user_00_M_AXI_AWVALID,
      m_axi_bready => s_ip_axi_ctrl_user_00_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s_ip_axi_ctrl_user_00_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_RDATA(31 downto 0),
      m_axi_rready => s_ip_axi_ctrl_user_00_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s_ip_axi_ctrl_user_00_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_WDATA(31 downto 0),
      m_axi_wready => s_ip_axi_ctrl_user_00_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s_ip_axi_ctrl_user_00_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s_ip_axi_ctrl_user_00_M_AXI_WVALID,
      s_axi_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0),
      s_axi_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      s_axi_arready => BLP_S_AXI_CTRL_USER_00_arready,
      s_axi_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      s_axi_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      s_axi_awready => BLP_S_AXI_CTRL_USER_00_awready,
      s_axi_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      s_axi_bready => BLP_S_AXI_CTRL_USER_00_bready,
      s_axi_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      s_axi_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      s_axi_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      s_axi_rready => BLP_S_AXI_CTRL_USER_00_rready,
      s_axi_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      s_axi_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      s_axi_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      s_axi_wready => BLP_S_AXI_CTRL_USER_00_wready,
      s_axi_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      s_axi_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid
    );
s_ip_axi_data_h2c_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181_s_ip_axi_data_h2c_00_0
     port map (
      aclk => '0',
      aresetn => '0',
      m_axi_araddr(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARBURST(1 downto 0),
      m_axi_arid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARID(5 downto 0),
      m_axi_arlen(7 downto 0) => s_ip_axi_data_h2c_00_M_AXI_ARLEN(7 downto 0),
      m_axi_arready => s_ip_axi_data_h2c_00_M_AXI_ARREADY,
      m_axi_arvalid => s_ip_axi_data_h2c_00_M_AXI_ARVALID,
      m_axi_awaddr(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWBURST(1 downto 0),
      m_axi_awid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWID(5 downto 0),
      m_axi_awlen(7 downto 0) => s_ip_axi_data_h2c_00_M_AXI_AWLEN(7 downto 0),
      m_axi_awready => s_ip_axi_data_h2c_00_M_AXI_AWREADY,
      m_axi_awvalid => s_ip_axi_data_h2c_00_M_AXI_AWVALID,
      m_axi_bid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_BID(5 downto 0),
      m_axi_bready => s_ip_axi_data_h2c_00_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s_ip_axi_data_h2c_00_M_AXI_BVALID,
      m_axi_rdata(511 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RDATA(511 downto 0),
      m_axi_rid(5 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RID(5 downto 0),
      m_axi_rlast => s_ip_axi_data_h2c_00_M_AXI_RLAST,
      m_axi_rready => s_ip_axi_data_h2c_00_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s_ip_axi_data_h2c_00_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s_ip_axi_data_h2c_00_M_AXI_RVALID,
      m_axi_wdata(511 downto 0) => s_ip_axi_data_h2c_00_M_AXI_WDATA(511 downto 0),
      m_axi_wlast => s_ip_axi_data_h2c_00_M_AXI_WLAST,
      m_axi_wready => s_ip_axi_data_h2c_00_M_AXI_WREADY,
      m_axi_wstrb(63 downto 0) => s_ip_axi_data_h2c_00_M_AXI_WSTRB(63 downto 0),
      m_axi_wvalid => s_ip_axi_data_h2c_00_M_AXI_WVALID,
      s_axi_araddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0),
      s_axi_arid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_arid(5 downto 0),
      s_axi_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0),
      s_axi_arready => BLP_S_AXI_DATA_H2C_00_arready,
      s_axi_arvalid => BLP_S_AXI_DATA_H2C_00_arvalid,
      s_axi_awaddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0),
      s_axi_awid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_awid(5 downto 0),
      s_axi_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0),
      s_axi_awready => BLP_S_AXI_DATA_H2C_00_awready,
      s_axi_awvalid => BLP_S_AXI_DATA_H2C_00_awvalid,
      s_axi_bid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_bid(5 downto 0),
      s_axi_bready => BLP_S_AXI_DATA_H2C_00_bready,
      s_axi_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0),
      s_axi_bvalid => BLP_S_AXI_DATA_H2C_00_bvalid,
      s_axi_rdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0),
      s_axi_rid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_rid(5 downto 0),
      s_axi_rlast => BLP_S_AXI_DATA_H2C_00_rlast,
      s_axi_rready => BLP_S_AXI_DATA_H2C_00_rready,
      s_axi_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0),
      s_axi_rvalid => BLP_S_AXI_DATA_H2C_00_rvalid,
      s_axi_wdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0),
      s_axi_wlast => BLP_S_AXI_DATA_H2C_00_wlast,
      s_axi_wready => BLP_S_AXI_DATA_H2C_00_wready,
      s_axi_wstrb(63 downto 0) => BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0),
      s_axi_wvalid => BLP_S_AXI_DATA_H2C_00_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0 is
  port (
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    ulp_m_aclk_ctrl_00 : out STD_LOGIC;
    blp_s_aclk_extra_c_00 : in STD_LOGIC;
    ulp_m_aclk_extra_c_00 : out STD_LOGIC;
    blp_s_aclk_data_h2c_00 : in STD_LOGIC;
    ulp_m_aclk_data_h2c_00 : out STD_LOGIC;
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    ulp_m_aclk_kernel_00 : out STD_LOGIC;
    blp_s_aresetn_data_h2c_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aresetn_data_h2c_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_drck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_capture : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_shift : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_update : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdi : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_runtest : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tms : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_bscanid_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdo : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_drck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_sel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_capture : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_shift : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_update : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdi : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_runtest : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tms : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_bscanid_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdo : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0 : entity is "ii_level0_wire_pxi_ii_core_0,bd_8181,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0 : entity is "bd_8181,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "ii_level0_wire_pxi_ii_core_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_ctrl_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.blp_s_aclk_ctrl_00, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_data_h2c_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.blp_s_aclk_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00:BLP_S_BSCAN_USER_00, ASSOCIATED_RESET BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_extra_c_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.blp_s_aclk_extra_c_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_kernel_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.blp_s_aclk_kernel_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_ctrl_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.ulp_m_aclk_ctrl_00, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_data_h2c_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.ulp_m_aclk_data_h2c_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00:ULP_M_BSCAN_USER_00, ASSOCIATED_RESET ULP_M_ARESETN_DATA_H2C_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_extra_c_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.ulp_m_aclk_extra_c_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_kernel_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.ulp_m_aclk_kernel_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_00_rid : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of blp_s_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.blp_s_aresetn_data_h2c_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.blp_s_aresetn_data_h2c_00, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of ulp_m_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.ulp_m_aresetn_data_h2c_00 RST";
  attribute X_INTERFACE_PARAMETER of ulp_m_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.ulp_m_aresetn_data_h2c_00, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_8181
     port map (
      BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_arready => BLP_S_AXI_CTRL_USER_00_arready,
      BLP_S_AXI_CTRL_USER_00_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_awready => BLP_S_AXI_CTRL_USER_00_awready,
      BLP_S_AXI_CTRL_USER_00_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      BLP_S_AXI_CTRL_USER_00_bready => BLP_S_AXI_CTRL_USER_00_bready,
      BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_rready => BLP_S_AXI_CTRL_USER_00_rready,
      BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_wready => BLP_S_AXI_CTRL_USER_00_wready,
      BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_00_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid,
      BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_arid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_arid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_arready => BLP_S_AXI_DATA_H2C_00_arready,
      BLP_S_AXI_DATA_H2C_00_arvalid => BLP_S_AXI_DATA_H2C_00_arvalid,
      BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_awid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_awid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_awready => BLP_S_AXI_DATA_H2C_00_awready,
      BLP_S_AXI_DATA_H2C_00_awvalid => BLP_S_AXI_DATA_H2C_00_awvalid,
      BLP_S_AXI_DATA_H2C_00_bid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_bid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_bready => BLP_S_AXI_DATA_H2C_00_bready,
      BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_bvalid => BLP_S_AXI_DATA_H2C_00_bvalid,
      BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_rid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_rid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_rlast => BLP_S_AXI_DATA_H2C_00_rlast,
      BLP_S_AXI_DATA_H2C_00_rready => BLP_S_AXI_DATA_H2C_00_rready,
      BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_rvalid => BLP_S_AXI_DATA_H2C_00_rvalid,
      BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_wlast => BLP_S_AXI_DATA_H2C_00_wlast,
      BLP_S_AXI_DATA_H2C_00_wready => BLP_S_AXI_DATA_H2C_00_wready,
      BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0) => BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_wvalid => BLP_S_AXI_DATA_H2C_00_wvalid,
      BLP_S_BSCAN_USER_00_bscanid_en(0) => BLP_S_BSCAN_USER_00_bscanid_en(0),
      BLP_S_BSCAN_USER_00_capture(0) => BLP_S_BSCAN_USER_00_capture(0),
      BLP_S_BSCAN_USER_00_drck(0) => BLP_S_BSCAN_USER_00_drck(0),
      BLP_S_BSCAN_USER_00_reset(0) => BLP_S_BSCAN_USER_00_reset(0),
      BLP_S_BSCAN_USER_00_runtest(0) => BLP_S_BSCAN_USER_00_runtest(0),
      BLP_S_BSCAN_USER_00_sel(0) => BLP_S_BSCAN_USER_00_sel(0),
      BLP_S_BSCAN_USER_00_shift(0) => BLP_S_BSCAN_USER_00_shift(0),
      BLP_S_BSCAN_USER_00_tck(0) => BLP_S_BSCAN_USER_00_tck(0),
      BLP_S_BSCAN_USER_00_tdi(0) => BLP_S_BSCAN_USER_00_tdi(0),
      BLP_S_BSCAN_USER_00_tdo(0) => BLP_S_BSCAN_USER_00_tdo(0),
      BLP_S_BSCAN_USER_00_tms(0) => BLP_S_BSCAN_USER_00_tms(0),
      BLP_S_BSCAN_USER_00_update(0) => BLP_S_BSCAN_USER_00_update(0),
      ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_arready => ULP_M_AXI_CTRL_USER_00_arready,
      ULP_M_AXI_CTRL_USER_00_arvalid => ULP_M_AXI_CTRL_USER_00_arvalid,
      ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_awready => ULP_M_AXI_CTRL_USER_00_awready,
      ULP_M_AXI_CTRL_USER_00_awvalid => ULP_M_AXI_CTRL_USER_00_awvalid,
      ULP_M_AXI_CTRL_USER_00_bready => ULP_M_AXI_CTRL_USER_00_bready,
      ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_bvalid => ULP_M_AXI_CTRL_USER_00_bvalid,
      ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_rready => ULP_M_AXI_CTRL_USER_00_rready,
      ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_rvalid => ULP_M_AXI_CTRL_USER_00_rvalid,
      ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_wready => ULP_M_AXI_CTRL_USER_00_wready,
      ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0) => ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0),
      ULP_M_AXI_CTRL_USER_00_wvalid => ULP_M_AXI_CTRL_USER_00_wvalid,
      ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_arid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_arid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_arready => ULP_M_AXI_DATA_H2C_00_arready,
      ULP_M_AXI_DATA_H2C_00_arvalid => ULP_M_AXI_DATA_H2C_00_arvalid,
      ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_awid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_awid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_awready => ULP_M_AXI_DATA_H2C_00_awready,
      ULP_M_AXI_DATA_H2C_00_awvalid => ULP_M_AXI_DATA_H2C_00_awvalid,
      ULP_M_AXI_DATA_H2C_00_bid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_bid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_bready => ULP_M_AXI_DATA_H2C_00_bready,
      ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_bvalid => ULP_M_AXI_DATA_H2C_00_bvalid,
      ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_rid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_rid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_rlast => ULP_M_AXI_DATA_H2C_00_rlast,
      ULP_M_AXI_DATA_H2C_00_rready => ULP_M_AXI_DATA_H2C_00_rready,
      ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_rvalid => ULP_M_AXI_DATA_H2C_00_rvalid,
      ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_wlast => ULP_M_AXI_DATA_H2C_00_wlast,
      ULP_M_AXI_DATA_H2C_00_wready => ULP_M_AXI_DATA_H2C_00_wready,
      ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0) => ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_wvalid => ULP_M_AXI_DATA_H2C_00_wvalid,
      ULP_M_BSCAN_USER_00_bscanid_en(0) => ULP_M_BSCAN_USER_00_bscanid_en(0),
      ULP_M_BSCAN_USER_00_capture(0) => ULP_M_BSCAN_USER_00_capture(0),
      ULP_M_BSCAN_USER_00_drck(0) => ULP_M_BSCAN_USER_00_drck(0),
      ULP_M_BSCAN_USER_00_reset(0) => ULP_M_BSCAN_USER_00_reset(0),
      ULP_M_BSCAN_USER_00_runtest(0) => ULP_M_BSCAN_USER_00_runtest(0),
      ULP_M_BSCAN_USER_00_sel(0) => ULP_M_BSCAN_USER_00_sel(0),
      ULP_M_BSCAN_USER_00_shift(0) => ULP_M_BSCAN_USER_00_shift(0),
      ULP_M_BSCAN_USER_00_tck(0) => ULP_M_BSCAN_USER_00_tck(0),
      ULP_M_BSCAN_USER_00_tdi(0) => ULP_M_BSCAN_USER_00_tdi(0),
      ULP_M_BSCAN_USER_00_tdo(0) => ULP_M_BSCAN_USER_00_tdo(0),
      ULP_M_BSCAN_USER_00_tms(0) => ULP_M_BSCAN_USER_00_tms(0),
      ULP_M_BSCAN_USER_00_update(0) => ULP_M_BSCAN_USER_00_update(0),
      blp_s_aclk_ctrl_00 => blp_s_aclk_ctrl_00,
      blp_s_aclk_data_h2c_00 => blp_s_aclk_data_h2c_00,
      blp_s_aclk_extra_c_00 => blp_s_aclk_extra_c_00,
      blp_s_aclk_kernel_00 => blp_s_aclk_kernel_00,
      blp_s_aresetn_data_h2c_00(0) => blp_s_aresetn_data_h2c_00(0),
      ulp_m_aclk_ctrl_00 => ulp_m_aclk_ctrl_00,
      ulp_m_aclk_data_h2c_00 => ulp_m_aclk_data_h2c_00,
      ulp_m_aclk_extra_c_00 => ulp_m_aclk_extra_c_00,
      ulp_m_aclk_kernel_00 => ulp_m_aclk_kernel_00,
      ulp_m_aresetn_data_h2c_00(0) => ulp_m_aresetn_data_h2c_00(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire is
  port (
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    BLP_S_BSCAN_USER_00_bscanid_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_capture : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_drck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_runtest : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_shift : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdi : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdo : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tms : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_update : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_CTRL_USER_00_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wvalid : out STD_LOGIC;
    ULP_M_BSCAN_USER_00_bscanid_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_capture : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_drck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_runtest : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_sel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_shift : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdi : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdo : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tms : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_update : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_data_h2c_00 : in STD_LOGIC;
    blp_s_aclk_extra_c_00 : in STD_LOGIC;
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    blp_s_aresetn_data_h2c_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aclk_ctrl_00 : out STD_LOGIC;
    ulp_m_aclk_data_h2c_00 : out STD_LOGIC;
    ulp_m_aclk_extra_c_00 : out STD_LOGIC;
    ulp_m_aclk_kernel_00 : out STD_LOGIC;
    ulp_m_aresetn_data_h2c_00 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire : entity is "ii_level0_wire.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire is
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pxi_ii_core : label is "ii_level0_wire_pxi_ii_core_0,bd_8181,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pxi_ii_core : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pxi_ii_core : label is "bd_8181,Vivado 2021.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00, ASSOCIATED_RESET blp_s_aresetn_data_h2c_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_DATA_H2C_00_araddr : signal is "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of blp_s_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ulp_m_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of ulp_m_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.ULP_M_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
pxi_ii_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire_pxi_ii_core_0
     port map (
      BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_arready => BLP_S_AXI_CTRL_USER_00_arready,
      BLP_S_AXI_CTRL_USER_00_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_awready => BLP_S_AXI_CTRL_USER_00_awready,
      BLP_S_AXI_CTRL_USER_00_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      BLP_S_AXI_CTRL_USER_00_bready => BLP_S_AXI_CTRL_USER_00_bready,
      BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_rready => BLP_S_AXI_CTRL_USER_00_rready,
      BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_wready => BLP_S_AXI_CTRL_USER_00_wready,
      BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_00_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid,
      BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_arid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_arid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_arready => BLP_S_AXI_DATA_H2C_00_arready,
      BLP_S_AXI_DATA_H2C_00_arvalid => BLP_S_AXI_DATA_H2C_00_arvalid,
      BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_awid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_awid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_awready => BLP_S_AXI_DATA_H2C_00_awready,
      BLP_S_AXI_DATA_H2C_00_awvalid => BLP_S_AXI_DATA_H2C_00_awvalid,
      BLP_S_AXI_DATA_H2C_00_bid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_bid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_bready => BLP_S_AXI_DATA_H2C_00_bready,
      BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_bvalid => BLP_S_AXI_DATA_H2C_00_bvalid,
      BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_rid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_rid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_rlast => BLP_S_AXI_DATA_H2C_00_rlast,
      BLP_S_AXI_DATA_H2C_00_rready => BLP_S_AXI_DATA_H2C_00_rready,
      BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_rvalid => BLP_S_AXI_DATA_H2C_00_rvalid,
      BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_wlast => BLP_S_AXI_DATA_H2C_00_wlast,
      BLP_S_AXI_DATA_H2C_00_wready => BLP_S_AXI_DATA_H2C_00_wready,
      BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0) => BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_wvalid => BLP_S_AXI_DATA_H2C_00_wvalid,
      BLP_S_BSCAN_USER_00_bscanid_en(0) => BLP_S_BSCAN_USER_00_bscanid_en(0),
      BLP_S_BSCAN_USER_00_capture(0) => BLP_S_BSCAN_USER_00_capture(0),
      BLP_S_BSCAN_USER_00_drck(0) => BLP_S_BSCAN_USER_00_drck(0),
      BLP_S_BSCAN_USER_00_reset(0) => BLP_S_BSCAN_USER_00_reset(0),
      BLP_S_BSCAN_USER_00_runtest(0) => BLP_S_BSCAN_USER_00_runtest(0),
      BLP_S_BSCAN_USER_00_sel(0) => BLP_S_BSCAN_USER_00_sel(0),
      BLP_S_BSCAN_USER_00_shift(0) => BLP_S_BSCAN_USER_00_shift(0),
      BLP_S_BSCAN_USER_00_tck(0) => BLP_S_BSCAN_USER_00_tck(0),
      BLP_S_BSCAN_USER_00_tdi(0) => BLP_S_BSCAN_USER_00_tdi(0),
      BLP_S_BSCAN_USER_00_tdo(0) => BLP_S_BSCAN_USER_00_tdo(0),
      BLP_S_BSCAN_USER_00_tms(0) => BLP_S_BSCAN_USER_00_tms(0),
      BLP_S_BSCAN_USER_00_update(0) => BLP_S_BSCAN_USER_00_update(0),
      ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_arready => ULP_M_AXI_CTRL_USER_00_arready,
      ULP_M_AXI_CTRL_USER_00_arvalid => ULP_M_AXI_CTRL_USER_00_arvalid,
      ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_awready => ULP_M_AXI_CTRL_USER_00_awready,
      ULP_M_AXI_CTRL_USER_00_awvalid => ULP_M_AXI_CTRL_USER_00_awvalid,
      ULP_M_AXI_CTRL_USER_00_bready => ULP_M_AXI_CTRL_USER_00_bready,
      ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_bvalid => ULP_M_AXI_CTRL_USER_00_bvalid,
      ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_rready => ULP_M_AXI_CTRL_USER_00_rready,
      ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_rvalid => ULP_M_AXI_CTRL_USER_00_rvalid,
      ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_wready => ULP_M_AXI_CTRL_USER_00_wready,
      ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0) => ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0),
      ULP_M_AXI_CTRL_USER_00_wvalid => ULP_M_AXI_CTRL_USER_00_wvalid,
      ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_arid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_arid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_arready => ULP_M_AXI_DATA_H2C_00_arready,
      ULP_M_AXI_DATA_H2C_00_arvalid => ULP_M_AXI_DATA_H2C_00_arvalid,
      ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_awid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_awid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_awready => ULP_M_AXI_DATA_H2C_00_awready,
      ULP_M_AXI_DATA_H2C_00_awvalid => ULP_M_AXI_DATA_H2C_00_awvalid,
      ULP_M_AXI_DATA_H2C_00_bid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_bid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_bready => ULP_M_AXI_DATA_H2C_00_bready,
      ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_bvalid => ULP_M_AXI_DATA_H2C_00_bvalid,
      ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_rid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_rid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_rlast => ULP_M_AXI_DATA_H2C_00_rlast,
      ULP_M_AXI_DATA_H2C_00_rready => ULP_M_AXI_DATA_H2C_00_rready,
      ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_rvalid => ULP_M_AXI_DATA_H2C_00_rvalid,
      ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_wlast => ULP_M_AXI_DATA_H2C_00_wlast,
      ULP_M_AXI_DATA_H2C_00_wready => ULP_M_AXI_DATA_H2C_00_wready,
      ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0) => ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_wvalid => ULP_M_AXI_DATA_H2C_00_wvalid,
      ULP_M_BSCAN_USER_00_bscanid_en(0) => ULP_M_BSCAN_USER_00_bscanid_en(0),
      ULP_M_BSCAN_USER_00_capture(0) => ULP_M_BSCAN_USER_00_capture(0),
      ULP_M_BSCAN_USER_00_drck(0) => ULP_M_BSCAN_USER_00_drck(0),
      ULP_M_BSCAN_USER_00_reset(0) => ULP_M_BSCAN_USER_00_reset(0),
      ULP_M_BSCAN_USER_00_runtest(0) => ULP_M_BSCAN_USER_00_runtest(0),
      ULP_M_BSCAN_USER_00_sel(0) => ULP_M_BSCAN_USER_00_sel(0),
      ULP_M_BSCAN_USER_00_shift(0) => ULP_M_BSCAN_USER_00_shift(0),
      ULP_M_BSCAN_USER_00_tck(0) => ULP_M_BSCAN_USER_00_tck(0),
      ULP_M_BSCAN_USER_00_tdi(0) => ULP_M_BSCAN_USER_00_tdi(0),
      ULP_M_BSCAN_USER_00_tdo(0) => ULP_M_BSCAN_USER_00_tdo(0),
      ULP_M_BSCAN_USER_00_tms(0) => ULP_M_BSCAN_USER_00_tms(0),
      ULP_M_BSCAN_USER_00_update(0) => ULP_M_BSCAN_USER_00_update(0),
      blp_s_aclk_ctrl_00 => blp_s_aclk_ctrl_00,
      blp_s_aclk_data_h2c_00 => blp_s_aclk_data_h2c_00,
      blp_s_aclk_extra_c_00 => blp_s_aclk_extra_c_00,
      blp_s_aclk_kernel_00 => blp_s_aclk_kernel_00,
      blp_s_aresetn_data_h2c_00(0) => blp_s_aresetn_data_h2c_00(0),
      ulp_m_aclk_ctrl_00 => ulp_m_aclk_ctrl_00,
      ulp_m_aclk_data_h2c_00 => ulp_m_aclk_data_h2c_00,
      ulp_m_aclk_extra_c_00 => ulp_m_aclk_extra_c_00,
      ulp_m_aclk_kernel_00 => ulp_m_aclk_kernel_00,
      ulp_m_aresetn_data_h2c_00(0) => ulp_m_aresetn_data_h2c_00(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    BLP_S_BSCAN_USER_00_bscanid_en : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_capture : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_drck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_runtest : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_shift : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tck : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdi : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tdo : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_tms : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_BSCAN_USER_00_update : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_CTRL_USER_00_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wvalid : out STD_LOGIC;
    ULP_M_BSCAN_USER_00_bscanid_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_capture : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_drck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_runtest : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_sel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_shift : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tck : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdi : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tdo : in STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_tms : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_BSCAN_USER_00_update : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_data_h2c_00 : in STD_LOGIC;
    blp_s_aclk_extra_c_00 : in STD_LOGIC;
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    blp_s_aresetn_data_h2c_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aclk_ctrl_00 : out STD_LOGIC;
    ulp_m_aclk_data_h2c_00 : out STD_LOGIC;
    ulp_m_aclk_extra_c_00 : out STD_LOGIC;
    ulp_m_aclk_kernel_00 : out STD_LOGIC;
    ulp_m_aresetn_data_h2c_00 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cl_ii_level0_wire_0,ii_level0_wire,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IPI";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ii_level0_wire,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "ii_level0_wire.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_CTRL_USER_00_wvalid : signal is "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_PARAMETER of ULP_M_AXI_DATA_H2C_00_wvalid : signal is "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00:BLP_S_BSCAN_USER_00, ASSOCIATED_RESET blp_s_aresetn_data_h2c_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_data_h2c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_DATA_H2C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_data_h2c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00:ULP_M_BSCAN_USER_00, ASSOCIATED_RESET ulp_m_aresetn_data_h2c_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_extra_c_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_EXTRA_C_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_extra_c_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of ulp_m_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of BLP_S_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of ULP_M_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_capture : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_drck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_reset : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_runtest : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_sel : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_shift : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tck : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdi : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tdo : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_tms : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS";
  attribute X_INTERFACE_INFO of ULP_M_BSCAN_USER_00_update : signal is "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE";
  attribute X_INTERFACE_INFO of blp_s_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_DATA_H2C_00, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ulp_m_aresetn_data_h2c_00 : signal is "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_DATA_H2C_00 RST";
  attribute X_INTERFACE_PARAMETER of ulp_m_aresetn_data_h2c_00 : signal is "XIL_INTERFACENAME RST.ULP_M_ARESETN_DATA_H2C_00, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ii_level0_wire
     port map (
      BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_arready => BLP_S_AXI_CTRL_USER_00_arready,
      BLP_S_AXI_CTRL_USER_00_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_awready => BLP_S_AXI_CTRL_USER_00_awready,
      BLP_S_AXI_CTRL_USER_00_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      BLP_S_AXI_CTRL_USER_00_bready => BLP_S_AXI_CTRL_USER_00_bready,
      BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_rready => BLP_S_AXI_CTRL_USER_00_rready,
      BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_wready => BLP_S_AXI_CTRL_USER_00_wready,
      BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_00_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid,
      BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_araddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_arid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_arid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_arready => BLP_S_AXI_DATA_H2C_00_arready,
      BLP_S_AXI_DATA_H2C_00_arvalid => BLP_S_AXI_DATA_H2C_00_arvalid,
      BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0) => BLP_S_AXI_DATA_H2C_00_awaddr(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_awid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_awid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_awready => BLP_S_AXI_DATA_H2C_00_awready,
      BLP_S_AXI_DATA_H2C_00_awvalid => BLP_S_AXI_DATA_H2C_00_awvalid,
      BLP_S_AXI_DATA_H2C_00_bid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_bid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_bready => BLP_S_AXI_DATA_H2C_00_bready,
      BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_bvalid => BLP_S_AXI_DATA_H2C_00_bvalid,
      BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_rid(5 downto 0) => BLP_S_AXI_DATA_H2C_00_rid(5 downto 0),
      BLP_S_AXI_DATA_H2C_00_rlast => BLP_S_AXI_DATA_H2C_00_rlast,
      BLP_S_AXI_DATA_H2C_00_rready => BLP_S_AXI_DATA_H2C_00_rready,
      BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_rvalid => BLP_S_AXI_DATA_H2C_00_rvalid,
      BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_wlast => BLP_S_AXI_DATA_H2C_00_wlast,
      BLP_S_AXI_DATA_H2C_00_wready => BLP_S_AXI_DATA_H2C_00_wready,
      BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0) => BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_wvalid => BLP_S_AXI_DATA_H2C_00_wvalid,
      BLP_S_BSCAN_USER_00_bscanid_en(0) => BLP_S_BSCAN_USER_00_bscanid_en(0),
      BLP_S_BSCAN_USER_00_capture(0) => BLP_S_BSCAN_USER_00_capture(0),
      BLP_S_BSCAN_USER_00_drck(0) => BLP_S_BSCAN_USER_00_drck(0),
      BLP_S_BSCAN_USER_00_reset(0) => BLP_S_BSCAN_USER_00_reset(0),
      BLP_S_BSCAN_USER_00_runtest(0) => BLP_S_BSCAN_USER_00_runtest(0),
      BLP_S_BSCAN_USER_00_sel(0) => BLP_S_BSCAN_USER_00_sel(0),
      BLP_S_BSCAN_USER_00_shift(0) => BLP_S_BSCAN_USER_00_shift(0),
      BLP_S_BSCAN_USER_00_tck(0) => BLP_S_BSCAN_USER_00_tck(0),
      BLP_S_BSCAN_USER_00_tdi(0) => BLP_S_BSCAN_USER_00_tdi(0),
      BLP_S_BSCAN_USER_00_tdo(0) => BLP_S_BSCAN_USER_00_tdo(0),
      BLP_S_BSCAN_USER_00_tms(0) => BLP_S_BSCAN_USER_00_tms(0),
      BLP_S_BSCAN_USER_00_update(0) => BLP_S_BSCAN_USER_00_update(0),
      ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_arready => ULP_M_AXI_CTRL_USER_00_arready,
      ULP_M_AXI_CTRL_USER_00_arvalid => ULP_M_AXI_CTRL_USER_00_arvalid,
      ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0) => ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0) => ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_awready => ULP_M_AXI_CTRL_USER_00_awready,
      ULP_M_AXI_CTRL_USER_00_awvalid => ULP_M_AXI_CTRL_USER_00_awvalid,
      ULP_M_AXI_CTRL_USER_00_bready => ULP_M_AXI_CTRL_USER_00_bready,
      ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_bvalid => ULP_M_AXI_CTRL_USER_00_bvalid,
      ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_rready => ULP_M_AXI_CTRL_USER_00_rready,
      ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0) => ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_rvalid => ULP_M_AXI_CTRL_USER_00_rvalid,
      ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0) => ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_wready => ULP_M_AXI_CTRL_USER_00_wready,
      ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0) => ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0),
      ULP_M_AXI_CTRL_USER_00_wvalid => ULP_M_AXI_CTRL_USER_00_wvalid,
      ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_araddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_arid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_arid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_arready => ULP_M_AXI_DATA_H2C_00_arready,
      ULP_M_AXI_DATA_H2C_00_arvalid => ULP_M_AXI_DATA_H2C_00_arvalid,
      ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0) => ULP_M_AXI_DATA_H2C_00_awaddr(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0) => ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_awid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_awid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0) => ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_awready => ULP_M_AXI_DATA_H2C_00_awready,
      ULP_M_AXI_DATA_H2C_00_awvalid => ULP_M_AXI_DATA_H2C_00_awvalid,
      ULP_M_AXI_DATA_H2C_00_bid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_bid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_bready => ULP_M_AXI_DATA_H2C_00_bready,
      ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_bvalid => ULP_M_AXI_DATA_H2C_00_bvalid,
      ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_rid(5 downto 0) => ULP_M_AXI_DATA_H2C_00_rid(5 downto 0),
      ULP_M_AXI_DATA_H2C_00_rlast => ULP_M_AXI_DATA_H2C_00_rlast,
      ULP_M_AXI_DATA_H2C_00_rready => ULP_M_AXI_DATA_H2C_00_rready,
      ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0) => ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_rvalid => ULP_M_AXI_DATA_H2C_00_rvalid,
      ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0) => ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_wlast => ULP_M_AXI_DATA_H2C_00_wlast,
      ULP_M_AXI_DATA_H2C_00_wready => ULP_M_AXI_DATA_H2C_00_wready,
      ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0) => ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_wvalid => ULP_M_AXI_DATA_H2C_00_wvalid,
      ULP_M_BSCAN_USER_00_bscanid_en(0) => ULP_M_BSCAN_USER_00_bscanid_en(0),
      ULP_M_BSCAN_USER_00_capture(0) => ULP_M_BSCAN_USER_00_capture(0),
      ULP_M_BSCAN_USER_00_drck(0) => ULP_M_BSCAN_USER_00_drck(0),
      ULP_M_BSCAN_USER_00_reset(0) => ULP_M_BSCAN_USER_00_reset(0),
      ULP_M_BSCAN_USER_00_runtest(0) => ULP_M_BSCAN_USER_00_runtest(0),
      ULP_M_BSCAN_USER_00_sel(0) => ULP_M_BSCAN_USER_00_sel(0),
      ULP_M_BSCAN_USER_00_shift(0) => ULP_M_BSCAN_USER_00_shift(0),
      ULP_M_BSCAN_USER_00_tck(0) => ULP_M_BSCAN_USER_00_tck(0),
      ULP_M_BSCAN_USER_00_tdi(0) => ULP_M_BSCAN_USER_00_tdi(0),
      ULP_M_BSCAN_USER_00_tdo(0) => ULP_M_BSCAN_USER_00_tdo(0),
      ULP_M_BSCAN_USER_00_tms(0) => ULP_M_BSCAN_USER_00_tms(0),
      ULP_M_BSCAN_USER_00_update(0) => ULP_M_BSCAN_USER_00_update(0),
      blp_s_aclk_ctrl_00 => blp_s_aclk_ctrl_00,
      blp_s_aclk_data_h2c_00 => blp_s_aclk_data_h2c_00,
      blp_s_aclk_extra_c_00 => blp_s_aclk_extra_c_00,
      blp_s_aclk_kernel_00 => blp_s_aclk_kernel_00,
      blp_s_aresetn_data_h2c_00(0) => blp_s_aresetn_data_h2c_00(0),
      ulp_m_aclk_ctrl_00 => ulp_m_aclk_ctrl_00,
      ulp_m_aclk_data_h2c_00 => ulp_m_aclk_data_h2c_00,
      ulp_m_aclk_extra_c_00 => ulp_m_aclk_extra_c_00,
      ulp_m_aclk_kernel_00 => ulp_m_aclk_kernel_00,
      ulp_m_aresetn_data_h2c_00(0) => ulp_m_aresetn_data_h2c_00(0)
    );
end STRUCTURE;
