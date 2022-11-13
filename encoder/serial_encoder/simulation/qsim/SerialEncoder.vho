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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/13/2022 20:20:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SerialEncoder IS
    PORT (
	clk : IN std_logic;
	mI : IN std_logic;
	GRst : IN std_logic;
	busy : OUT std_logic;
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END SerialEncoder;

-- Design Ports Information
-- busy	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRst	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mI	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialEncoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mI : std_logic;
SIGNAL ww_GRst : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \counter3|ff0|nQ~0_combout\ : std_logic;
SIGNAL \GRst~input_o\ : std_logic;
SIGNAL \counter3|ff1|Q~q\ : std_logic;
SIGNAL \counter3|ff1|Q~0_combout\ : std_logic;
SIGNAL \counter3|ff1|Q~DUPLICATE_q\ : std_logic;
SIGNAL \counter3|ff2|nQ~q\ : std_logic;
SIGNAL \counter3|or21|y~0_combout\ : std_logic;
SIGNAL \counter3|ff2|Q~q\ : std_logic;
SIGNAL \control|or20|y~combout\ : std_logic;
SIGNAL \counter3|ff0|nQ~q\ : std_logic;
SIGNAL \counter3|ff0|Q~0_combout\ : std_logic;
SIGNAL \counter3|ff0|Q~q\ : std_logic;
SIGNAL \control|nor20|y~0_combout\ : std_logic;
SIGNAL \control|xor20|y~combout\ : std_logic;
SIGNAL \mI~input_o\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \register80|ff0|Q~0_combout\ : std_logic;
SIGNAL \register80|ff0|Q~q\ : std_logic;
SIGNAL \register81|ff0|Q~q\ : std_logic;
SIGNAL \register80|ff1|Q~0_combout\ : std_logic;
SIGNAL \register80|ff1|Q~q\ : std_logic;
SIGNAL \register81|ff1|Q~q\ : std_logic;
SIGNAL \register80|ff2|Q~0_combout\ : std_logic;
SIGNAL \register80|ff2|Q~q\ : std_logic;
SIGNAL \register81|ff2|Q~q\ : std_logic;
SIGNAL \register80|ff3|Q~0_combout\ : std_logic;
SIGNAL \register80|ff3|Q~q\ : std_logic;
SIGNAL \register81|ff3|Q~q\ : std_logic;
SIGNAL \register80|ff4|Q~0_combout\ : std_logic;
SIGNAL \register80|ff4|Q~q\ : std_logic;
SIGNAL \register81|ff4|Q~q\ : std_logic;
SIGNAL \register80|ff5|Q~q\ : std_logic;
SIGNAL \register80|ff5|Q~0_combout\ : std_logic;
SIGNAL \register80|ff5|Q~DUPLICATE_q\ : std_logic;
SIGNAL \register81|ff5|Q~q\ : std_logic;
SIGNAL \register80|ff6|Q~0_combout\ : std_logic;
SIGNAL \register80|ff6|Q~q\ : std_logic;
SIGNAL \register81|ff6|Q~feeder_combout\ : std_logic;
SIGNAL \register81|ff6|Q~q\ : std_logic;
SIGNAL \register80|ff7|Q~q\ : std_logic;
SIGNAL \register80|ff7|Q~0_combout\ : std_logic;
SIGNAL \register80|ff7|Q~DUPLICATE_q\ : std_logic;
SIGNAL \register81|ff7|Q~q\ : std_logic;
SIGNAL \counter3|ff1|ALT_INV_Q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_GRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff0|ALT_INV_Q~q\ : std_logic;
SIGNAL \control|nor20|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \counter3|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \counter3|ff2|ALT_INV_nQ~q\ : std_logic;
SIGNAL \control|or20|ALT_INV_y~combout\ : std_logic;
SIGNAL \counter3|ff0|ALT_INV_nQ~q\ : std_logic;
SIGNAL \control|xor20|ALT_INV_y~combout\ : std_logic;
SIGNAL \counter3|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \counter3|ff0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_mI <= mI;
ww_GRst <= GRst;
busy <= ww_busy;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter3|ff1|ALT_INV_Q~DUPLICATE_q\ <= NOT \counter3|ff1|Q~DUPLICATE_q\;
\ALT_INV_GRst~input_o\ <= NOT \GRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\register80|ff7|ALT_INV_Q~q\ <= NOT \register80|ff7|Q~q\;
\register80|ff6|ALT_INV_Q~q\ <= NOT \register80|ff6|Q~q\;
\register80|ff5|ALT_INV_Q~q\ <= NOT \register80|ff5|Q~q\;
\register80|ff4|ALT_INV_Q~q\ <= NOT \register80|ff4|Q~q\;
\register80|ff3|ALT_INV_Q~q\ <= NOT \register80|ff3|Q~q\;
\register80|ff2|ALT_INV_Q~q\ <= NOT \register80|ff2|Q~q\;
\register80|ff1|ALT_INV_Q~q\ <= NOT \register80|ff1|Q~q\;
\register80|ff0|ALT_INV_Q~q\ <= NOT \register80|ff0|Q~q\;
\control|nor20|ALT_INV_y~0_combout\ <= NOT \control|nor20|y~0_combout\;
\counter3|ff1|ALT_INV_Q~q\ <= NOT \counter3|ff1|Q~q\;
\counter3|ff2|ALT_INV_nQ~q\ <= NOT \counter3|ff2|nQ~q\;
\control|or20|ALT_INV_y~combout\ <= NOT \control|or20|y~combout\;
\counter3|ff0|ALT_INV_nQ~q\ <= NOT \counter3|ff0|nQ~q\;
\control|xor20|ALT_INV_y~combout\ <= NOT \control|xor20|y~combout\;
\counter3|ff2|ALT_INV_Q~q\ <= NOT \counter3|ff2|Q~q\;
\counter3|ff0|ALT_INV_Q~q\ <= NOT \counter3|ff0|Q~q\;

-- Location: IOOBUF_X89_Y35_N45
\busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \control|xor20|ALT_INV_y~combout\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X89_Y35_N79
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff0|Q~q\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X89_Y35_N96
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff1|Q~q\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X89_Y36_N5
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff2|Q~q\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X89_Y37_N56
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff3|Q~q\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X89_Y36_N22
\y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff4|Q~q\,
	devoe => ww_devoe,
	o => ww_y(4));

