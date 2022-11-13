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

-- DATE "11/13/2022 20:35:54"

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
	busy : BUFFER std_logic;
	y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SerialEncoder;

-- Design Ports Information
-- busy	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GRst	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mI	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \control|rom|Mux5~0_combout\ : std_logic;
SIGNAL \counter3|ff1|Q~q\ : std_logic;
SIGNAL \counter3|ff2|nQ~q\ : std_logic;
SIGNAL \counter3|or21|y~0_combout\ : std_logic;
SIGNAL \counter3|ff2|Q~q\ : std_logic;
SIGNAL \control|or20|y~combout\ : std_logic;
SIGNAL \counter3|ff0|nQ~q\ : std_logic;
SIGNAL \counter3|ff0|Q~0_combout\ : std_logic;
SIGNAL \counter3|ff0|Q~q\ : std_logic;
SIGNAL \control|nor20|y~0_combout\ : std_logic;
SIGNAL \control|xor20|y~combout\ : std_logic;
SIGNAL \register80|ff0|Q~feeder_combout\ : std_logic;
SIGNAL \register80|ff0|Q~q\ : std_logic;
SIGNAL \mI~input_o\ : std_logic;
SIGNAL \ff0|Q~q\ : std_logic;
SIGNAL \xor20|y~combout\ : std_logic;
SIGNAL \register81|ff0|Q~q\ : std_logic;
SIGNAL \register80|ff1|Q~q\ : std_logic;
SIGNAL \xor21|y~combout\ : std_logic;
SIGNAL \register81|ff1|Q~q\ : std_logic;
SIGNAL \register80|ff2|Q~q\ : std_logic;
SIGNAL \xor22|y~combout\ : std_logic;
SIGNAL \register81|ff2|Q~q\ : std_logic;
SIGNAL \register80|ff3|Q~feeder_combout\ : std_logic;
SIGNAL \register80|ff3|Q~q\ : std_logic;
SIGNAL \xor23|y~combout\ : std_logic;
SIGNAL \register81|ff3|Q~q\ : std_logic;
SIGNAL \register80|ff4|Q~feeder_combout\ : std_logic;
SIGNAL \register80|ff4|Q~q\ : std_logic;
SIGNAL \xor24|y~combout\ : std_logic;
SIGNAL \register81|ff4|Q~q\ : std_logic;
SIGNAL \register80|ff5|Q~q\ : std_logic;
SIGNAL \xor25|y~combout\ : std_logic;
SIGNAL \register81|ff5|Q~q\ : std_logic;
SIGNAL \register80|ff6|Q~q\ : std_logic;
SIGNAL \xor26|y~combout\ : std_logic;
SIGNAL \register81|ff6|Q~q\ : std_logic;
SIGNAL \register80|ff7|Q~q\ : std_logic;
SIGNAL \xor27|y~combout\ : std_logic;
SIGNAL \register81|ff7|Q~q\ : std_logic;
SIGNAL \ALT_INV_GRst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \register80|ff7|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff6|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff5|ALT_INV_Q~q\ : std_logic;
SIGNAL \xor24|ALT_INV_y~combout\ : std_logic;
SIGNAL \register80|ff4|ALT_INV_Q~q\ : std_logic;
SIGNAL \xor23|ALT_INV_y~combout\ : std_logic;
SIGNAL \register80|ff3|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \register80|ff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \xor20|ALT_INV_y~combout\ : std_logic;
SIGNAL \ff0|ALT_INV_Q~q\ : std_logic;
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
\ALT_INV_GRst~input_o\ <= NOT \GRst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\register80|ff7|ALT_INV_Q~q\ <= NOT \register80|ff7|Q~q\;
\register80|ff6|ALT_INV_Q~q\ <= NOT \register80|ff6|Q~q\;
\register80|ff5|ALT_INV_Q~q\ <= NOT \register80|ff5|Q~q\;
\xor24|ALT_INV_y~combout\ <= NOT \xor24|y~combout\;
\register80|ff4|ALT_INV_Q~q\ <= NOT \register80|ff4|Q~q\;
\xor23|ALT_INV_y~combout\ <= NOT \xor23|y~combout\;
\register80|ff3|ALT_INV_Q~q\ <= NOT \register80|ff3|Q~q\;
\register80|ff2|ALT_INV_Q~q\ <= NOT \register80|ff2|Q~q\;
\register80|ff1|ALT_INV_Q~q\ <= NOT \register80|ff1|Q~q\;
\xor20|ALT_INV_y~combout\ <= NOT \xor20|y~combout\;
\ff0|ALT_INV_Q~q\ <= NOT \ff0|Q~q\;
\register80|ff0|ALT_INV_Q~q\ <= NOT \register80|ff0|Q~q\;
\control|nor20|ALT_INV_y~0_combout\ <= NOT \control|nor20|y~0_combout\;
\counter3|ff1|ALT_INV_Q~q\ <= NOT \counter3|ff1|Q~q\;
\counter3|ff2|ALT_INV_nQ~q\ <= NOT \counter3|ff2|nQ~q\;
\control|or20|ALT_INV_y~combout\ <= NOT \control|or20|y~combout\;
\counter3|ff0|ALT_INV_nQ~q\ <= NOT \counter3|ff0|nQ~q\;
\control|xor20|ALT_INV_y~combout\ <= NOT \control|xor20|y~combout\;
\counter3|ff2|ALT_INV_Q~q\ <= NOT \counter3|ff2|Q~q\;
\counter3|ff0|ALT_INV_Q~q\ <= NOT \counter3|ff0|Q~q\;

