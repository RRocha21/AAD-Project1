library IEEE;
use IEEE.STD_LOGIC_1164.all;

library flipFlopDPET;
use flipFlopDPET.all;

library logic;
use logic.all;

library aux;
use aux.all;

entity SerialEncoder is
	port (clk	: in std_logic;
			mI		: in std_logic;
			GRst	: in std_logic;
			busy	: out std_logic;
			y		: out std_logic_vector(7 downto 0));
end SerialEncoder;

architecture Structural of SerialEncoder is
	signal qI, s_reset, clk0			: std_logic;
	signal s_count							: std_logic_vector(2 downto 0);
	signal k, andXor, xorIn, xorOut	: std_logic_vector(7 downto 0);
	component gateAND2
		port (x0, x1	: in std_logic;
				y 			: out std_logic);
	end component;
	component gateXOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component Register8bit
		port (clk	: in std_logic;
				GRst	: in std_logic;
				D		: in std_logic_vector(7 downto 0);
				Q		: out std_logic_vector(7 downto 0));
	end component;
	component Counter3bit
		port (clk	: in std_logic;
				GRst	: in std_logic;
				Q		: out std_logic_vector(2 downto 0));
	end component;
	component flipFlopDPET
		port (clk, D		: in std_logic;
				nSet, nRst	: in std_logic;
				Q, nQ			: out std_logic);
	end component;
	component ControlUnit
		port (clk			: in std_logic;
				GRst			: in std_logic;
				address		: in std_logic_vector(2 downto 0);
				controlRst	: out std_logic;
				clk0			: out std_logic;
				busy			: out std_logic;
				k				: out std_logic_vector(7 downto 0));
	end component;
begin
	counter3		: Counter3bit 	port map (clk, s_reset, s_count);
	control		: ControlUnit 	port map (clk, GRst, s_count, s_reset, clk0, busy, k);
	ff0			: flipFlopDPET port map (clk, mI, '1', s_reset, qI);
	and20			: gateAND2		port map (qI, k(0), andXor(0));
	and21			: gateAND2		port map (qI, k(1), andXor(1));
	and22			: gateAND2		port map (qI, k(2), andXor(2));
	and23			: gateAND2		port map (qI, k(3), andXor(3));
	and24			: gateAND2		port map (qI, k(4), andXor(4));
	and25			: gateAND2		port map (qI, k(5), andXor(5));
	and26			: gateAND2		port map (qI, k(6), andXor(6));
	and27			: gateAND2		port map (qI, k(7), andXor(7));
	xor20			: gateXOR2		port map (andXor(0), xorIn(0), xorOut(0));
	xor21			: gateXOR2		port map (andXor(1), xorIn(1), xorOut(1));
	xor22			: gateXOR2		port map (andXor(2), xorIn(2), xorOut(2));
	xor23			: gateXOR2		port map (andXor(3), xorIn(3), xorOut(3));
	xor24			: gateXOR2		port map (andXor(4), xorIn(4), xorOut(4));
	xor25			: gateXOR2		port map (andXor(5), xorIn(5), xorOut(5));
	xor26			: gateXOR2		port map (andXor(6), xorIn(6), xorOut(6));
	xor27			: gateXOR2		port map (andXor(7), xorIn(7), xorOut(7));
	register80	: Register8bit port map (clk, s_reset, xorOut, xorIn);
	register81	: Register8bit port map (clk0, s_reset, xorOut, y);
end Structural;
