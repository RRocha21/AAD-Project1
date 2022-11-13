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
-- Generated on "11/09/2022 17:34:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ParallelDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ParallelDecoder_vhd_vec_tst IS
END ParallelDecoder_vhd_vec_tst;
ARCHITECTURE ParallelDecoder_arch OF ParallelDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m_prime : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ParallelDecoder
	PORT (
	m_prime : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : OUT STD_LOGIC;
	y : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ParallelDecoder
	PORT MAP (
-- list connections between master ports and signals
	m_prime => m_prime,
	valid => valid,
	y => y
	);
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '0';
	WAIT FOR 96000 ps;
	y(3) <= '1';
	WAIT FOR 96000 ps;
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		y(2) <= '0';
		WAIT FOR 48000 ps;
		y(2) <= '1';
		WAIT FOR 48000 ps;
	END LOOP;
	y(2) <= '0';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		y(1) <= '0';
		WAIT FOR 24000 ps;
		y(1) <= '1';
		WAIT FOR 24000 ps;
	END LOOP;
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		y(0) <= '0';
		WAIT FOR 12000 ps;
		y(0) <= '1';
		WAIT FOR 12000 ps;
	END LOOP;
	y(0) <= '0';
WAIT;
END PROCESS t_prcs_y_0;
END ParallelDecoder_arch;
