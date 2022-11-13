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

-- DATE "11/06/2022 20:40:49"

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

ENTITY 	HadamardEncoder IS
    PORT (
	m : IN std_logic_vector(3 DOWNTO 0);
	x : OUT std_logic_vector(7 DOWNTO 0)
	);
END HadamardEncoder;

-- Design Ports Information
-- x[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HadamardEncoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \xor7|c~combout\ : std_logic;
SIGNAL \xor6|c~combout\ : std_logic;
SIGNAL \xor5|c~combout\ : std_logic;
SIGNAL \xor1|c~combout\ : std_logic;
SIGNAL \xor4|c~combout\ : std_logic;
SIGNAL \xor3|c~combout\ : std_logic;
SIGNAL \xor2|c~combout\ : std_logic;
SIGNAL \ALT_INV_m[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_m[2]~input_o\ : std_logic;

BEGIN

ww_m <= m;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_m[1]~input_o\ <= NOT \m[1]~input_o\;
\ALT_INV_m[0]~input_o\ <= NOT \m[0]~input_o\;
\ALT_INV_m[3]~input_o\ <= NOT \m[3]~input_o\;
\ALT_INV_m[2]~input_o\ <= NOT \m[2]~input_o\;

-- Location: IOOBUF_X89_Y8_N56
\x[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor7|c~combout\,
	devoe => ww_devoe,
	o => ww_x(0));

-- Location: IOOBUF_X89_Y4_N79
\x[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor6|c~combout\,
	devoe => ww_devoe,
	o => ww_x(1));

-- Location: IOOBUF_X89_Y8_N5
\x[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor5|c~combout\,
	devoe => ww_devoe,
	o => ww_x(2));

-- Location: IOOBUF_X89_Y6_N5
\x[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor1|c~combout\,
	devoe => ww_devoe,
	o => ww_x(3));

-- Location: IOOBUF_X89_Y8_N22
\x[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor4|c~combout\,
	devoe => ww_devoe,
	o => ww_x(4));

-- Location: IOOBUF_X89_Y8_N39
\x[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor3|c~combout\,
	devoe => ww_devoe,
	o => ww_x(5));

-- Location: IOOBUF_X89_Y6_N22
\x[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor2|c~combout\,
	devoe => ww_devoe,
	o => ww_x(6));

-- Location: IOOBUF_X89_Y6_N56
\x[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => ww_x(7));

-- Location: IOIBUF_X89_Y9_N38
\m[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\m[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\m[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\m[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\xor7|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor7|c~combout\ = ( \m[0]~input_o\ & ( \m[1]~input_o\ & ( !\m[2]~input_o\ $ (!\m[3]~input_o\) ) ) ) # ( !\m[0]~input_o\ & ( \m[1]~input_o\ & ( !\m[2]~input_o\ $ (\m[3]~input_o\) ) ) ) # ( \m[0]~input_o\ & ( !\m[1]~input_o\ & ( !\m[2]~input_o\ $ 
-- (\m[3]~input_o\) ) ) ) # ( !\m[0]~input_o\ & ( !\m[1]~input_o\ & ( !\m[2]~input_o\ $ (!\m[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010110100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[2]~input_o\,
	datac => \ALT_INV_m[3]~input_o\,
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[1]~input_o\,
	combout => \xor7|c~combout\);

-- Location: LABCELL_X88_Y8_N36
\xor6|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor6|c~combout\ = ( \m[0]~input_o\ & ( \m[1]~input_o\ & ( \m[2]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( \m[1]~input_o\ & ( !\m[2]~input_o\ ) ) ) # ( \m[0]~input_o\ & ( !\m[1]~input_o\ & ( !\m[2]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( !\m[1]~input_o\ & ( 
-- \m[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_m[2]~input_o\,
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[1]~input_o\,
	combout => \xor6|c~combout\);

-- Location: LABCELL_X88_Y8_N15
\xor5|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor5|c~combout\ = ( \m[0]~input_o\ & ( \m[1]~input_o\ & ( \m[3]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( \m[1]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( \m[0]~input_o\ & ( !\m[1]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( !\m[1]~input_o\ & ( 
-- \m[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[3]~input_o\,
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[1]~input_o\,
	combout => \xor5|c~combout\);

-- Location: LABCELL_X88_Y8_N48
\xor1|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor1|c~combout\ = ( !\m[0]~input_o\ & ( \m[1]~input_o\ ) ) # ( \m[0]~input_o\ & ( !\m[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[1]~input_o\,
	combout => \xor1|c~combout\);

-- Location: LABCELL_X88_Y8_N27
\xor4|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor4|c~combout\ = ( \m[0]~input_o\ & ( \m[2]~input_o\ & ( \m[3]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( \m[2]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( \m[0]~input_o\ & ( !\m[2]~input_o\ & ( !\m[3]~input_o\ ) ) ) # ( !\m[0]~input_o\ & ( !\m[2]~input_o\ & ( 
-- \m[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m[3]~input_o\,
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[2]~input_o\,
	combout => \xor4|c~combout\);

-- Location: LABCELL_X88_Y8_N33
\xor3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor3|c~combout\ = ( !\m[0]~input_o\ & ( \m[2]~input_o\ ) ) # ( \m[0]~input_o\ & ( !\m[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[2]~input_o\,
	combout => \xor3|c~combout\);

-- Location: LABCELL_X88_Y8_N6
\xor2|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor2|c~combout\ = ( !\m[0]~input_o\ & ( \m[3]~input_o\ ) ) # ( \m[0]~input_o\ & ( !\m[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_m[0]~input_o\,
	dataf => \ALT_INV_m[3]~input_o\,
	combout => \xor2|c~combout\);

-- Location: LABCELL_X66_Y1_N0
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