-- Location: IOOBUF_X89_Y36_N56
\y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff5|Q~q\,
	devoe => ww_devoe,
	o => ww_y(5));

-- Location: IOOBUF_X89_Y37_N22
\y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff6|Q~q\,
	devoe => ww_devoe,
	o => ww_y(6));

-- Location: IOOBUF_X89_Y36_N39
\y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register81|ff7|Q~q\,
	devoe => ww_devoe,
	o => ww_y(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y35_N36
\counter3|ff0|nQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|ff0|nQ~0_combout\ = ( !\counter3|ff0|nQ~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter3|ff0|ALT_INV_nQ~q\,
	combout => \counter3|ff0|nQ~0_combout\);

-- Location: IOIBUF_X89_Y37_N38
\GRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GRst,
	o => \GRst~input_o\);

-- Location: FF_X88_Y35_N1
\counter3|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter3|ff1|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N0
\counter3|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|ff1|Q~0_combout\ = !\counter3|ff0|Q~q\ $ (!\counter3|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff1|ALT_INV_Q~q\,
	combout => \counter3|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N2
\counter3|ff1|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter3|ff1|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff1|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N38
\counter3|ff2|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter3|or21|y~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff2|nQ~q\);

-- Location: LABCELL_X88_Y35_N36
\counter3|or21|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|or21|y~0_combout\ = ( \counter3|ff2|nQ~q\ & ( \counter3|ff0|nQ~q\ & ( (!\counter3|ff1|Q~DUPLICATE_q\ & \counter3|ff2|Q~q\) ) ) ) # ( !\counter3|ff2|nQ~q\ & ( \counter3|ff0|nQ~q\ & ( (!\counter3|ff1|Q~DUPLICATE_q\ & ((\counter3|ff2|Q~q\))) # 
-- (\counter3|ff1|Q~DUPLICATE_q\ & (\counter3|ff0|Q~q\)) ) ) ) # ( \counter3|ff2|nQ~q\ & ( !\counter3|ff0|nQ~q\ & ( \counter3|ff2|Q~q\ ) ) ) # ( !\counter3|ff2|nQ~q\ & ( !\counter3|ff0|nQ~q\ & ( ((\counter3|ff1|Q~DUPLICATE_q\ & \counter3|ff0|Q~q\)) # 
-- (\counter3|ff2|Q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000000001111111100000101101011110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff1|ALT_INV_Q~DUPLICATE_q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \counter3|ff2|ALT_INV_nQ~q\,
	dataf => \counter3|ff0|ALT_INV_nQ~q\,
	combout => \counter3|or21|y~0_combout\);

