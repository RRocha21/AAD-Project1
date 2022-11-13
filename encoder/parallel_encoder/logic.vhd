library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR2 is
	port(	a:	in std_logic;
			b:	in std_logic;
			c:	out std_logic);
end XOR2;

architecture Equations of XOR2 is
begin
	c <= a xor b;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOT1 is
	port(	a:	in std_logic;
			b:	out std_logic);
end NOT1;

architecture Equations of NOT1 is
begin
	b <= not a;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND2 is
	port(	a:	in std_logic;
			b:	in std_logic;
			c:	out std_logic);
end AND2;

architecture Equations of AND2 is
begin
	c <= a and b;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR2 is
	port(	a:	in std_logic;
			b:	in std_logic;
			c:	out std_logic);
end OR2;

architecture Equations of OR2 is
begin
	c <= a or b;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR2 is
	port(	a:	in std_logic;
			b:	in std_logic;
			c:	out std_logic);
end NOR2;

architecture Equations of NOR2 is
begin
	c <= a nor b;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOR3 is
	port(	a:	in std_logic;
			b: in std_logic;
			c:	in std_logic;
			d:	out std_logic);
end NOR3;

architecture Equations of NOR3 is
begin
	d <= not (a or b or c);
end Equations;