-- Location: IOOBUF_X89_Y36_N5
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

-- Location: IOOBUF_X89_Y37_N22
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

-- Location: IOOBUF_X89_Y37_N56
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

-- Location: IOOBUF_X89_Y37_N39
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

-- Location: IOOBUF_X89_Y36_N56
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

-- Location: IOOBUF_X89_Y35_N79
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

-- Location: IOOBUF_X89_Y35_N96
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

-- Location: IOOBUF_X89_Y37_N5
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

-- Location: IOOBUF_X89_Y35_N45
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

-- Location: MLABCELL_X87_Y35_N57
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

-- Location: IOIBUF_X89_Y36_N38
\GRst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GRst,
	o => \GRst~input_o\);

-- Location: LABCELL_X88_Y35_N0
\control|rom|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|rom|Mux5~0_combout\ = !\counter3|ff0|Q~q\ $ (!\counter3|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff1|ALT_INV_Q~q\,
	combout => \control|rom|Mux5~0_combout\);

-- Location: FF_X88_Y35_N2
\counter3|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \control|rom|Mux5~0_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|ff1|Q~q\);

-- Location: FF_X87_Y35_N2
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

-- Location: MLABCELL_X87_Y35_N0
\counter3|or21|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|or21|y~0_combout\ = ( \counter3|ff2|nQ~q\ & ( \counter3|ff2|Q~q\ & ( (!\counter3|ff1|Q~q\) # (!\counter3|ff0|nQ~q\) ) ) ) # ( !\counter3|ff2|nQ~q\ & ( \counter3|ff2|Q~q\ & ( (!\counter3|ff1|Q~q\) # ((!\counter3|ff0|nQ~q\) # (\counter3|ff0|Q~q\)) 
-- ) ) ) # ( !\counter3|ff2|nQ~q\ & ( !\counter3|ff2|Q~q\ & ( (\counter3|ff1|Q~q\ & \counter3|ff0|Q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000011111111101011111111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff1|ALT_INV_Q~q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \counter3|ff0|ALT_INV_nQ~q\,
	datae => \counter3|ff2|ALT_INV_nQ~q\,
	dataf => \counter3|ff2|ALT_INV_Q~q\,
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
-- \control|or20|y~combout\ = ( \counter3|ff0|Q~q\ & ( (!\clk~input_o\ & ((!\GRst~input_o\) # (\counter3|ff2|Q~q\))) ) ) # ( !\counter3|ff0|Q~q\ & ( (!\clk~input_o\ & !\GRst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_GRst~input_o\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \control|or20|y~combout\);

-- Location: FF_X87_Y35_N59
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

-- Location: LABCELL_X88_Y35_N6
\counter3|ff0|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|ff0|Q~0_combout\ = ( !\counter3|ff0|nQ~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter3|ff0|ALT_INV_nQ~q\,
	combout => \counter3|ff0|Q~0_combout\);

-- Location: FF_X88_Y35_N8
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

-- Location: LABCELL_X88_Y35_N27
\control|nor20|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|nor20|y~0_combout\ = LCELL(( !\clk~input_o\ & ( (!\counter3|ff0|Q~q\ & \counter3|ff2|Q~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \control|nor20|y~0_combout\);

-- Location: LABCELL_X88_Y35_N15
\control|xor20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \control|xor20|y~combout\ = ( \counter3|ff2|Q~q\ & ( \counter3|ff0|Q~q\ & ( !\control|nor20|y~0_combout\ ) ) ) # ( !\counter3|ff2|Q~q\ & ( \counter3|ff0|Q~q\ & ( \control|nor20|y~0_combout\ ) ) ) # ( \counter3|ff2|Q~q\ & ( !\counter3|ff0|Q~q\ & ( 
-- \control|nor20|y~0_combout\ ) ) ) # ( !\counter3|ff2|Q~q\ & ( !\counter3|ff0|Q~q\ & ( \control|nor20|y~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \control|nor20|ALT_INV_y~0_combout\,
	datae => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \control|xor20|y~combout\);

-- Location: MLABCELL_X87_Y35_N21
\register80|ff0|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff0|Q~feeder_combout\ = ( \xor20|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \xor20|ALT_INV_y~combout\,
	combout => \register80|ff0|Q~feeder_combout\);

-- Location: FF_X87_Y35_N22
\register80|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \register80|ff0|Q~feeder_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff0|Q~q\);

-- Location: IOIBUF_X89_Y36_N21
\mI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mI,
	o => \mI~input_o\);

-- Location: FF_X88_Y35_N14
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

-- Location: LABCELL_X88_Y35_N39
\xor20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor20|y~combout\ = ( \register80|ff0|Q~q\ & ( \ff0|Q~q\ & ( (!\counter3|ff1|Q~q\ & (!\counter3|ff0|Q~q\ $ (\counter3|ff2|Q~q\))) ) ) ) # ( !\register80|ff0|Q~q\ & ( \ff0|Q~q\ & ( (!\counter3|ff0|Q~q\ $ (!\counter3|ff2|Q~q\)) # (\counter3|ff1|Q~q\) ) ) ) 
-- # ( \register80|ff0|Q~q\ & ( !\ff0|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111100111111111100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	datad => \counter3|ff1|ALT_INV_Q~q\,
	datae => \register80|ff0|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \xor20|y~combout\);

