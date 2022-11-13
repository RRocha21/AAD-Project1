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
