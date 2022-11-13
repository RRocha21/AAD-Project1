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
-- Generated on "11/13/2022 15:30:33"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL mI : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT SerialEncoder
	PORT (
	clk : IN STD_LOGIC;
	mI : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SerialEncoder
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
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
-- mI[2]
t_prcs_mI_2: PROCESS
BEGIN
	mI(2) <= '0';
	WAIT FOR 480000 ps;
	mI(2) <= '1';
	WAIT FOR 480000 ps;
	mI(2) <= '0';
WAIT;
END PROCESS t_prcs_mI_2;
-- mI[1]
t_prcs_mI_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		mI(1) <= '0';
		WAIT FOR 240000 ps;
		mI(1) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	mI(1) <= '0';
WAIT;
END PROCESS t_prcs_mI_1;
-- mI[0]
t_prcs_mI_0: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		mI(0) <= '0';
		WAIT FOR 120000 ps;
		mI(0) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	mI(0) <= '0';
WAIT;
END PROCESS t_prcs_mI_0;
END SerialEncoder_arch;