-- Location: FF_X88_Y35_N22
\register81|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor20|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff0|Q~q\);

-- Location: FF_X88_Y35_N5
\register80|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xor21|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff1|Q~q\);

-- Location: LABCELL_X88_Y35_N30
\xor21|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor21|y~combout\ = ( \counter3|ff1|Q~q\ & ( \ff0|Q~q\ & ( !\register80|ff1|Q~q\ ) ) ) # ( !\counter3|ff1|Q~q\ & ( \ff0|Q~q\ & ( !\register80|ff1|Q~q\ $ (((!\counter3|ff2|Q~q\) # (\counter3|ff0|Q~q\))) ) ) ) # ( \counter3|ff1|Q~q\ & ( !\ff0|Q~q\ & ( 
-- \register80|ff1|Q~q\ ) ) ) # ( !\counter3|ff1|Q~q\ & ( !\ff0|Q~q\ & ( \register80|ff1|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111110000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \register80|ff1|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \counter3|ff1|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \xor21|y~combout\);

-- Location: FF_X88_Y35_N34
\register81|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor21|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff1|Q~q\);

-- Location: FF_X87_Y35_N34
\register80|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xor22|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff2|Q~q\);

-- Location: LABCELL_X88_Y35_N24
\xor22|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor22|y~combout\ = ( \ff0|Q~q\ & ( !\counter3|ff0|Q~q\ $ (!\register80|ff2|Q~q\ $ (\counter3|ff2|Q~q\)) ) ) # ( !\ff0|Q~q\ & ( \register80|ff2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \register80|ff2|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \xor22|y~combout\);

-- Location: FF_X88_Y35_N28
\register81|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor22|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff2|Q~q\);

-- Location: MLABCELL_X87_Y35_N42
\register80|ff3|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff3|Q~feeder_combout\ = ( \xor23|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \xor23|ALT_INV_y~combout\,
	combout => \register80|ff3|Q~feeder_combout\);

-- Location: FF_X87_Y35_N43
\register80|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \register80|ff3|Q~feeder_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff3|Q~q\);

