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
	port (x0, x1	: in std_logic;
			y			: out std_logic);
end gateNOR2;

architecture Equations of gateNOR2 is
begin
	y <= x0 nor x1;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity gateNAND2 is
	port (x0, x1	: in std_logic;
			y			: out std_logic);
end gateNAND2;

architecture Equations of gateNAND2 is
begin
	y <= x0 nand x1;
end Equations;

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
