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

-- DATE "11/10/2022 20:33:54"

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

ENTITY 	ParallelDecoder IS
    PORT (
	y : IN std_logic_vector(7 DOWNTO 0);
	valid : OUT std_logic;
	mPrime : OUT std_logic_vector(3 DOWNTO 0)
	);
END ParallelDecoder;

-- Design Ports Information
-- valid	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPrime[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPrime[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPrime[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mPrime[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParallelDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL ww_mPrime : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \localDecoder0|xor2b|y~combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \localDecoder0|xor2a|y~combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \localDecoder0|xor29|y~combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \m2IsError|nor20|y~0_combout\ : std_logic;
SIGNAL \localDecoder0|xor20|y~combout\ : std_logic;
SIGNAL \localDecoder0|xor21|y~combout\ : std_logic;
SIGNAL \localDecoder0|xor22|y~combout\ : std_logic;
SIGNAL \localDecoder0|xor23|y~combout\ : std_logic;
SIGNAL \m0IsError|nor20|y~0_combout\ : std_logic;
SIGNAL \localDecoder0|xor27|y~combout\ : std_logic;
SIGNAL \localDecoder0|xor25|y~combout\ : std_logic;
SIGNAL \localDecoder0|xor26|y~combout\ : std_logic;
SIGNAL \m1IsError|nor20|y~0_combout\ : std_logic;
SIGNAL \nor30|or_1|y~combout\ : std_logic;
SIGNAL \and20|y~combout\ : std_logic;
SIGNAL \m1IsOne|or22|y~0_combout\ : std_logic;
SIGNAL \and21|y~combout\ : std_logic;
SIGNAL \m2IsOne|or22|y~0_combout\ : std_logic;
SIGNAL \and22|y~combout\ : std_logic;
SIGNAL \and23|y~0_combout\ : std_logic;
SIGNAL \xor41|xor_2|y~0_combout\ : std_logic;
SIGNAL \xor42|xor_2|y~0_combout\ : std_logic;
SIGNAL \xor21|y~combout\ : std_logic;
SIGNAL \ALT_INV_y[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \and23|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor42|xor_2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor41|xor_2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \and22|ALT_INV_y~combout\ : std_logic;
SIGNAL \m2IsOne|or22|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \and21|ALT_INV_y~combout\ : std_logic;
SIGNAL \m1IsOne|or22|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \nor30|or_1|ALT_INV_y~combout\ : std_logic;
SIGNAL \m1IsError|nor20|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \localDecoder0|xor26|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor27|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor25|ALT_INV_y~combout\ : std_logic;
SIGNAL \m0IsError|nor20|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \localDecoder0|xor22|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor20|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor23|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor21|ALT_INV_y~combout\ : std_logic;
SIGNAL \m2IsError|nor20|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \localDecoder0|xor2a|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor2b|ALT_INV_y~combout\ : std_logic;
SIGNAL \localDecoder0|xor29|ALT_INV_y~combout\ : std_logic;

BEGIN

ww_y <= y;
valid <= ww_valid;
mPrime <= ww_mPrime;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[6]~input_o\ <= NOT \y[6]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_y[7]~input_o\ <= NOT \y[7]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_y[5]~input_o\ <= NOT \y[5]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_y[4]~input_o\ <= NOT \y[4]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\and23|ALT_INV_y~0_combout\ <= NOT \and23|y~0_combout\;
\xor42|xor_2|ALT_INV_y~0_combout\ <= NOT \xor42|xor_2|y~0_combout\;
\xor41|xor_2|ALT_INV_y~0_combout\ <= NOT \xor41|xor_2|y~0_combout\;
\and22|ALT_INV_y~combout\ <= NOT \and22|y~combout\;
\m2IsOne|or22|ALT_INV_y~0_combout\ <= NOT \m2IsOne|or22|y~0_combout\;
\and21|ALT_INV_y~combout\ <= NOT \and21|y~combout\;
\m1IsOne|or22|ALT_INV_y~0_combout\ <= NOT \m1IsOne|or22|y~0_combout\;
\nor30|or_1|ALT_INV_y~combout\ <= NOT \nor30|or_1|y~combout\;
\m1IsError|nor20|ALT_INV_y~0_combout\ <= NOT \m1IsError|nor20|y~0_combout\;
\localDecoder0|xor26|ALT_INV_y~combout\ <= NOT \localDecoder0|xor26|y~combout\;
\localDecoder0|xor27|ALT_INV_y~combout\ <= NOT \localDecoder0|xor27|y~combout\;
\localDecoder0|xor25|ALT_INV_y~combout\ <= NOT \localDecoder0|xor25|y~combout\;
\m0IsError|nor20|ALT_INV_y~0_combout\ <= NOT \m0IsError|nor20|y~0_combout\;
\localDecoder0|xor22|ALT_INV_y~combout\ <= NOT \localDecoder0|xor22|y~combout\;
\localDecoder0|xor20|ALT_INV_y~combout\ <= NOT \localDecoder0|xor20|y~combout\;
\localDecoder0|xor23|ALT_INV_y~combout\ <= NOT \localDecoder0|xor23|y~combout\;
\localDecoder0|xor21|ALT_INV_y~combout\ <= NOT \localDecoder0|xor21|y~combout\;
\m2IsError|nor20|ALT_INV_y~0_combout\ <= NOT \m2IsError|nor20|y~0_combout\;
\localDecoder0|xor2a|ALT_INV_y~combout\ <= NOT \localDecoder0|xor2a|y~combout\;
\localDecoder0|xor2b|ALT_INV_y~combout\ <= NOT \localDecoder0|xor2b|y~combout\;
\localDecoder0|xor29|ALT_INV_y~combout\ <= NOT \localDecoder0|xor29|y~combout\;

-- Location: IOOBUF_X89_Y35_N62
\valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \nor30|or_1|ALT_INV_y~combout\,
	devoe => ww_devoe,
	o => ww_valid);

-- Location: IOOBUF_X89_Y35_N45
\mPrime[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \and20|y~combout\,
	devoe => ww_devoe,
	o => ww_mPrime(0));

-- Location: IOOBUF_X89_Y37_N56
\mPrime[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \and21|y~combout\,
	devoe => ww_devoe,
	o => ww_mPrime(1));

-- Location: IOOBUF_X89_Y37_N22
\mPrime[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \and22|y~combout\,
	devoe => ww_devoe,
	o => ww_mPrime(2));

-- Location: IOOBUF_X89_Y38_N22
\mPrime[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor21|y~combout\,
	devoe => ww_devoe,
	o => ww_mPrime(3));

-- Location: IOIBUF_X89_Y36_N55
\y[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X88_Y36_N3
\localDecoder0|xor2b|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor2b|y~combout\ = !\y[7]~input_o\ $ (!\y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[7]~input_o\,
	datac => \ALT_INV_y[3]~input_o\,
	combout => \localDecoder0|xor2b|y~combout\);

-- Location: IOIBUF_X89_Y35_N78
\y[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X88_Y36_N36
\localDecoder0|xor2a|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor2a|y~combout\ = ( \y[2]~input_o\ & ( !\y[6]~input_o\ ) ) # ( !\y[2]~input_o\ & ( \y[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[6]~input_o\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \localDecoder0|xor2a|y~combout\);

-- Location: IOIBUF_X89_Y35_N95
\y[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\y[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\localDecoder0|xor29|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor29|y~combout\ = ( \y[1]~input_o\ & ( !\y[5]~input_o\ ) ) # ( !\y[1]~input_o\ & ( \y[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[5]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \localDecoder0|xor29|y~combout\);

-- Location: IOIBUF_X89_Y36_N21
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\m2IsError|nor20|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2IsError|nor20|y~0_combout\ = ( \y[0]~input_o\ & ( (!\localDecoder0|xor2b|y~combout\ & ((!\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ & \localDecoder0|xor29|y~combout\)) # (\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ $ 
-- (\localDecoder0|xor29|y~combout\))))) # (\localDecoder0|xor2b|y~combout\ & ((!\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ $ (\localDecoder0|xor29|y~combout\))) # (\localDecoder0|xor2a|y~combout\ & (\y[4]~input_o\ & 
-- !\localDecoder0|xor29|y~combout\)))) ) ) # ( !\y[0]~input_o\ & ( (!\localDecoder0|xor2b|y~combout\ & ((!\localDecoder0|xor2a|y~combout\ & (\y[4]~input_o\ & \localDecoder0|xor29|y~combout\)) # (\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ $ 
-- (!\localDecoder0|xor29|y~combout\))))) # (\localDecoder0|xor2b|y~combout\ & ((!\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ $ (!\localDecoder0|xor29|y~combout\))) # (\localDecoder0|xor2a|y~combout\ & (!\y[4]~input_o\ & 
-- !\localDecoder0|xor29|y~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001101000000101100110100001100001100001100110000110000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \localDecoder0|xor2b|ALT_INV_y~combout\,
	datab => \localDecoder0|xor2a|ALT_INV_y~combout\,
	datac => \ALT_INV_y[4]~input_o\,
	datad => \localDecoder0|xor29|ALT_INV_y~combout\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \m2IsError|nor20|y~0_combout\);

