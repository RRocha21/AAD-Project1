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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/11/2022 20:36:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SerialEncoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SerialEncoder_vhd_vec_tst IS
END SerialEncoder_vhd_vec_tst;
ARCHITECTURE SerialEncoder_arch OF SerialEncoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL GRst : STD_LOGIC;
SIGNAL mI : STD_LOGIC;
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SerialEncoder
	PORT (
	busy : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	GRst : IN STD_LOGIC;
	mI : IN STD_LOGIC;
	y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SerialEncoder
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	clk => clk,
	GRst => GRst,
	mI => mI,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- GRst
t_prcs_GRst: PROCESS
BEGIN
	GRst <= '1';
	WAIT FOR 340000 ps;
	GRst <= '0';
	WAIT FOR 120000 ps;
	GRst <= '1';
WAIT;
END PROCESS t_prcs_GRst;

-- mI
t_prcs_mI: PROCESS
BEGIN
	mI <= '0';
	WAIT FOR 80000 ps;
	mI <= '1';
	WAIT FOR 250000 ps;
	mI <= '0';
	WAIT FOR 50000 ps;
	mI <= '1';
	WAIT FOR 100000 ps;
	mI <= '0';
	WAIT FOR 80000 ps;
	mI <= '1';
	WAIT FOR 240000 ps;
	mI <= '0';
WAIT;
END PROCESS t_prcs_mI;
END SerialEncoder_arch;
