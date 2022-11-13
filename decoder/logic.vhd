library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateXOR2 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			y	: out std_logic);
end gateXOR2;

architecture Equations of gateXOR2 is
begin
	y <= x0 xor x1;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateNOT1 is
	port(	x	: in std_logic;
			y	: out std_logic);
end gateNOT1;

architecture Equations of gateNOT1 is
begin
	y <= not x;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateAND2 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			y	: out std_logic);
end gateAND2;

architecture Equations of gateAND2 is
begin
	y <= x0 and x1;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateOR2 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			y	: out std_logic);
end gateOR2;

architecture Equations of gateOR2 is
begin
	y <= x0 or x1;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateNOR2 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			y	: out std_logic);
end gateNOR2;

architecture Equations of gateNOR2 is
begin
	y <= x0 nor x1;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateNOR3 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			x2	: in std_logic;
			y	: out std_logic);
end gateNOR3;

architecture Structural of gateNOR3 is
	signal s0, s1	: std_logic;
	
	component gateOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateNOT1
		port(	x	: in std_logic;
				y	: out std_logic);
	end component;
begin
	or_0:	gateOR2 port map(x0, x1, s0);
	or_1:	gateOR2 port map(s0, x2, s1);
	not_0:	gateNOT1 port map(s1, y);
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateAND3 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			x2	: in std_logic;
			y	: out std_logic);
end gateAND3;

architecture Structural of gateAND3 is
	signal s0	: std_logic;
	
	component gateAND2
		port(	x0	: in std_logic;
				x1	: in std_logic;
				y 	: out std_logic);
	end component;
begin
	and_0	: gateAND2 port map(x0, x1, s0);
	and_1	: gateAND2 port map(s0, x2, y);
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateXOR4 is
	port(	x0	: in std_logic;
			x1	: in std_logic;
			x2	: in std_logic;
			x3	: in std_logic;
			y	: out std_logic);
end gateXOR4;

architecture Structural of gateXOR4 is
	signal s0, s1	: std_logic;
	
	component gateXOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	xor_0:	gateXOR2 port map(x0, x1, s0);
	xor_1:	gateXOR2 port map(x2, x3, s1);
	xor_2:	gateXOR2 port map(s0, s1, y);
end Structural;
