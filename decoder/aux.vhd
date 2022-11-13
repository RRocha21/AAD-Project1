library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

entity LocalDecoder is
	port(	y	: in std_logic_vector(7 downto 0);
			c0	: out std_logic_vector(3 downto 0);
			c1	: out std_logic_vector(3 downto 0);
			c2	: out std_logic_vector(3 downto 0));
end LocalDecoder;

architecture Structural of LocalDecoder is
	component gateXOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	xor20	: gateXOR2 port map(y(0), y(1), c0(0));
	xor21	: gateXOR2 port map(y(2), y(3), c0(1));
	xor22	: gateXOR2 port map(y(4), y(5), c0(2));
	xor23	: gateXOR2 port map(y(6), y(7), c0(3));
	xor24	: gateXOR2 port map(y(0), y(2), c1(0));
	xor25	: gateXOR2 port map(y(1), y(3), c1(1));
	xor26	: gateXOR2 port map(y(4), y(6), c1(2));
	xor27	: gateXOR2 port map(y(5), y(7), c1(3));
	xor28	: gateXOR2 port map(y(0), y(4), c2(0));
	xor29	: gateXOR2 port map(y(1), y(5), c2(1));
	xor2a	: gateXOR2 port map(y(2), y(6), c2(2));
	xor2b	: gateXOR2 port map(y(3), y(7), c2(3));
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

entity mIsOne is
	port(	c		: in std_logic_vector(3 downto 0);
			res	: out std_logic);
end mIsOne;

architecture Structural of mIsOne is
	signal or_0, or_1, and_0, and_1	: std_logic;

	component gateOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateAND3
		port(	x0, x1, x2	: in std_logic;
				y				: out std_logic);
	end component;
begin
	or20	: gateOR2 port map(c(1), c(0), or_0);
	or21	: gateOR2 port map(c(3), c(2), or_1);
	and30	: gateAND3 port map(c(3), c(2), or_0, and_0);
	and31	: gateAND3 port map(c(1), c(0), or_1, and_1);
	or22	: gateOR2 port map(and_0, and_1, res);
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

entity mIsZero is
	port(	c		: in std_logic_vector(3 downto 0);
			res	: out std_logic);
end mIsZero;

architecture Structural of mIsZero is
	signal nC3, nC2, nC1, nC0	: std_logic;
	signal or_0, or_1, and_0, and_1	: std_logic;

	component gateNOT1
		port(	x	: in std_logic;
				y	: out std_logic);
	end component;
	component gateOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateAND3
		port(	x0, x1, x2	: in std_logic;
				y				: out std_logic);
	end component;
begin
	not10	: gateNOT1 port map(c(0), nC0);
	not11	: gateNOT1 port map(c(1), nC1);
	not12	: gateNOT1 port map(c(2), nC2);
	not13	: gateNOT1 port map(c(3), nC3);
	or20	: gateOR2 port map(nC1, nC0, or_0);
	or21	: gateOR2 port map(nC3, nC2, or_1);
	and30	: gateAND3 port map(nC3, nC2, or_0, and_0);
	and31	: gateAND3 port map(nC1, nC0, or_1, and_1);
	or22	: gateOR2 port map(and_0, and_1, res);
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

entity mIsError is
	port(	mIsOne	: in std_logic;
			mIsZero 	: in std_logic;
			res		: out std_logic);
end mIsError;

architecture Structural of mIsError is
	component gateNOR2
		port(	x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	nor20	: gateNOR2 port map(mIsOne, mIsZero, res);
end Structural;
