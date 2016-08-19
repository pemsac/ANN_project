--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4.2 (win64) Build 1494164 Fri Feb 26 04:18:56 MST 2016
--Date        : Fri Aug 12 00:59:30 2016
--Host        : DESKTOP-I329812 running 64-bit major release  (build 9200)
--Command     : generate_target test.bd
--Design      : test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test is
  port (
    In1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1_tready : out STD_LOGIC;
    In1_tvalid : in STD_LOGIC;
    In2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In2_tready : out STD_LOGIC;
    In2_tvalid : in STD_LOGIC;
    Out1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Out1_tready : in STD_LOGIC;
    Out1_tvalid : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of test : entity is "test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of test : entity is "test.hwdef";
end test;

architecture STRUCTURE of test is
  component test_matrix_multiply_top_0_2 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    A_TVALID : in STD_LOGIC;
    A_TREADY : out STD_LOGIC;
    A_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B_TVALID : in STD_LOGIC;
    B_TREADY : out STD_LOGIC;
    B_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C_TVALID : out STD_LOGIC;
    C_TREADY : in STD_LOGIC;
    C_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component test_matrix_multiply_top_0_2;
  signal In1_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In1_1_TREADY : STD_LOGIC;
  signal In1_1_TVALID : STD_LOGIC;
  signal In2_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal In2_1_TREADY : STD_LOGIC;
  signal In2_1_TVALID : STD_LOGIC;
  signal ap_clk_1 : STD_LOGIC;
  signal ap_ctrl_1_done : STD_LOGIC;
  signal ap_ctrl_1_idle : STD_LOGIC;
  signal ap_ctrl_1_ready : STD_LOGIC;
  signal ap_ctrl_1_start : STD_LOGIC;
  signal ap_rst_n_1 : STD_LOGIC;
  signal matrix_multiply_top_0_C_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal matrix_multiply_top_0_C_TREADY : STD_LOGIC;
  signal matrix_multiply_top_0_C_TVALID : STD_LOGIC;
begin
  In1_1_TDATA(31 downto 0) <= In1_tdata(31 downto 0);
  In1_1_TVALID <= In1_tvalid;
  In1_tready <= In1_1_TREADY;
  In2_1_TDATA(31 downto 0) <= In2_tdata(31 downto 0);
  In2_1_TVALID <= In2_tvalid;
  In2_tready <= In2_1_TREADY;
  Out1_tdata(31 downto 0) <= matrix_multiply_top_0_C_TDATA(31 downto 0);
  Out1_tvalid <= matrix_multiply_top_0_C_TVALID;
  ap_clk_1 <= ap_clk;
  ap_ctrl_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_1_done;
  ap_ctrl_idle <= ap_ctrl_1_idle;
  ap_ctrl_ready <= ap_ctrl_1_ready;
  ap_rst_n_1 <= ap_rst_n;
  matrix_multiply_top_0_C_TREADY <= Out1_tready;
matrix_multiply_top_0: component test_matrix_multiply_top_0_2
     port map (
      A_TDATA(31 downto 0) => In1_1_TDATA(31 downto 0),
      A_TREADY => In1_1_TREADY,
      A_TVALID => In1_1_TVALID,
      B_TDATA(31 downto 0) => In2_1_TDATA(31 downto 0),
      B_TREADY => In2_1_TREADY,
      B_TVALID => In2_1_TVALID,
      C_TDATA(31 downto 0) => matrix_multiply_top_0_C_TDATA(31 downto 0),
      C_TREADY => matrix_multiply_top_0_C_TREADY,
      C_TVALID => matrix_multiply_top_0_C_TVALID,
      ap_clk => ap_clk_1,
      ap_done => ap_ctrl_1_done,
      ap_idle => ap_ctrl_1_idle,
      ap_ready => ap_ctrl_1_ready,
      ap_rst_n => ap_rst_n_1,
      ap_start => ap_ctrl_1_start
    );
end STRUCTURE;
