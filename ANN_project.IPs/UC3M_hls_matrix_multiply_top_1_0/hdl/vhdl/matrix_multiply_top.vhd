-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrix_multiply_top is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    A_TVALID : IN STD_LOGIC;
    A_TREADY : OUT STD_LOGIC;
    B_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    B_TVALID : IN STD_LOGIC;
    B_TREADY : OUT STD_LOGIC;
    C_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_TVALID : OUT STD_LOGIC;
    C_TREADY : IN STD_LOGIC );
end;


architecture behav of matrix_multiply_top is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrix_multiply_top,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.646000,HLS_SYN_LAT=97,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=766,HLS_SYN_LUT=975}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_27 : BOOLEAN;
    signal r_1_fu_206_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal r_1_reg_383 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_50 : BOOLEAN;
    signal tmp_9_fu_228_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_9_reg_388 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond5_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_1_fu_240_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_65 : BOOLEAN;
    signal exitcond4_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_71 : BOOLEAN;
    signal r_2_fu_266_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal r_2_reg_404 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_81 : BOOLEAN;
    signal tmp_1_fu_288_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_1_reg_409 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond3_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_2_fu_300_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_95 : BOOLEAN;
    signal exitcond2_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_101 : BOOLEAN;
    signal r_3_fu_326_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal r_3_reg_425 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_111 : BOOLEAN;
    signal tmp_7_fu_348_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_7_reg_430 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond1_fu_320_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_3_fu_360_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal c_3_reg_438 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_7 : STD_LOGIC;
    signal ap_sig_bdd_125 : BOOLEAN;
    signal exitcond_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_i_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal a_i_ce0 : STD_LOGIC;
    signal a_i_we0 : STD_LOGIC;
    signal a_i_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal a_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal b_i_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal b_i_ce0 : STD_LOGIC;
    signal b_i_we0 : STD_LOGIC;
    signal b_i_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal b_i_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal C_assign_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal C_assign_ce0 : STD_LOGIC;
    signal C_assign_we0 : STD_LOGIC;
    signal C_assign_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal C_assign_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_done : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_idle : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_ready : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_ce0 : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_ce0 : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_ce0 : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_we0 : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_reg_127 : STD_LOGIC_VECTOR (1 downto 0);
    signal c_reg_138 : STD_LOGIC_VECTOR (1 downto 0);
    signal r1_reg_149 : STD_LOGIC_VECTOR (1 downto 0);
    signal c2_reg_160 : STD_LOGIC_VECTOR (1 downto 0);
    signal r3_reg_171 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_203 : BOOLEAN;
    signal c4_reg_182 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_8 : STD_LOGIC;
    signal ap_sig_bdd_217 : BOOLEAN;
    signal ap_sig_ioackin_C_TREADY : STD_LOGIC;
    signal grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg : STD_LOGIC := '0';
    signal tmp_12_cast_fu_255_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_cast_fu_315_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_16_cast_fu_375_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_C_TREADY : STD_LOGIC := '0';
    signal tmp_6_fu_216_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_cast_fu_224_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast_fu_212_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_cast_fu_246_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_fu_250_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_276_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl1_cast_fu_284_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_1_cast_fu_272_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_7_cast_fu_306_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_10_fu_310_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_5_fu_336_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl2_cast_fu_344_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_5_cast_fu_332_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast_10_fu_366_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_11_fu_370_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component matrix_multiply_top_matrix_multiply_alt2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        A_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        A_ce0 : OUT STD_LOGIC;
        A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        B_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        B_ce0 : OUT STD_LOGIC;
        B_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        C_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        C_ce0 : OUT STD_LOGIC;
        C_we0 : OUT STD_LOGIC;
        C_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component matrix_multiply_top_a_i IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    a_i_U : component matrix_multiply_top_a_i
    generic map (
        DataWidth => 32,
        AddressRange => 9,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => a_i_address0,
        ce0 => a_i_ce0,
        we0 => a_i_we0,
        d0 => a_i_d0,
        q0 => a_i_q0);

    b_i_U : component matrix_multiply_top_a_i
    generic map (
        DataWidth => 32,
        AddressRange => 9,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => b_i_address0,
        ce0 => b_i_ce0,
        we0 => b_i_we0,
        d0 => b_i_d0,
        q0 => b_i_q0);

    C_assign_U : component matrix_multiply_top_a_i
    generic map (
        DataWidth => 32,
        AddressRange => 9,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => C_assign_address0,
        ce0 => C_assign_ce0,
        we0 => C_assign_we0,
        d0 => C_assign_d0,
        q0 => C_assign_q0);

    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193 : component matrix_multiply_top_matrix_multiply_alt2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start,
        ap_done => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_done,
        ap_idle => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_idle,
        ap_ready => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_ready,
        A_address0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_address0,
        A_ce0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_ce0,
        A_q0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_q0,
        B_address0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_address0,
        B_ce0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_ce0,
        B_q0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_q0,
        C_address0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_address0,
        C_ce0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_ce0,
        C_we0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_we0,
        C_d0 => grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_d0);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ioackin_C_TREADY assign process. --
    ap_reg_ioackin_C_TREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_C_TREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8)) then
                    if (not((ap_const_logic_0 = ap_sig_ioackin_C_TREADY))) then 
                        ap_reg_ioackin_C_TREADY <= ap_const_logic_0;
                    elsif ((ap_const_logic_1 = C_TREADY)) then 
                        ap_reg_ioackin_C_TREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    -- grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg assign process. --
    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond3_fu_260_p2)))) then 
                    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_ready)) then 
                    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- c2_reg_160 assign process. --
    c2_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond2_fu_294_p2) and not(ap_sig_bdd_101))) then 
                c2_reg_160 <= c_2_fu_300_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond3_fu_260_p2))) then 
                c2_reg_160 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- c4_reg_182 assign process. --
    c4_reg_182_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8) and not((ap_const_logic_0 = ap_sig_ioackin_C_TREADY)))) then 
                c4_reg_182 <= c_3_reg_438;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and (ap_const_lv1_0 = exitcond1_fu_320_p2))) then 
                c4_reg_182 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- c_reg_138 assign process. --
    c_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond4_fu_234_p2) and not(ap_sig_bdd_71))) then 
                c_reg_138 <= c_1_fu_240_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_200_p2 = ap_const_lv1_0))) then 
                c_reg_138 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- r1_reg_149 assign process. --
    r1_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_200_p2 = ap_const_lv1_0)))) then 
                r1_reg_149 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not(ap_sig_bdd_101) and not((ap_const_lv1_0 = exitcond2_fu_294_p2)))) then 
                r1_reg_149 <= r_2_reg_404;
            end if; 
        end if;
    end process;

    -- r3_reg_171 assign process. --
    r3_reg_171_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7) and not((ap_const_lv1_0 = exitcond_fu_354_p2)))) then 
                r3_reg_171 <= r_3_reg_425;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_logic_0 = grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_done)))) then 
                r3_reg_171 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- r_reg_127 assign process. --
    r_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not(ap_sig_bdd_71) and not((ap_const_lv1_0 = exitcond4_fu_234_p2)))) then 
                r_reg_127 <= r_1_reg_383;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                r_reg_127 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then
                c_3_reg_438 <= c_3_fu_360_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                r_1_reg_383 <= r_1_fu_206_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                r_2_reg_404 <= r_2_fu_266_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then
                r_3_reg_425 <= r_3_fu_326_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (ap_const_lv1_0 = exitcond3_fu_260_p2))) then
                tmp_1_reg_409 <= tmp_1_fu_288_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and (ap_const_lv1_0 = exitcond1_fu_320_p2))) then
                tmp_7_reg_430 <= tmp_7_fu_348_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_200_p2 = ap_const_lv1_0))) then
                tmp_9_reg_388 <= tmp_9_fu_228_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond5_fu_200_p2, exitcond4_fu_234_p2, ap_sig_bdd_71, exitcond3_fu_260_p2, exitcond2_fu_294_p2, ap_sig_bdd_101, exitcond1_fu_320_p2, exitcond_fu_354_p2, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_done, ap_sig_ioackin_C_TREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((exitcond5_fu_200_p2 = ap_const_lv1_0)) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((not(ap_sig_bdd_71) and not((ap_const_lv1_0 = exitcond4_fu_234_p2)))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                elsif (((ap_const_lv1_0 = exitcond4_fu_234_p2) and not(ap_sig_bdd_71))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st4_fsm_3 => 
                if ((ap_const_lv1_0 = exitcond3_fu_260_p2)) then
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                end if;
            when ap_ST_st5_fsm_4 => 
                if ((not(ap_sig_bdd_101) and not((ap_const_lv1_0 = exitcond2_fu_294_p2)))) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                elsif (((ap_const_lv1_0 = exitcond2_fu_294_p2) and not(ap_sig_bdd_101))) then
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st6_fsm_5 => 
                if (not((ap_const_logic_0 = grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_done))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                end if;
            when ap_ST_st7_fsm_6 => 
                if (not((ap_const_lv1_0 = exitcond1_fu_320_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st8_fsm_7;
                end if;
            when ap_ST_st8_fsm_7 => 
                if (not((ap_const_lv1_0 = exitcond_fu_354_p2))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st9_fsm_8;
                end if;
            when ap_ST_st9_fsm_8 => 
                if (not((ap_const_logic_0 = ap_sig_ioackin_C_TREADY))) then
                    ap_NS_fsm <= ap_ST_st8_fsm_7;
                else
                    ap_NS_fsm <= ap_ST_st9_fsm_8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;

    -- A_TREADY assign process. --
    A_TREADY_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, exitcond4_fu_234_p2, ap_sig_bdd_71)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond4_fu_234_p2) and not(ap_sig_bdd_71))) then 
            A_TREADY <= ap_const_logic_1;
        else 
            A_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    -- B_TREADY assign process. --
    B_TREADY_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, exitcond2_fu_294_p2, ap_sig_bdd_101)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond2_fu_294_p2) and not(ap_sig_bdd_101))) then 
            B_TREADY <= ap_const_logic_1;
        else 
            B_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    C_TDATA <= C_assign_q0;

    -- C_TVALID assign process. --
    C_TVALID_assign_proc : process(ap_sig_cseq_ST_st9_fsm_8, ap_reg_ioackin_C_TREADY)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_8) and (ap_const_logic_0 = ap_reg_ioackin_C_TREADY))) then 
            C_TVALID <= ap_const_logic_1;
        else 
            C_TVALID <= ap_const_logic_0;
        end if; 
    end process;


    -- C_assign_address0 assign process. --
    C_assign_address0_assign_proc : process(ap_sig_cseq_ST_st8_fsm_7, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_address0, ap_sig_cseq_ST_st6_fsm_5, tmp_16_cast_fu_375_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then 
            C_assign_address0 <= tmp_16_cast_fu_375_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            C_assign_address0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_address0;
        else 
            C_assign_address0 <= "XXXX";
        end if; 
    end process;


    -- C_assign_ce0 assign process. --
    C_assign_ce0_assign_proc : process(ap_sig_cseq_ST_st8_fsm_7, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_ce0, ap_sig_cseq_ST_st6_fsm_5)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then 
            C_assign_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            C_assign_ce0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_ce0;
        else 
            C_assign_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_assign_d0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_d0;

    -- C_assign_we0 assign process. --
    C_assign_we0_assign_proc : process(grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_we0, ap_sig_cseq_ST_st6_fsm_5)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            C_assign_we0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_C_we0;
        else 
            C_assign_we0 <= ap_const_logic_0;
        end if; 
    end process;


    -- a_i_address0 assign process. --
    a_i_address0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_address0, ap_sig_cseq_ST_st6_fsm_5, tmp_12_cast_fu_255_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            a_i_address0 <= tmp_12_cast_fu_255_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            a_i_address0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_address0;
        else 
            a_i_address0 <= "XXXX";
        end if; 
    end process;


    -- a_i_ce0 assign process. --
    a_i_ce0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, ap_sig_bdd_71, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_ce0, ap_sig_cseq_ST_st6_fsm_5)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not(ap_sig_bdd_71))) then 
            a_i_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            a_i_ce0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_ce0;
        else 
            a_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_i_d0 <= A_TDATA;

    -- a_i_we0 assign process. --
    a_i_we0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2, exitcond4_fu_234_p2, ap_sig_bdd_71)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = exitcond4_fu_234_p2) and not(ap_sig_bdd_71)))) then 
            a_i_we0 <= ap_const_logic_1;
        else 
            a_i_we0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6, exitcond1_fu_320_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and not((ap_const_lv1_0 = exitcond1_fu_320_p2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st7_fsm_6, exitcond1_fu_320_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and not((ap_const_lv1_0 = exitcond1_fu_320_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_rst_n_inv assign process. --
    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    -- ap_sig_bdd_101 assign process. --
    ap_sig_bdd_101_assign_proc : process(B_TVALID, exitcond2_fu_294_p2)
    begin
                ap_sig_bdd_101 <= ((B_TVALID = ap_const_logic_0) and (ap_const_lv1_0 = exitcond2_fu_294_p2));
    end process;


    -- ap_sig_bdd_111 assign process. --
    ap_sig_bdd_111_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_111 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_125 assign process. --
    ap_sig_bdd_125_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_125 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    -- ap_sig_bdd_203 assign process. --
    ap_sig_bdd_203_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_203 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_217 assign process. --
    ap_sig_bdd_217_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_217 <= (ap_const_lv1_1 = ap_CS_fsm(8 downto 8));
    end process;


    -- ap_sig_bdd_27 assign process. --
    ap_sig_bdd_27_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_27 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_50 assign process. --
    ap_sig_bdd_50_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_50 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_65 assign process. --
    ap_sig_bdd_65_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_65 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_71 assign process. --
    ap_sig_bdd_71_assign_proc : process(A_TVALID, exitcond4_fu_234_p2)
    begin
                ap_sig_bdd_71 <= ((A_TVALID = ap_const_logic_0) and (ap_const_lv1_0 = exitcond4_fu_234_p2));
    end process;


    -- ap_sig_bdd_81 assign process. --
    ap_sig_bdd_81_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_81 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_95 assign process. --
    ap_sig_bdd_95_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_95 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_27)
    begin
        if (ap_sig_bdd_27) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_50)
    begin
        if (ap_sig_bdd_50) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_65)
    begin
        if (ap_sig_bdd_65) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_81)
    begin
        if (ap_sig_bdd_81) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_95)
    begin
        if (ap_sig_bdd_95) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_203)
    begin
        if (ap_sig_bdd_203) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_6 assign process. --
    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_bdd_111)
    begin
        if (ap_sig_bdd_111) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_7 assign process. --
    ap_sig_cseq_ST_st8_fsm_7_assign_proc : process(ap_sig_bdd_125)
    begin
        if (ap_sig_bdd_125) then 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_8 assign process. --
    ap_sig_cseq_ST_st9_fsm_8_assign_proc : process(ap_sig_bdd_217)
    begin
        if (ap_sig_bdd_217) then 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_8 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_ioackin_C_TREADY assign process. --
    ap_sig_ioackin_C_TREADY_assign_proc : process(C_TREADY, ap_reg_ioackin_C_TREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_C_TREADY)) then 
            ap_sig_ioackin_C_TREADY <= C_TREADY;
        else 
            ap_sig_ioackin_C_TREADY <= ap_const_logic_1;
        end if; 
    end process;


    -- b_i_address0 assign process. --
    b_i_address0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_address0, ap_sig_cseq_ST_st6_fsm_5, tmp_15_cast_fu_315_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            b_i_address0 <= tmp_15_cast_fu_315_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            b_i_address0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_address0;
        else 
            b_i_address0 <= "XXXX";
        end if; 
    end process;


    -- b_i_ce0 assign process. --
    b_i_ce0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, ap_sig_bdd_101, grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_ce0, ap_sig_cseq_ST_st6_fsm_5)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not(ap_sig_bdd_101))) then 
            b_i_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
            b_i_ce0 <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_ce0;
        else 
            b_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    b_i_d0 <= B_TDATA;

    -- b_i_we0 assign process. --
    b_i_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, exitcond2_fu_294_p2, ap_sig_bdd_101)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = exitcond2_fu_294_p2) and not(ap_sig_bdd_101)))) then 
            b_i_we0 <= ap_const_logic_1;
        else 
            b_i_we0 <= ap_const_logic_0;
        end if; 
    end process;

    c_1_fu_240_p2 <= std_logic_vector(unsigned(c_reg_138) + unsigned(ap_const_lv2_1));
    c_2_fu_300_p2 <= std_logic_vector(unsigned(c2_reg_160) + unsigned(ap_const_lv2_1));
    c_3_fu_360_p2 <= std_logic_vector(unsigned(c4_reg_182) + unsigned(ap_const_lv2_1));
    exitcond1_fu_320_p2 <= "1" when (r3_reg_171 = ap_const_lv2_3) else "0";
    exitcond2_fu_294_p2 <= "1" when (c2_reg_160 = ap_const_lv2_3) else "0";
    exitcond3_fu_260_p2 <= "1" when (r1_reg_149 = ap_const_lv2_3) else "0";
    exitcond4_fu_234_p2 <= "1" when (c_reg_138 = ap_const_lv2_3) else "0";
    exitcond5_fu_200_p2 <= "1" when (r_reg_127 = ap_const_lv2_3) else "0";
    exitcond_fu_354_p2 <= "1" when (c4_reg_182 = ap_const_lv2_3) else "0";
    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_A_q0 <= a_i_q0;
    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_B_q0 <= b_i_q0;
    grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start <= grp_matrix_multiply_top_matrix_multiply_alt2_fu_193_ap_start_ap_start_reg;
    p_shl1_cast_fu_284_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_276_p3),5));
    p_shl2_cast_fu_344_p1 <= std_logic_vector(resize(unsigned(tmp_5_fu_336_p3),5));
    p_shl_cast_fu_224_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_216_p3),5));
    r_1_fu_206_p2 <= std_logic_vector(unsigned(r_reg_127) + unsigned(ap_const_lv2_1));
    r_2_fu_266_p2 <= std_logic_vector(unsigned(r1_reg_149) + unsigned(ap_const_lv2_1));
    r_3_fu_326_p2 <= std_logic_vector(unsigned(r3_reg_171) + unsigned(ap_const_lv2_1));
    tmp_10_fu_310_p2 <= std_logic_vector(unsigned(tmp_1_reg_409) + unsigned(tmp_7_cast_fu_306_p1));
    tmp_11_fu_370_p2 <= std_logic_vector(unsigned(tmp_7_reg_430) + unsigned(tmp_cast_10_fu_366_p1));
        tmp_12_cast_fu_255_p1 <= std_logic_vector(resize(signed(tmp_3_fu_250_p2),64));

        tmp_15_cast_fu_315_p1 <= std_logic_vector(resize(signed(tmp_10_fu_310_p2),64));

        tmp_16_cast_fu_375_p1 <= std_logic_vector(resize(signed(tmp_11_fu_370_p2),64));

    tmp_1_cast_fu_272_p1 <= std_logic_vector(resize(unsigned(r1_reg_149),5));
    tmp_1_fu_288_p2 <= std_logic_vector(unsigned(p_shl1_cast_fu_284_p1) - unsigned(tmp_1_cast_fu_272_p1));
    tmp_3_cast_fu_246_p1 <= std_logic_vector(resize(unsigned(c_reg_138),5));
    tmp_3_fu_250_p2 <= std_logic_vector(unsigned(tmp_9_reg_388) + unsigned(tmp_3_cast_fu_246_p1));
    tmp_5_cast_fu_332_p1 <= std_logic_vector(resize(unsigned(r3_reg_171),5));
    tmp_5_fu_336_p3 <= (r3_reg_171 & ap_const_lv2_0);
    tmp_6_fu_216_p3 <= (r_reg_127 & ap_const_lv2_0);
    tmp_7_cast_fu_306_p1 <= std_logic_vector(resize(unsigned(c2_reg_160),5));
    tmp_7_fu_348_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_344_p1) - unsigned(tmp_5_cast_fu_332_p1));
    tmp_9_fu_228_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_224_p1) - unsigned(tmp_cast_fu_212_p1));
    tmp_cast_10_fu_366_p1 <= std_logic_vector(resize(unsigned(c4_reg_182),5));
    tmp_cast_fu_212_p1 <= std_logic_vector(resize(unsigned(r_reg_127),5));
    tmp_s_fu_276_p3 <= (r1_reg_149 & ap_const_lv2_0);
end behav;
