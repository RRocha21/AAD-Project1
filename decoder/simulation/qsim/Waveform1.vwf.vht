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
-- Generated on "11/10/2022 20:47:34"
                                                             
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
SIGNAL mPrime : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ParallelDecoder
	PORT (
	mPrime : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : OUT STD_LOGIC;
	y : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ParallelDecoder
	PORT MAP (
-- list connections between master ports and signals
	mPrime => mPrime,
	valid => valid,
	y => y
	);
-- y[7]
t_prcs_y_7: PROCESS
BEGIN
LOOP
	y(7) <= '0';
	WAIT FOR 1280000 ps;
	y(7) <= '1';
	WAIT FOR 1280000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_7;
-- y[6]
t_prcs_y_6: PROCESS
BEGIN
LOOP
	y(6) <= '0';
	WAIT FOR 640000 ps;
	y(6) <= '1';
	WAIT FOR 640000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_6;
-- y[5]
t_prcs_y_5: PROCESS
BEGIN
LOOP
	y(5) <= '0';
	WAIT FOR 320000 ps;
	y(5) <= '1';
	WAIT FOR 320000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_5;
-- y[4]
t_prcs_y_4: PROCESS
BEGIN
LOOP
	y(4) <= '0';
	WAIT FOR 160000 ps;
	y(4) <= '1';
	WAIT FOR 160000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_4;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
LOOP
	y(3) <= '0';
	WAIT FOR 80000 ps;
	y(3) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
LOOP
	y(2) <= '0';
	WAIT FOR 40000 ps;
	y(2) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
LOOP
	y(1) <= '0';
	WAIT FOR 20000 ps;
	y(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
LOOP
	y(0) <= '0';
	WAIT FOR 10000 ps;
	y(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2560000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_y_0;
END ParallelDecoder_arch;