-- Location: LABCELL_X88_Y36_N18
\localDecoder0|xor20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor20|y~combout\ = ( \y[1]~input_o\ & ( !\y[0]~input_o\ ) ) # ( !\y[1]~input_o\ & ( \y[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \localDecoder0|xor20|y~combout\);

-- Location: MLABCELL_X87_Y36_N30
\localDecoder0|xor21|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor21|y~combout\ = ( \y[3]~input_o\ & ( !\y[2]~input_o\ ) ) # ( !\y[3]~input_o\ & ( \y[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[2]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \localDecoder0|xor21|y~combout\);

-- Location: LABCELL_X88_Y36_N27
\localDecoder0|xor22|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor22|y~combout\ = ( \y[5]~input_o\ & ( !\y[4]~input_o\ ) ) # ( !\y[5]~input_o\ & ( \y[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[4]~input_o\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \localDecoder0|xor22|y~combout\);

-- Location: LABCELL_X88_Y36_N12
\localDecoder0|xor23|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor23|y~combout\ = !\y[6]~input_o\ $ (!\y[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[6]~input_o\,
	datad => \ALT_INV_y[7]~input_o\,
	combout => \localDecoder0|xor23|y~combout\);

-- Location: MLABCELL_X87_Y36_N9
\m0IsError|nor20|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0IsError|nor20|y~0_combout\ = ( \localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ & ( (!\localDecoder0|xor20|y~combout\ & !\localDecoder0|xor21|y~combout\) ) ) ) # ( !\localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ 
-- & ( !\localDecoder0|xor20|y~combout\ $ (!\localDecoder0|xor21|y~combout\) ) ) ) # ( \localDecoder0|xor22|y~combout\ & ( !\localDecoder0|xor23|y~combout\ & ( !\localDecoder0|xor20|y~combout\ $ (!\localDecoder0|xor21|y~combout\) ) ) ) # ( 
-- !\localDecoder0|xor22|y~combout\ & ( !\localDecoder0|xor23|y~combout\ & ( (\localDecoder0|xor20|y~combout\ & \localDecoder0|xor21|y~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111000011110000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \localDecoder0|xor20|ALT_INV_y~combout\,
	datac => \localDecoder0|xor21|ALT_INV_y~combout\,
	datae => \localDecoder0|xor22|ALT_INV_y~combout\,
	dataf => \localDecoder0|xor23|ALT_INV_y~combout\,
	combout => \m0IsError|nor20|y~0_combout\);

-- Location: LABCELL_X88_Y36_N21
\localDecoder0|xor27|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor27|y~combout\ = ( \y[5]~input_o\ & ( !\y[7]~input_o\ ) ) # ( !\y[5]~input_o\ & ( \y[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[7]~input_o\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \localDecoder0|xor27|y~combout\);

-- Location: LABCELL_X88_Y36_N33
\localDecoder0|xor25|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor25|y~combout\ = ( \y[1]~input_o\ & ( !\y[3]~input_o\ ) ) # ( !\y[1]~input_o\ & ( \y[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[3]~input_o\,
	dataf => \ALT_INV_y[1]~input_o\,
	combout => \localDecoder0|xor25|y~combout\);

-- Location: LABCELL_X88_Y36_N6
\localDecoder0|xor26|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \localDecoder0|xor26|y~combout\ = ( \y[6]~input_o\ & ( !\y[4]~input_o\ ) ) # ( !\y[6]~input_o\ & ( \y[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y[4]~input_o\,
	datae => \ALT_INV_y[6]~input_o\,
	combout => \localDecoder0|xor26|y~combout\);

