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
-- Generated on "11/11/2022 20:42:34"
                                                             
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
	WAIT FOR 810000 ps;
	GRst <= '0';
	WAIT FOR 70000 ps;
	GRst <= '1';
WAIT;
END PROCESS t_prcs_GRst;

-- mI
t_prcs_mI: PROCESS
BEGIN
	mI <= '0';
	WAIT FOR 1644 ps;
	mI <= '1';
	WAIT FOR 2533 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4133 ps;
		mI <= '1';
		WAIT FOR 2533 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 2491 ps;
	mI <= '1';
	WAIT FOR 760 ps;
	mI <= '0';
	WAIT FOR 3150 ps;
	mI <= '1';
	WAIT FOR 1850 ps;
	mI <= '0';
	WAIT FOR 3150 ps;
	mI <= '1';
	WAIT FOR 4354 ps;
	mI <= '0';
	WAIT FOR 2667 ps;
	mI <= '1';
	WAIT FOR 3999 ps;
	mI <= '0';
	WAIT FOR 2667 ps;
	mI <= '1';
	WAIT FOR 3999 ps;
	mI <= '0';
	WAIT FOR 2667 ps;
	mI <= '1';
	WAIT FOR 4129 ps;
	mI <= '0';
	WAIT FOR 4600 ps;
	mI <= '1';
	WAIT FOR 5400 ps;
	mI <= '0';
	WAIT FOR 4600 ps;
	mI <= '1';
	WAIT FOR 2008 ps;
	mI <= '0';
	WAIT FOR 3747 ps;
	mI <= '1';
	WAIT FOR 3500 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 3500 ps;
	mI <= '0';
	WAIT FOR 2753 ps;
	mI <= '1';
	WAIT FOR 4552 ps;
	mI <= '0';
	WAIT FOR 4800 ps;
	mI <= '1';
	WAIT FOR 648 ps;
	mI <= '0';
	WAIT FOR 2957 ps;
	mI <= '1';
	WAIT FOR 4000 ps;
	mI <= '0';
	WAIT FOR 6000 ps;
	mI <= '1';
	WAIT FOR 4000 ps;
	mI <= '0';
	WAIT FOR 6834 ps;
	mI <= '1';
	WAIT FOR 4500 ps;
	mI <= '0';
	WAIT FOR 1709 ps;
	mI <= '1';
	WAIT FOR 1811 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 4969 ps;
	mI <= '0';
	WAIT FOR 5500 ps;
	mI <= '1';
	WAIT FOR 4500 ps;
	mI <= '0';
	WAIT FOR 5500 ps;
	mI <= '1';
	WAIT FOR 3582 ps;
	mI <= '0';
	WAIT FOR 5100 ps;
	mI <= '1';
	WAIT FOR 5276 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 3500 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 762 ps;
	mI <= '0';
	WAIT FOR 5823 ps;
	mI <= '1';
	WAIT FOR 3600 ps;
	mI <= '0';
	WAIT FOR 6400 ps;
	mI <= '1';
	WAIT FOR 3600 ps;
	mI <= '0';
	WAIT FOR 577 ps;
	mI <= '1';
	WAIT FOR 5552 ps;
	mI <= '0';
	WAIT FOR 10800 ps;
	mI <= '1';
	WAIT FOR 3648 ps;
	mI <= '0';
	WAIT FOR 957 ps;
	mI <= '1';
	WAIT FOR 2150 ps;
	mI <= '0';
	WAIT FOR 2850 ps;
	mI <= '1';
	WAIT FOR 2150 ps;
	mI <= '0';
	WAIT FOR 5795 ps;
	mI <= '1';
	WAIT FOR 3800 ps;
	mI <= '0';
	WAIT FOR 6200 ps;
	mI <= '1';
	WAIT FOR 3800 ps;
	mI <= '0';
	WAIT FOR 3381 ps;
	mI <= '1';
	WAIT FOR 1833 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 1500 ps;
		mI <= '1';
		WAIT FOR 1833 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 456 ps;
	mI <= '1';
	WAIT FOR 4300 ps;
	mI <= '0';
	WAIT FOR 5700 ps;
	mI <= '1';
	WAIT FOR 4300 ps;
	mI <= '0';
	WAIT FOR 6080 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 3200 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 2912 ps;
	mI <= '1';
	WAIT FOR 1533 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 1800 ps;
		mI <= '1';
		WAIT FOR 1533 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 1671 ps;
	mI <= '1';
	WAIT FOR 991 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4533 ps;
		mI <= '1';
		WAIT FOR 2133 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 4533 ps;
	mI <= '1';
	WAIT FOR 1144 ps;
	mI <= '0';
	WAIT FOR 2930 ps;
	mI <= '1';
	WAIT FOR 5900 ps;
	mI <= '0';
	WAIT FOR 1170 ps;
	mI <= '1';
	WAIT FOR 1776 ps;
	mI <= '0';
	WAIT FOR 5000 ps;
	mI <= '1';
	WAIT FOR 5720 ps;
	mI <= '0';
	WAIT FOR 4200 ps;
	mI <= '1';
	WAIT FOR 3304 ps;
	mI <= '0';
	WAIT FOR 6465 ps;
	mI <= '1';
	WAIT FOR 3100 ps;
	mI <= '0';
	WAIT FOR 4076 ps;
	mI <= '1';
	WAIT FOR 4900 ps;
	mI <= '0';
	WAIT FOR 1459 ps;
	mI <= '1';
	WAIT FOR 349 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4533 ps;
		mI <= '1';
		WAIT FOR 2133 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 4533 ps;
	mI <= '1';
	WAIT FOR 3315 ps;
	mI <= '0';
	WAIT FOR 12400 ps;
	mI <= '1';
	WAIT FOR 9723 ps;
	mI <= '0';
	WAIT FOR 4300 ps;
	mI <= '1';
	WAIT FOR 5700 ps;
	mI <= '0';
	WAIT FOR 4300 ps;
	mI <= '1';
	WAIT FOR 2217 ps;
	mI <= '0';
	WAIT FOR 5300 ps;
	mI <= '1';
	WAIT FOR 4942 ps;
	mI <= '0';
	WAIT FOR 1600 ps;
	mI <= '1';
	WAIT FOR 1733 ps;
	mI <= '0';
	WAIT FOR 1600 ps;
	mI <= '1';
	WAIT FOR 1733 ps;
	mI <= '0';
	WAIT FOR 1600 ps;
	mI <= '1';
	WAIT FOR 1323 ps;
	mI <= '0';
	WAIT FOR 2571 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 3200 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 4021 ps;
	mI <= '1';
	WAIT FOR 3600 ps;
	mI <= '0';
	WAIT FOR 6400 ps;
	mI <= '1';
	WAIT FOR 3600 ps;
	mI <= '0';
	WAIT FOR 7032 ps;
	mI <= '1';
	WAIT FOR 2133 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4533 ps;
		mI <= '1';
		WAIT FOR 2133 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 511 ps;
	mI <= '1';
	WAIT FOR 1331 ps;
	mI <= '0';
	WAIT FOR 2450 ps;
	mI <= '1';
	WAIT FOR 2550 ps;
	mI <= '0';
	WAIT FOR 2450 ps;
	mI <= '1';
	WAIT FOR 12817 ps;
	mI <= '0';
	WAIT FOR 8200 ps;
	mI <= '1';
	WAIT FOR 202 ps;
	mI <= '0';
	WAIT FOR 3450 ps;
	mI <= '1';
	WAIT FOR 4400 ps;
	mI <= '0';
	WAIT FOR 2461 ps;
	mI <= '1';
	WAIT FOR 5700 ps;
	mI <= '0';
	WAIT FOR 7158 ps;
	mI <= '1';
	WAIT FOR 3100 ps;
	mI <= '0';
	WAIT FOR 3731 ps;
	mI <= '1';
	WAIT FOR 1272 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 1400 ps;
		mI <= '1';
		WAIT FOR 1933 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 1400 ps;
	mI <= '1';
	WAIT FOR 662 ps;
	mI <= '0';
	WAIT FOR 3815 ps;
	mI <= '1';
	WAIT FOR 3700 ps;
	mI <= '0';
	WAIT FOR 6300 ps;
	mI <= '1';
	WAIT FOR 3700 ps;
	mI <= '0';
	WAIT FOR 2485 ps;
	mI <= '1';
	WAIT FOR 926 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4067 ps;
		mI <= '1';
		WAIT FOR 2599 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 4067 ps;
	mI <= '1';
	WAIT FOR 1675 ps;
	mI <= '0';
	WAIT FOR 127 ps;
	mI <= '1';
	WAIT FOR 3900 ps;
	mI <= '0';
	WAIT FOR 6448 ps;
	mI <= '1';
	WAIT FOR 1900 ps;
	mI <= '0';
	WAIT FOR 3100 ps;
	mI <= '1';
	WAIT FOR 1900 ps;
	mI <= '0';
	WAIT FOR 3887 ps;
	mI <= '1';
	WAIT FOR 1499 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 1834 ps;
		mI <= '1';
		WAIT FOR 1499 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 1019 ps;
	mI <= '1';
	WAIT FOR 4700 ps;
	mI <= '0';
	WAIT FOR 12892 ps;
	mI <= '1';
	WAIT FOR 9000 ps;
	mI <= '0';
	WAIT FOR 4097 ps;
	mI <= '1';
	WAIT FOR 4000 ps;
	mI <= '0';
	WAIT FOR 4865 ps;
	mI <= '1';
	WAIT FOR 3831 ps;
	mI <= '0';
	WAIT FOR 4500 ps;
	mI <= '1';
	WAIT FOR 1669 ps;
	mI <= '0';
	WAIT FOR 1556 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 3200 ps;
	mI <= '1';
	WAIT FOR 1800 ps;
	mI <= '0';
	WAIT FOR 2871 ps;
	mI <= '1';
	WAIT FOR 3700 ps;
	mI <= '0';
	WAIT FOR 5073 ps;
	mI <= '1';
	WAIT FOR 588 ps;
	mI <= '0';
	WAIT FOR 3000 ps;
	mI <= '1';
	WAIT FOR 2000 ps;
	mI <= '0';
	WAIT FOR 3000 ps;
	mI <= '1';
	WAIT FOR 1604 ps;
	mI <= '0';
	WAIT FOR 1967 ps;
	mI <= '1';
	WAIT FOR 1366 ps;
	mI <= '0';
	WAIT FOR 1967 ps;
	mI <= '1';
	WAIT FOR 1366 ps;
	mI <= '0';
	WAIT FOR 1967 ps;
	mI <= '1';
	WAIT FOR 2662 ps;
	mI <= '0';
	WAIT FOR 2900 ps;
	mI <= '1';
	WAIT FOR 2100 ps;
	mI <= '0';
	WAIT FOR 2900 ps;
	mI <= '1';
	WAIT FOR 2523 ps;
	mI <= '0';
	WAIT FOR 4300 ps;
	mI <= '1';
	WAIT FOR 3790 ps;
	mI <= '0';
	WAIT FOR 2563 ps;
	mI <= '1';
	WAIT FOR 2150 ps;
	mI <= '0';
	WAIT FOR 2850 ps;
	mI <= '1';
	WAIT FOR 2150 ps;
	mI <= '0';
	WAIT FOR 287 ps;
	mI <= '1';
	WAIT FOR 1836 ps;
	mI <= '0';
	WAIT FOR 5100 ps;
	mI <= '1';
	WAIT FOR 13831 ps;
	mI <= '0';
	WAIT FOR 9000 ps;
	mI <= '1';
	WAIT FOR 233 ps;
	mI <= '0';
	WAIT FOR 1158 ps;
	mI <= '1';
	WAIT FOR 1433 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 1900 ps;
		mI <= '1';
		WAIT FOR 1433 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 3428 ps;
	mI <= '1';
	WAIT FOR 5400 ps;
	mI <= '0';
	WAIT FOR 5378 ps;
	mI <= '1';
	WAIT FOR 2199 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 4467 ps;
		mI <= '1';
		WAIT FOR 2199 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 1006 ps;
	mI <= '1';
	WAIT FOR 1298 ps;
	mI <= '0';
	WAIT FOR 2700 ps;
	mI <= '1';
	WAIT FOR 2300 ps;
	mI <= '0';
	WAIT FOR 2700 ps;
	mI <= '1';
	WAIT FOR 2583 ps;
	mI <= '0';
	WAIT FOR 5600 ps;
	mI <= '1';
	WAIT FOR 4400 ps;
	mI <= '0';
	WAIT FOR 5600 ps;
	mI <= '1';
	WAIT FOR 3335 ps;
	mI <= '0';
	WAIT FOR 1900 ps;
	mI <= '1';
	WAIT FOR 1433 ps;
	mI <= '0';
	WAIT FOR 1900 ps;
	mI <= '1';
	WAIT FOR 1433 ps;
	mI <= '0';
	WAIT FOR 1900 ps;
	mI <= '1';
	WAIT FOR 918 ps;
	mI <= '0';
	WAIT FOR 2731 ps;
	mI <= '1';
	WAIT FOR 2866 ps;
	FOR i IN 1 TO 2
	LOOP
		mI <= '0';
		WAIT FOR 3800 ps;
		mI <= '1';
		WAIT FOR 2866 ps;
	END LOOP;
	mI <= '0';
	WAIT FOR 1071 ps;
	mI <= '1';
	WAIT FOR 4467 ps;
	mI <= '0';
	WAIT FOR 5300 ps;
	mI <= '1';
	WAIT FOR 4700 ps;
	mI <= '0';
	WAIT FOR 5300 ps;
	mI <= '1';
	WAIT FOR 2311 ps;
	mI <= '0';
	WAIT FOR 6600 ps;
	mI <= '1';
	WAIT FOR 3155 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 3500 ps;
	mI <= '0';
	WAIT FOR 6500 ps;
	mI <= '1';
	WAIT FOR 2324 ps;
	mI <= '0';
	WAIT FOR 14000 ps;
	mI <= '1';
	WAIT FOR 6842 ps;
	mI <= '0';
	WAIT FOR 4600 ps;
	mI <= '1';
	WAIT FOR 3901 ps;
	mI <= '0';
	WAIT FOR 4714 ps;
	mI <= '1';
	WAIT FOR 8000 ps;
	mI <= '0';
WAIT;
END PROCESS t_prcs_mI;
END SerialEncoder_arch;
