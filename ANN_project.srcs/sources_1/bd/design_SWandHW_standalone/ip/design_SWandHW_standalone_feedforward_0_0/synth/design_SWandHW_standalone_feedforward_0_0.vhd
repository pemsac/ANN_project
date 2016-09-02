-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: UC3M:MISEA_Thesis:feedforward:1.4
-- IP Revision: 1609011434

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_SWandHW_standalone_feedforward_0_0 IS
  PORT (
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    P_config_TVALID : IN STD_LOGIC;
    P_config_TREADY : OUT STD_LOGIC;
    P_config_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    P_WandB_TVALID : IN STD_LOGIC;
    P_WandB_TREADY : OUT STD_LOGIC;
    P_WandB_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    P_uOut_TVALID : OUT STD_LOGIC;
    P_uOut_TREADY : IN STD_LOGIC;
    P_uOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    P_netIn_TVALID : IN STD_LOGIC;
    P_netIn_TREADY : OUT STD_LOGIC;
    P_netIn_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    P_netOut_TVALID : OUT STD_LOGIC;
    P_netOut_TREADY : IN STD_LOGIC;
    P_netOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_SWandHW_standalone_feedforward_0_0;

ARCHITECTURE design_SWandHW_standalone_feedforward_0_0_arch OF design_SWandHW_standalone_feedforward_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_SWandHW_standalone_feedforward_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT feedforward IS
    GENERIC (
      C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXILITES_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
      s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_AXILiteS_WVALID : IN STD_LOGIC;
      s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_BREADY : IN STD_LOGIC;
      s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
      s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
      s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
      s_axi_AXILiteS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      P_config_TVALID : IN STD_LOGIC;
      P_config_TREADY : OUT STD_LOGIC;
      P_config_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      P_WandB_TVALID : IN STD_LOGIC;
      P_WandB_TREADY : OUT STD_LOGIC;
      P_WandB_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      P_uOut_TVALID : OUT STD_LOGIC;
      P_uOut_TREADY : IN STD_LOGIC;
      P_uOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      P_netIn_TVALID : IN STD_LOGIC;
      P_netIn_TREADY : OUT STD_LOGIC;
      P_netIn_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      P_netOut_TVALID : OUT STD_LOGIC;
      P_netOut_TREADY : IN STD_LOGIC;
      P_netOut_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT feedforward;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_SWandHW_standalone_feedforward_0_0_arch: ARCHITECTURE IS "feedforward,Vivado 2015.4.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_SWandHW_standalone_feedforward_0_0_arch : ARCHITECTURE IS "design_SWandHW_standalone_feedforward_0_0,feedforward,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_AXILiteS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF P_config_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 P_config TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF P_config_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 P_config TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF P_config_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 P_config TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF P_WandB_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 P_WandB TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF P_WandB_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 P_WandB TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF P_WandB_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 P_WandB TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF P_uOut_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 P_uOut TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF P_uOut_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 P_uOut TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF P_uOut_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 P_uOut TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF P_netIn_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netIn TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF P_netIn_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netIn TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF P_netIn_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netIn TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF P_netOut_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netOut TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF P_netOut_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netOut TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF P_netOut_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 P_netOut TDATA";
BEGIN
  U0 : feedforward
    GENERIC MAP (
      C_S_AXI_AXILITES_ADDR_WIDTH => 5,
      C_S_AXI_AXILITES_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_AXILiteS_AWADDR => s_axi_AXILiteS_AWADDR,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_WDATA => s_axi_AXILiteS_WDATA,
      s_axi_AXILiteS_WSTRB => s_axi_AXILiteS_WSTRB,
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_BRESP => s_axi_AXILiteS_BRESP,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_ARADDR => s_axi_AXILiteS_ARADDR,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_RDATA => s_axi_AXILiteS_RDATA,
      s_axi_AXILiteS_RRESP => s_axi_AXILiteS_RRESP,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      P_config_TVALID => P_config_TVALID,
      P_config_TREADY => P_config_TREADY,
      P_config_TDATA => P_config_TDATA,
      P_WandB_TVALID => P_WandB_TVALID,
      P_WandB_TREADY => P_WandB_TREADY,
      P_WandB_TDATA => P_WandB_TDATA,
      P_uOut_TVALID => P_uOut_TVALID,
      P_uOut_TREADY => P_uOut_TREADY,
      P_uOut_TDATA => P_uOut_TDATA,
      P_netIn_TVALID => P_netIn_TVALID,
      P_netIn_TREADY => P_netIn_TREADY,
      P_netIn_TDATA => P_netIn_TDATA,
      P_netOut_TVALID => P_netOut_TVALID,
      P_netOut_TREADY => P_netOut_TREADY,
      P_netOut_TDATA => P_netOut_TDATA
    );
END design_SWandHW_standalone_feedforward_0_0_arch;