-- Location: MLABCELL_X87_Y36_N42
\m1IsError|nor20|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1IsError|nor20|y~0_combout\ = ( \localDecoder0|xor26|y~combout\ & ( \y[2]~input_o\ & ( (!\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ $ (\localDecoder0|xor25|y~combout\))) # (\localDecoder0|xor27|y~combout\ & (\y[0]~input_o\ & 
-- !\localDecoder0|xor25|y~combout\)) ) ) ) # ( !\localDecoder0|xor26|y~combout\ & ( \y[2]~input_o\ & ( (!\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) # (\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ $ 
-- (\localDecoder0|xor25|y~combout\))) ) ) ) # ( \localDecoder0|xor26|y~combout\ & ( !\y[2]~input_o\ & ( (!\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ $ (!\localDecoder0|xor25|y~combout\))) # (\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ & 
-- !\localDecoder0|xor25|y~combout\)) ) ) ) # ( !\localDecoder0|xor26|y~combout\ & ( !\y[2]~input_o\ & ( (!\localDecoder0|xor27|y~combout\ & (\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) # (\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ $ 
-- (!\localDecoder0|xor25|y~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110011010000110100001001001010010011001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \localDecoder0|xor27|ALT_INV_y~combout\,
	datab => \ALT_INV_y[0]~input_o\,
	datac => \localDecoder0|xor25|ALT_INV_y~combout\,
	datae => \localDecoder0|xor26|ALT_INV_y~combout\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \m1IsError|nor20|y~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\nor30|or_1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \nor30|or_1|y~combout\ = ((\m1IsError|nor20|y~0_combout\) # (\m0IsError|nor20|y~0_combout\)) # (\m2IsError|nor20|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2IsError|nor20|ALT_INV_y~0_combout\,
	datab => \m0IsError|nor20|ALT_INV_y~0_combout\,
	datad => \m1IsError|nor20|ALT_INV_y~0_combout\,
	combout => \nor30|or_1|y~combout\);

-- Location: MLABCELL_X87_Y36_N48
\and20|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \and20|y~combout\ = ( \localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ & ( (!\m2IsError|nor20|y~0_combout\ & (!\m1IsError|nor20|y~0_combout\ & ((\localDecoder0|xor20|y~combout\) # (\localDecoder0|xor21|y~combout\)))) ) ) ) # ( 
-- !\localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ & ( (\localDecoder0|xor21|y~combout\ & (\localDecoder0|xor20|y~combout\ & (!\m2IsError|nor20|y~0_combout\ & !\m1IsError|nor20|y~0_combout\))) ) ) ) # ( \localDecoder0|xor22|y~combout\ & 
-- ( !\localDecoder0|xor23|y~combout\ & ( (\localDecoder0|xor21|y~combout\ & (\localDecoder0|xor20|y~combout\ & (!\m2IsError|nor20|y~0_combout\ & !\m1IsError|nor20|y~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000010000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \localDecoder0|xor21|ALT_INV_y~combout\,
	datab => \localDecoder0|xor20|ALT_INV_y~combout\,
	datac => \m2IsError|nor20|ALT_INV_y~0_combout\,
	datad => \m1IsError|nor20|ALT_INV_y~0_combout\,
	datae => \localDecoder0|xor22|ALT_INV_y~combout\,
	dataf => \localDecoder0|xor23|ALT_INV_y~combout\,
	combout => \and20|y~combout\);

-- Location: MLABCELL_X87_Y36_N24
\m1IsOne|or22|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1IsOne|or22|y~0_combout\ = ( \localDecoder0|xor26|y~combout\ & ( \y[2]~input_o\ & ( (!\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) # (\localDecoder0|xor27|y~combout\ & ((!\y[0]~input_o\) # 
-- (\localDecoder0|xor25|y~combout\))) ) ) ) # ( !\localDecoder0|xor26|y~combout\ & ( \y[2]~input_o\ & ( (\localDecoder0|xor27|y~combout\ & (!\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) ) ) ) # ( \localDecoder0|xor26|y~combout\ & ( !\y[2]~input_o\ & ( 
-- (!\localDecoder0|xor27|y~combout\ & (\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) # (\localDecoder0|xor27|y~combout\ & ((\localDecoder0|xor25|y~combout\) # (\y[0]~input_o\))) ) ) ) # ( !\localDecoder0|xor26|y~combout\ & ( !\y[2]~input_o\ & ( 
-- (\localDecoder0|xor27|y~combout\ & (\y[0]~input_o\ & \localDecoder0|xor25|y~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101110001011100000100000001000100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \localDecoder0|xor27|ALT_INV_y~combout\,
	datab => \ALT_INV_y[0]~input_o\,
	datac => \localDecoder0|xor25|ALT_INV_y~combout\,
	datae => \localDecoder0|xor26|ALT_INV_y~combout\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \m1IsOne|or22|y~0_combout\);

-- Location: LABCELL_X88_Y36_N15
\and21|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \and21|y~combout\ = ( !\m0IsError|nor20|y~0_combout\ & ( (!\m2IsError|nor20|y~0_combout\ & (!\m1IsError|nor20|y~0_combout\ & \m1IsOne|or22|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2IsError|nor20|ALT_INV_y~0_combout\,
	datab => \m1IsError|nor20|ALT_INV_y~0_combout\,
	datac => \m1IsOne|or22|ALT_INV_y~0_combout\,
	dataf => \m0IsError|nor20|ALT_INV_y~0_combout\,
	combout => \and21|y~combout\);

-- Location: LABCELL_X88_Y36_N24
\m2IsOne|or22|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2IsOne|or22|y~0_combout\ = ( \y[0]~input_o\ & ( (!\y[4]~input_o\ & ((!\localDecoder0|xor2a|y~combout\ & (\localDecoder0|xor2b|y~combout\ & \localDecoder0|xor29|y~combout\)) # (\localDecoder0|xor2a|y~combout\ & ((\localDecoder0|xor29|y~combout\) # 
-- (\localDecoder0|xor2b|y~combout\))))) # (\y[4]~input_o\ & (\localDecoder0|xor2a|y~combout\ & (\localDecoder0|xor2b|y~combout\ & \localDecoder0|xor29|y~combout\))) ) ) # ( !\y[0]~input_o\ & ( (!\y[4]~input_o\ & (\localDecoder0|xor2a|y~combout\ & 
-- (\localDecoder0|xor2b|y~combout\ & \localDecoder0|xor29|y~combout\))) # (\y[4]~input_o\ & ((!\localDecoder0|xor2a|y~combout\ & (\localDecoder0|xor2b|y~combout\ & \localDecoder0|xor29|y~combout\)) # (\localDecoder0|xor2a|y~combout\ & 
-- ((\localDecoder0|xor29|y~combout\) # (\localDecoder0|xor2b|y~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010111000000010001011100000010001010110000001000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[4]~input_o\,
	datab => \localDecoder0|xor2a|ALT_INV_y~combout\,
	datac => \localDecoder0|xor2b|ALT_INV_y~combout\,
	datad => \localDecoder0|xor29|ALT_INV_y~combout\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \m2IsOne|or22|y~0_combout\);

-- Location: LABCELL_X88_Y36_N45
\and22|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \and22|y~combout\ = ( \m2IsOne|or22|y~0_combout\ & ( (!\m2IsError|nor20|y~0_combout\ & (!\m0IsError|nor20|y~0_combout\ & !\m1IsError|nor20|y~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2IsError|nor20|ALT_INV_y~0_combout\,
	datac => \m0IsError|nor20|ALT_INV_y~0_combout\,
	datad => \m1IsError|nor20|ALT_INV_y~0_combout\,
	dataf => \m2IsOne|or22|ALT_INV_y~0_combout\,
	combout => \and22|y~combout\);

-- Location: MLABCELL_X87_Y36_N3
\and23|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \and23|y~0_combout\ = ( \localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ & ( (!\localDecoder0|xor20|y~combout\ & (!\m2IsError|nor20|y~0_combout\ & (!\m1IsError|nor20|y~0_combout\ & \localDecoder0|xor21|y~combout\))) # 
-- (\localDecoder0|xor20|y~combout\ & (!\localDecoder0|xor21|y~combout\ & ((\m1IsError|nor20|y~0_combout\) # (\m2IsError|nor20|y~0_combout\)))) ) ) ) # ( !\localDecoder0|xor22|y~combout\ & ( \localDecoder0|xor23|y~combout\ & ( 
-- (\localDecoder0|xor20|y~combout\ & (\localDecoder0|xor21|y~combout\ & ((\m1IsError|nor20|y~0_combout\) # (\m2IsError|nor20|y~0_combout\)))) ) ) ) # ( \localDecoder0|xor22|y~combout\ & ( !\localDecoder0|xor23|y~combout\ & ( (\localDecoder0|xor20|y~combout\ 
-- & (\localDecoder0|xor21|y~combout\ & ((\m1IsError|nor20|y~0_combout\) # (\m2IsError|nor20|y~0_combout\)))) ) ) ) # ( !\localDecoder0|xor22|y~combout\ & ( !\localDecoder0|xor23|y~combout\ & ( (\localDecoder0|xor20|y~combout\ & 
-- !\localDecoder0|xor21|y~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000011100000000000001110000011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2IsError|nor20|ALT_INV_y~0_combout\,
	datab => \m1IsError|nor20|ALT_INV_y~0_combout\,
	datac => \localDecoder0|xor20|ALT_INV_y~combout\,
	datad => \localDecoder0|xor21|ALT_INV_y~combout\,
	datae => \localDecoder0|xor22|ALT_INV_y~combout\,
	dataf => \localDecoder0|xor23|ALT_INV_y~combout\,
	combout => \and23|y~0_combout\);

-- Location: LABCELL_X88_Y36_N48
\xor41|xor_2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor41|xor_2|y~0_combout\ = ( \y[4]~input_o\ & ( \y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[6]~input_o\ $ (!\y[1]~input_o\))) ) ) ) # ( !\y[4]~input_o\ & ( \y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[6]~input_o\ $ 
-- (\y[1]~input_o\))) ) ) ) # ( \y[4]~input_o\ & ( !\y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[6]~input_o\ $ (\y[1]~input_o\))) ) ) ) # ( !\y[4]~input_o\ & ( !\y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[6]~input_o\ $ 
-- (!\y[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[7]~input_o\,
	datab => \ALT_INV_y[3]~input_o\,
	datac => \ALT_INV_y[6]~input_o\,
	datad => \ALT_INV_y[1]~input_o\,
	datae => \ALT_INV_y[4]~input_o\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \xor41|xor_2|y~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\xor42|xor_2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor42|xor_2|y~0_combout\ = ( \y[2]~input_o\ & ( \y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[1]~input_o\ $ (!\y[6]~input_o\))) ) ) ) # ( !\y[2]~input_o\ & ( \y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[1]~input_o\ $ 
-- (\y[6]~input_o\))) ) ) ) # ( \y[2]~input_o\ & ( !\y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[1]~input_o\ $ (\y[6]~input_o\))) ) ) ) # ( !\y[2]~input_o\ & ( !\y[5]~input_o\ & ( !\y[7]~input_o\ $ (!\y[3]~input_o\ $ (!\y[1]~input_o\ $ 
-- (!\y[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[7]~input_o\,
	datab => \ALT_INV_y[3]~input_o\,
	datac => \ALT_INV_y[1]~input_o\,
	datad => \ALT_INV_y[6]~input_o\,
	datae => \ALT_INV_y[2]~input_o\,
	dataf => \ALT_INV_y[5]~input_o\,
	combout => \xor42|xor_2|y~0_combout\);

-- Location: LABCELL_X88_Y36_N54
\xor21|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor21|y~combout\ = ( \xor42|xor_2|y~0_combout\ & ( \and21|y~combout\ & ( !\y[0]~input_o\ $ (((!\and23|y~0_combout\) # ((!\xor41|xor_2|y~0_combout\) # (!\and22|y~combout\)))) ) ) ) # ( !\xor42|xor_2|y~0_combout\ & ( \and21|y~combout\ & ( !\y[0]~input_o\ $ 
-- (((!\and23|y~0_combout\) # ((!\xor41|xor_2|y~0_combout\) # (\and22|y~combout\)))) ) ) ) # ( \xor42|xor_2|y~0_combout\ & ( !\and21|y~combout\ & ( !\y[0]~input_o\ $ (((!\and23|y~0_combout\) # ((!\and22|y~combout\) # (\xor41|xor_2|y~0_combout\)))) ) ) ) # ( 
-- !\xor42|xor_2|y~0_combout\ & ( !\and21|y~combout\ & ( !\y[0]~input_o\ $ (((!\and23|y~0_combout\) # ((\and22|y~combout\) # (\xor41|xor_2|y~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101010101010101010110010101010110010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \and23|ALT_INV_y~0_combout\,
	datac => \xor41|xor_2|ALT_INV_y~0_combout\,
	datad => \and22|ALT_INV_y~combout\,
	datae => \xor42|xor_2|ALT_INV_y~0_combout\,
	dataf => \and21|ALT_INV_y~combout\,
	combout => \xor21|y~combout\);

-- Location: MLABCELL_X87_Y28_N0
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


