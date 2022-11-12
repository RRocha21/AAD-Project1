LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Rom IS
  PORT (add  :  IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        dOut : OUT STD_LOGIC_VECTOR (8 DOWNTO 0));
END Rom;

ARCHITECTURE behavior OF Rom IS
BEGIN
  PROCESS (add)
    TYPE CRom IS ARRAY(0 TO 5) OF STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE prog: CRom := (CONV_STD_LOGIC_VECTOR (16#1#, 9),    -- nGRst = 1   START
									 CONV_STD_LOGIC_VECTOR (16#155#, 9),  -- nGRst = 1   M0
                            CONV_STD_LOGIC_VECTOR (16#114#, 9),   -- nGRst = 1   M1
                            CONV_STD_LOGIC_VECTOR (16#13F#, 9),  -- nGRst = 1   M2
                            CONV_STD_LOGIC_VECTOR (16#1FF#, 9),  -- nGRst = 1   M3 - REZ
                            CONV_STD_LOGIC_VECTOR (16#1#, 9)     -- nGRst = 0   RESET

									 );
                         
    VARIABLE pos: INTEGER;
  BEGIN
    pos := CONV_INTEGER (add);
    dOut <= prog(pos);
  END PROCESS;
END behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY control IS
  PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        add:   IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		  nRst: OUT STD_LOGIC;
		  f:		OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkO:  OUT STD_LOGIC);
END control;

ARCHITECTURE structure OF control IS
  SIGNAL cLines: STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL iNRst: STD_LOGIC;
  COMPONENT Rom
    PORT (add:  IN STD_LOGIC_VECTOR (2 DOWNTO 0);
          dOut: OUT STD_LOGIC_VECTOR (8 DOWNTO 0));
  END COMPONENT;
  COMPONENT gateNand2
    PORT (x1, x2: IN STD_LOGIC;
          y:      OUT STD_LOGIC);
  END COMPONENT;
  COMPONENT gateNor2
    PORT (x1, x2: IN STD_LOGIC;
          y:      OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  cMem: Rom   PORT MAP (add, cLines);
  nad1: gateNand2 PORT MAP (nGRst, cLines(1), iNRst);
  nad2: gateNand2 PORT MAP (clk, iNRst, nRst);
  nord: gateNor2  PORT MAP (clk, cLines(0), clkO);
  f <= cLines(8 DOWNTO 1);
END structure;