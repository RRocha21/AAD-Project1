library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR1 is
	port(	a:	in std_logic;
			b:	in std_logic;
			c:	out std_logic);
end XOR1;

architecture Equations of XOR1 is
begin
	c <= a xor b;
end Equations;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HadamardEncoder is
	port(	m:	in std_logic_vector(3 downto 0);
			x:	out std_logic_vector(7 downto 0));
end HadamardEncoder;

architecture Structural of HadamardEncoder is
	signal m1xorm2, m3xorm4:	std_logic; 
begin
	x(7) <= m(0);
	
	xor0:	entity work.XOR1(Equations)
			port map(a => m(3),
						b => m(2),
						c => m1xorm2);
						
	xor1:	entity work.XOR1(Equations)
			port map(a => m(1),
						b => m(0),
						c => m3xorm4);
						
	xor2:	entity work.XOR1(Equations)
			port map(a => m(3),
						b => m(0),
						c => x(6));
						
	xor3:	entity work.XOR1(Equations)
			port map(a => m(2),
						b => m(0),
						c => x(5));
						
	xor4:	entity work.XOR1(Equations)
			port map(a => m1xorm2,
						b => m(0),
						c => x(4));
						
	x(3) <= m3xorm4;
						
	xor5:	entity work.XOR1(Equations)
			port map(a => m(3),
						b => m3xorm4,
						c => x(2));
						
	xor6:	entity work.XOR1(Equations)
			port map(a => m(2),
						b => m3xorm4,
						c => x(1));
						
	xor7:	entity work.XOR1(Equations)
			port map(a => m1xorm2,
						b => m3xorm4,
						c => x(0));
end Structural;
