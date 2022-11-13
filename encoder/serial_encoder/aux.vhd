library IEEE;
use IEEE.STD_LOGIC_1164.all;

library flipFlopDPET;
use flipFlopDPET.all;

entity Register8bit is
	port (clk	: in std_logic;
			GRst	: in std_logic;
			D		: in std_logic_vector(7 downto 0);
			Q		: out std_logic_vector(7 downto 0));
end Register8bit;

architecture Structural of Register8bit is
	component flipFlopDPET
		port (clk, D		: in std_logic;
				nSet, nRst	: in std_logic;
				Q, nQ			: out std_logic);
	end component;
begin
	ff0	: flipFlopDPET port map (clk, D(0), '1', GRst, Q(0));
	ff1	: flipFlopDPET port map (clk, D(1), '1', GRst, Q(1));
	ff2	: flipFlopDPET port map (clk, D(2), '1', GRst, Q(2));
	ff3	: flipFlopDPET port map (clk, D(3), '1', GRst, Q(3));
	ff4	: flipFlopDPET port map (clk, D(4), '1', GRst, Q(4));
	ff5	: flipFlopDPET port map (clk, D(5), '1', GRst, Q(5));
	ff6	: flipFlopDPET port map (clk, D(6), '1', GRst, Q(6));
	ff7	: flipFlopDPET port map (clk, D(7), '1', GRst, Q(7));
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library flipFlopDPET;
use flipFlopDPET.all;

library logic;
use logic.all;

entity Counter3bit is
	port (clk	: in std_logic;
			GRst	: in std_logic;
			Q		: out std_logic_vector(2 downto 0));
end Counter3bit;

architecture Structural of Counter3bit is
	signal q0, q1, q2			: std_logic;
	signal nQ0, nQ1, nQ2		: std_logic;
	signal d1, d2				: std_logic;
	signal and3, or2, and2	: std_logic;
	component flipFlopDPET
		port (clk, D		: in std_logic;
				nSet, nRst	: in std_logic;
				Q, nQ			: out std_logic);
	end component;
	component gateXOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateAND3
		port (x0, x1, x2	: in std_logic;
				y				: out std_logic);
	end component;
	component gateOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateAND2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	ff0	: flipFlopDPET port map (clk, nQ0, '1', GRst, q0, nQ0);
	xor20	: gateXOR2 		port map (q1, q0, d1);
	ff1	: flipFlopDPET port map (clk, d1, '1', GRst, q1, nQ1);
	and30	: gateAND3		port map (nQ2, q1, q0, and3);
	or20	: gateOR2 		port map	(nQ1, nQ0, or2);
	and20	: gateAND2		port map	(q2, or2, and2);
	or21	: gateOR2 		port map (and3, and2, d2);
	ff2	: flipFlopDPET port map (clk, d2, '1', GRst, q2, nQ2);
	Q(0) <= q0;
	Q(1) <= q1;
	Q(2) <= q2;
end Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_6x10 is
	port (address	: in std_logic_vector(2 downto 0);
			dataOut	: out std_logic_vector(9 downto 0));
end ROM_6x10;

architecture RTL of ROM_6x10 is
	subtype TDataWord is std_logic_vector(9 downto 0);
	type TROM is array (0 to 5) of TDataWord;
	constant c_memory	: TROM := ("1100000000",  -- GRst = 1, Clk0 = 1
										  "1101010101",  -- GRst = 1, Clk0 = 1
										  "1100110011",  -- GRst = 1, Clk0 = 1
										  "1100001111",  -- GRst = 1, Clk0 = 1
										  "0111111111",  -- GRst = 1, Clk0 = 0
										  "1000000000"); -- GRst = 0, Clk0 = 1
begin
	dataOut <= c_memory(to_integer(unsigned(address)));
end RTL;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

entity ControlUnit is
	port (clk			: in std_logic;
			GRst			: in std_logic;
			address		: in std_logic_vector(2 downto 0);
			controlRst	: out std_logic;
			clk0			: out std_logic;
			busy			: out std_logic;
			k				: out std_logic_vector(7 downto 0));
end ControlUnit;

architecture Structural of ControlUnit is
	signal s_reset		: std_logic;
	signal s_clk0		: std_logic;
	signal s_romOut	: std_logic_vector(9 downto 0);
	component ROM_6x10
		port (address	: in std_logic_vector(2 downto 0);
				dataOut	: out std_logic_vector(9 downto 0));
	end component;
	component gateAND2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateXOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateNOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	rom		: ROM_6x10  port map (address, s_romOut);
	and20		: gateAND2 port map (GRst, s_romOut(8), s_reset);
	or20		: gateOR2  port map (s_reset, clk, controlRst);
	nor20		: gateNOR2 port map (s_romOut(9), clk, s_clk0);
	k <= s_romOut(7 downto 0);
	clk0 <= s_clk0;
	xor20		: gateXOR2 port map (s_clk0, s_romOut(8), busy);
end Structural;