-- Location: LABCELL_X88_Y35_N18
\xor23|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor23|y~combout\ = ( \register80|ff3|Q~q\ & ( \counter3|ff0|Q~q\ & ( ((!\counter3|ff1|Q~q\) # (!\ff0|Q~q\)) # (\counter3|ff2|Q~q\) ) ) ) # ( !\register80|ff3|Q~q\ & ( \counter3|ff0|Q~q\ & ( (!\counter3|ff2|Q~q\ & (\counter3|ff1|Q~q\ & \ff0|Q~q\)) ) ) ) # 
-- ( \register80|ff3|Q~q\ & ( !\counter3|ff0|Q~q\ & ( (!\counter3|ff2|Q~q\) # ((!\ff0|Q~q\) # (\counter3|ff1|Q~q\)) ) ) ) # ( !\register80|ff3|Q~q\ & ( !\counter3|ff0|Q~q\ & ( (\counter3|ff2|Q~q\ & (!\counter3|ff1|Q~q\ & \ff0|Q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111111111100111100000000000011001111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff2|ALT_INV_Q~q\,
	datac => \counter3|ff1|ALT_INV_Q~q\,
	datad => \ff0|ALT_INV_Q~q\,
	datae => \register80|ff3|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \xor23|y~combout\);

-- Location: FF_X88_Y35_N43
\register81|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor23|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff3|Q~q\);

-- Location: MLABCELL_X87_Y35_N27
\register80|ff4|Q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register80|ff4|Q~feeder_combout\ = ( \xor24|y~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \xor24|ALT_INV_y~combout\,
	combout => \register80|ff4|Q~feeder_combout\);

-- Location: FF_X87_Y35_N28
\register80|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \register80|ff4|Q~feeder_combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff4|Q~q\);

-- Location: LABCELL_X88_Y35_N45
\xor24|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor24|y~combout\ = ( \counter3|ff2|Q~q\ & ( \counter3|ff1|Q~q\ & ( \register80|ff4|Q~q\ ) ) ) # ( !\counter3|ff2|Q~q\ & ( \counter3|ff1|Q~q\ & ( !\register80|ff4|Q~q\ $ (((!\ff0|Q~q\) # (\counter3|ff0|Q~q\))) ) ) ) # ( \counter3|ff2|Q~q\ & ( 
-- !\counter3|ff1|Q~q\ & ( !\register80|ff4|Q~q\ $ (((!\ff0|Q~q\) # (\counter3|ff0|Q~q\))) ) ) ) # ( !\counter3|ff2|Q~q\ & ( !\counter3|ff1|Q~q\ & ( !\register80|ff4|Q~q\ $ (((!\ff0|Q~q\) # (!\counter3|ff0|Q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100001100001100111100110000110011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ff0|ALT_INV_Q~q\,
	datac => \counter3|ff0|ALT_INV_Q~q\,
	datad => \register80|ff4|ALT_INV_Q~q\,
	datae => \counter3|ff2|ALT_INV_Q~q\,
	dataf => \counter3|ff1|ALT_INV_Q~q\,
	combout => \xor24|y~combout\);

-- Location: FF_X88_Y35_N37
\register81|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor24|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff4|Q~q\);

-- Location: FF_X87_Y35_N7
\register80|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xor25|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff5|Q~q\);

-- Location: LABCELL_X88_Y35_N3
\xor25|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor25|y~combout\ = ( \ff0|Q~q\ & ( !\register80|ff5|Q~q\ $ (((!\counter3|ff1|Q~q\ $ (\counter3|ff2|Q~q\)) # (\counter3|ff0|Q~q\))) ) ) # ( !\ff0|Q~q\ & ( \register80|ff5|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101001000101101110100100010110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ff1|ALT_INV_Q~q\,
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \counter3|ff2|ALT_INV_Q~q\,
	datad => \register80|ff5|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \xor25|y~combout\);

-- Location: FF_X88_Y35_N41
\register81|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor25|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff5|Q~q\);

-- Location: FF_X88_Y35_N10
\register80|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xor26|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff6|Q~q\);

-- Location: LABCELL_X88_Y35_N54
\xor26|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor26|y~combout\ = ( \counter3|ff1|Q~q\ & ( \ff0|Q~q\ & ( \register80|ff6|Q~q\ ) ) ) # ( !\counter3|ff1|Q~q\ & ( \ff0|Q~q\ & ( !\counter3|ff0|Q~q\ $ (!\register80|ff6|Q~q\ $ (\counter3|ff2|Q~q\)) ) ) ) # ( \counter3|ff1|Q~q\ & ( !\ff0|Q~q\ & ( 
-- \register80|ff6|Q~q\ ) ) ) # ( !\counter3|ff1|Q~q\ & ( !\ff0|Q~q\ & ( \register80|ff6|Q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ff0|ALT_INV_Q~q\,
	datac => \register80|ff6|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \counter3|ff1|ALT_INV_Q~q\,
	dataf => \ff0|ALT_INV_Q~q\,
	combout => \xor26|y~combout\);

-- Location: FF_X88_Y35_N58
\register81|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor26|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register81|ff6|Q~q\);

-- Location: FF_X87_Y35_N13
\register80|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \xor27|y~combout\,
	clrn => \control|or20|ALT_INV_y~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register80|ff7|Q~q\);

-- Location: LABCELL_X88_Y35_N48
\xor27|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor27|y~combout\ = ( \register80|ff7|Q~q\ & ( \counter3|ff0|Q~q\ ) ) # ( \register80|ff7|Q~q\ & ( !\counter3|ff0|Q~q\ & ( (!\ff0|Q~q\) # (!\counter3|ff2|Q~q\) ) ) ) # ( !\register80|ff7|Q~q\ & ( !\counter3|ff0|Q~q\ & ( (\ff0|Q~q\ & \counter3|ff2|Q~q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111100110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ff0|ALT_INV_Q~q\,
	datad => \counter3|ff2|ALT_INV_Q~q\,
	datae => \register80|ff7|ALT_INV_Q~q\,
	dataf => \counter3|ff0|ALT_INV_Q~q\,
	combout => \xor27|y~combout\);

-- Location: FF_X88_Y35_N52
\register81|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control|nor20|y~0_combout\,
	asdata => \xor27|y~combout\,
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


