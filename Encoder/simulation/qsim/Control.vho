-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Standard Edition"

-- DATE "11/12/2022 12:56:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control IS
    PORT (
	nGRst : IN std_logic;
	clk : IN std_logic;
	add : IN std_logic_vector(2 DOWNTO 0);
	f : BUFFER std_logic_vector(7 DOWNTO 0);
	clkO : BUFFER std_logic
	);
END control;

-- Design Ports Information
-- nGRst	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkO	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nGRst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_add : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clkO : std_logic;
SIGNAL \nGRst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \add[1]~input_o\ : std_logic;
SIGNAL \add[2]~input_o\ : std_logic;
SIGNAL \add[0]~input_o\ : std_logic;
SIGNAL \cMem|prog~0_combout\ : std_logic;
SIGNAL \cMem|prog~1_combout\ : std_logic;
SIGNAL \cMem|prog~2_combout\ : std_logic;
SIGNAL \cMem|prog~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \nord|y~0_combout\ : std_logic;
SIGNAL \cMem|ALT_INV_prog~0_combout\ : std_logic;
SIGNAL \nord|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \ALT_INV_add[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_add[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_nGRst <= nGRst;
ww_clk <= clk;
ww_add <= add;
f <= ww_f;
clkO <= ww_clkO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cMem|ALT_INV_prog~0_combout\ <= NOT \cMem|prog~0_combout\;
\nord|ALT_INV_y~0_combout\ <= NOT \nord|y~0_combout\;
\ALT_INV_add[2]~input_o\ <= NOT \add[2]~input_o\;
\ALT_INV_add[0]~input_o\ <= NOT \add[0]~input_o\;
\ALT_INV_add[1]~input_o\ <= NOT \add[1]~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

-- Location: IOOBUF_X89_Y35_N62
\f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~0_combout\,
	devoe => ww_devoe,
	o => ww_f(0));

-- Location: IOOBUF_X89_Y38_N39
\f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~1_combout\,
	devoe => ww_devoe,
	o => ww_f(1));

-- Location: IOOBUF_X89_Y35_N45
\f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~0_combout\,
	devoe => ww_devoe,
	o => ww_f(2));

-- Location: IOOBUF_X89_Y38_N5
\f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~1_combout\,
	devoe => ww_devoe,
	o => ww_f(3));

-- Location: IOOBUF_X89_Y35_N96
\f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|ALT_INV_prog~0_combout\,
	devoe => ww_devoe,
	o => ww_f(4));

-- Location: IOOBUF_X89_Y37_N22
\f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~2_combout\,
	devoe => ww_devoe,
	o => ww_f(5));

-- Location: IOOBUF_X89_Y37_N5
\f[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~3_combout\,
	devoe => ww_devoe,
	o => ww_f(6));

-- Location: IOOBUF_X89_Y38_N22
\f[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cMem|prog~1_combout\,
	devoe => ww_devoe,
	o => ww_f(7));

-- Location: IOOBUF_X89_Y37_N39
\clkO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nord|ALT_INV_y~0_combout\,
	devoe => ww_devoe,
	o => ww_clkO);

-- Location: IOIBUF_X89_Y37_N55
\add[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(1),
	o => \add[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\add[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(2),
	o => \add[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\add[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add(0),
	o => \add[0]~input_o\);

-- Location: LABCELL_X88_Y37_N30
\cMem|prog~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cMem|prog~0_combout\ = ( \add[0]~input_o\ & ( (!\add[1]~input_o\) # (\add[2]~input_o\) ) ) # ( !\add[0]~input_o\ & ( (!\add[2]~input_o\) # (\add[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101101011111010111111110101111101011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1]~input_o\,
	datac => \ALT_INV_add[2]~input_o\,
	datae => \ALT_INV_add[0]~input_o\,
	combout => \cMem|prog~0_combout\);

-- Location: LABCELL_X88_Y37_N36
\cMem|prog~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cMem|prog~1_combout\ = ( \add[0]~input_o\ & ( !\add[2]~input_o\ ) ) # ( !\add[0]~input_o\ & ( !\add[1]~input_o\ $ (!\add[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111100001111000001011010010110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1]~input_o\,
	datac => \ALT_INV_add[2]~input_o\,
	datae => \ALT_INV_add[0]~input_o\,
	combout => \cMem|prog~1_combout\);

-- Location: LABCELL_X88_Y37_N15
\cMem|prog~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cMem|prog~2_combout\ = ( \add[0]~input_o\ & ( (!\add[2]~input_o\ & !\add[1]~input_o\) ) ) # ( !\add[0]~input_o\ & ( (\add[2]~input_o\ & !\add[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000101010100000000001010101000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[2]~input_o\,
	datad => \ALT_INV_add[1]~input_o\,
	datae => \ALT_INV_add[0]~input_o\,
	combout => \cMem|prog~2_combout\);

-- Location: LABCELL_X88_Y37_N18
\cMem|prog~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cMem|prog~3_combout\ = ( !\add[0]~input_o\ & ( (!\add[1]~input_o\ & \add[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add[1]~input_o\,
	datac => \ALT_INV_add[2]~input_o\,
	datae => \ALT_INV_add[0]~input_o\,
	combout => \cMem|prog~3_combout\);

-- Location: IOIBUF_X89_Y36_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X88_Y37_N27
\nord|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nord|y~0_combout\ = ( \add[1]~input_o\ & ( \add[2]~input_o\ & ( \clk~input_o\ ) ) ) # ( !\add[1]~input_o\ & ( \add[2]~input_o\ ) ) # ( \add[1]~input_o\ & ( !\add[2]~input_o\ & ( (\add[0]~input_o\) # (\clk~input_o\) ) ) ) # ( !\add[1]~input_o\ & ( 
-- !\add[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011111111111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datad => \ALT_INV_add[0]~input_o\,
	datae => \ALT_INV_add[1]~input_o\,
	dataf => \ALT_INV_add[2]~input_o\,
	combout => \nord|y~0_combout\);

-- Location: IOIBUF_X82_Y81_N92
\nGRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nGRst,
	o => \nGRst~input_o\);

-- Location: LABCELL_X67_Y11_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