-- Location: FF_X88_Y35_N17
\counter3|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter3|or21|y~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N9
\control|or20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|or20|y~combout\ = ( \counter3|ff0|Q~q\ & ( (!\clk~input_o\ & ((!\GRst~input_o\) # (\counter3|ff2|Q~q\))) ) ) # ( !\counter3|ff0|Q~q\ & ( (!\GRst~input_o\ & !\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_GRst~input_o\,
	datab => \ALT_INV_clk~input_o\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \control|or20|y~combout\);

-- Location: FF_X87_Y35_N37
\counter3|ff0|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter3|ff0|nQ~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff0|nQ~q\);

-- Location: LABCELL_X88_Y35_N18
\counter3|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|ff0|Q~0_combout\ = !\counter3|ff0|nQ~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter3|ff0|ALT_INV_nQ~q\,
	combout => \counter3|ff0|Q~0_combout\);

-- Location: FF_X88_Y35_N20
\counter3|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter3|ff0|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N57
\control|nor20|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|nor20|y~0_combout\ = LCELL((!\clk~input_o\ & (\counter3|ff2|Q~q\ & !\counter3|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	datad => \counter3|ff0|ALT_INV_Q~q\,
	combout => \control|nor20|y~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\control|xor20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|xor20|y~combout\ = !\control|nor20|y~0_combout\ $ (((!\counter3|ff0|Q~q\) # (!\counter3|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff0|ALT_INV_Q~q\,
	datab => \counter3|ff2|ALT_INV_Q~q\,
	datac => \control|nor20|ALT_INV_y~0_combout\,
	combout => \control|xor20|y~combout\);

-- Location: IOIBUF_X89_Y37_N4
\mI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mI,
	o => \mI~input_o\);

-- Location: FF_X87_Y35_N59
\ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mI~input_o\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N30
\register80|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff0|Q~0_combout\ = ( \counter3|ff1|Q~DUPLICATE_q\ & ( \ff0|Q~q\ & ( !\register80|ff0|Q~q\ ) ) ) # ( !\counter3|ff1|Q~DUPLICATE_q\ & ( \ff0|Q~q\ & ( !\register80|ff0|Q~q\ $ (!\counter3|ff0|Q~q\ $ (\counter3|ff2|Q~q\)) ) ) ) # ( 
-- \counter3|ff1|Q~DUPLICATE_q\ & ( !\ff0|Q~q\ & ( \register80|ff0|Q~q\ ) ) ) # ( !\counter3|ff1|Q~DUPLICATE_q\ & ( !\ff0|Q~q\ & ( \register80|ff0|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101001011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register80|ff0|ALT_INV_Q~q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \counter3|ff1|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \register80|ff0|Q~0_combout\);

-- Location: FF_X88_Y35_N5
\register80|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff0|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff0|Q~q\);

-- Location: FF_X88_Y35_N10
\register81|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff0|Q~q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff0|Q~q\);

-- Location: LABCELL_X88_Y35_N21
\register80|ff1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff1|Q~0_combout\ = ( \counter3|ff0|Q~q\ & ( !\register80|ff1|Q~q\ $ (((!\ff0|Q~q\) # (!\counter3|ff1|Q~q\))) ) ) # ( !\counter3|ff0|Q~q\ & ( !\register80|ff1|Q~q\ $ (((!\ff0|Q~q\) # ((!\counter3|ff1|Q~q\ & !\counter3|ff2|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110010101100110011001010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register80|ff1|ALT_INV_Q~q\,
	datab => \ff0|ALT_INV_Q~q\,
	datac => \counter3|ff1|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \register80|ff1|Q~0_combout\);

-- Location: FF_X88_Y35_N50
\register80|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff1|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff1|Q~q\);

-- Location: FF_X88_Y35_N26
\register81|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff1|Q~q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\register80|ff2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff2|Q~0_combout\ = ( \register80|ff2|Q~q\ & ( (!\ff0|Q~q\) # (!\counter3|ff0|Q~q\ $ (\counter3|ff2|Q~q\)) ) ) # ( !\register80|ff2|Q~q\ & ( (\ff0|Q~q\ & (!\counter3|ff0|Q~q\ $ (!\counter3|ff2|Q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011111001111110011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff0|ALT_INV_Q~q\,
	datab => \counter3|ff2|ALT_INV_Q~q\,
	datac => \ff0|ALT_INV_Q~q\,
	dataf => \register80|ff2|ALT_INV_Q~q\,
	combout => \register80|ff2|Q~0_combout\);

-- Location: FF_X88_Y35_N32
\register80|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff2|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff2|Q~q\);

-- Location: FF_X88_Y35_N7
\register81|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff2|Q~q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N42
\register80|ff3|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff3|Q~0_combout\ = ( \counter3|ff1|Q~DUPLICATE_q\ & ( \ff0|Q~q\ & ( !\register80|ff3|Q~q\ $ (((!\counter3|ff0|Q~q\) # (\counter3|ff2|Q~q\))) ) ) ) # ( !\counter3|ff1|Q~DUPLICATE_q\ & ( \ff0|Q~q\ & ( !\register80|ff3|Q~q\ $ 
-- (((!\counter3|ff2|Q~q\) # (\counter3|ff0|Q~q\))) ) ) ) # ( \counter3|ff1|Q~DUPLICATE_q\ & ( !\ff0|Q~q\ & ( \register80|ff3|Q~q\ ) ) ) # ( !\counter3|ff1|Q~DUPLICATE_q\ & ( !\ff0|Q~q\ & ( \register80|ff3|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101001010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register80|ff3|ALT_INV_Q~q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \counter3|ff1|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \register80|ff3|Q~0_combout\);

-- Location: FF_X88_Y35_N53
\register80|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff3|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff3|Q~q\);

-- Location: FF_X88_Y35_N55
\register81|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff3|Q~q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N3
\register80|ff4|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff4|Q~0_combout\ = ( \ff0|Q~q\ & ( !\register80|ff4|Q~q\ $ (((!\counter3|ff0|Q~q\ & (!\counter3|ff2|Q~q\ $ (\counter3|ff1|Q~DUPLICATE_q\))) # (\counter3|ff0|Q~q\ & ((\counter3|ff1|Q~DUPLICATE_q\) # (\counter3|ff2|Q~q\))))) ) ) # ( !\ff0|Q~q\ & 
-- ( \register80|ff4|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101101001100100110110100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff0|ALT_INV_Q~q\,
	datab => \register80|ff4|ALT_INV_Q~q\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	datad => \counter3|ff1|ALT_INV_Q~DUPLICATE_q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \register80|ff4|Q~0_combout\);

-- Location: FF_X88_Y35_N14
\register80|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff4|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff4|Q~q\);

-- Location: FF_X88_Y35_N44
\register81|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff4|Q~q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff4|Q~q\);

-- Location: FF_X88_Y35_N35
\register80|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff5|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff5|Q~q\);

-- Location: LABCELL_X88_Y35_N27
\register80|ff5|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff5|Q~0_combout\ = ( \register80|ff5|Q~q\ & ( ((!\ff0|Q~q\) # (!\counter3|ff2|Q~q\ $ (\counter3|ff1|Q~q\))) # (\counter3|ff0|Q~q\) ) ) # ( !\register80|ff5|Q~q\ & ( (!\counter3|ff0|Q~q\ & (\ff0|Q~q\ & (!\counter3|ff2|Q~q\ $ 
-- (!\counter3|ff1|Q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100011111111110101111111111111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff0|ALT_INV_Q~q\,
	datab => \counter3|ff2|ALT_INV_Q~q\,
	datac => \counter3|ff1|ALT_INV_Q~q\,
	datad => \ff0|ALT_INV_Q~q\,
	dataf => \register80|ff5|ALT_INV_Q~q\,
	combout => \register80|ff5|Q~0_combout\);

-- Location: FF_X88_Y35_N34
\register80|ff5|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff5|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff5|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N46
\register81|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff5|Q~DUPLICATE_q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff5|Q~q\);

-- Location: LABCELL_X88_Y35_N12
\register80|ff6|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff6|Q~0_combout\ = ( \register80|ff6|Q~q\ & ( \ff0|Q~q\ & ( (!\counter3|ff0|Q~q\ $ (\counter3|ff2|Q~q\)) # (\counter3|ff1|Q~DUPLICATE_q\) ) ) ) # ( !\register80|ff6|Q~q\ & ( \ff0|Q~q\ & ( (!\counter3|ff1|Q~DUPLICATE_q\ & (!\counter3|ff0|Q~q\ $ 
-- (!\counter3|ff2|Q~q\))) ) ) ) # ( \register80|ff6|Q~q\ & ( !\ff0|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010101000001111010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff1|ALT_INV_Q~DUPLICATE_q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \register80|ff6|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \register80|ff6|Q~0_combout\);

-- Location: FF_X88_Y35_N23
\register80|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff6|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff6|Q~q\);

-- Location: LABCELL_X88_Y35_N6
\register81|ff6|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register81|ff6|Q~feeder_combout\ = ( \register80|ff6|Q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \register80|ff6|ALT_INV_Q~q\,
	combout => \register81|ff6|Q~feeder_combout\);

-- Location: FF_X88_Y35_N8
\register81|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	d => \register81|ff6|Q~feeder_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff6|Q~q\);

-- Location: FF_X88_Y35_N41
\register80|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff7|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff7|Q~q\);

-- Location: LABCELL_X88_Y35_N51
\register80|ff7|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff7|Q~0_combout\ = ( \ff0|Q~q\ & ( !\register80|ff7|Q~q\ $ (((!\counter3|ff2|Q~q\) # (\counter3|ff0|Q~q\))) ) ) # ( !\ff0|Q~q\ & ( \register80|ff7|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100101101001011010010110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff0|ALT_INV_Q~q\,
	datab => \counter3|ff2|ALT_INV_Q~q\,
	datac => \register80|ff7|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \register80|ff7|Q~0_combout\);

-- Location: FF_X88_Y35_N40
\register80|ff7|Q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \register80|ff7|Q~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff7|Q~DUPLICATE_q\);

-- Location: FF_X88_Y35_N58
\register81|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \register80|ff7|Q~DUPLICATE_q\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff7|Q~q\);

-- Location: LABCELL_X85_Y34_N3
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


