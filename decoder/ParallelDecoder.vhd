library IEEE;
use IEEE.STD_LOGIC_1164.all;

library logic;
use logic.all;

library aux;
use aux.all;

entity ParallelDecoder is
	port (y			: in std_logic_vector(7 downto 0);
			valid		: out std_logic;
			mPrime	: out std_logic_vector(3 downto 0));
end ParallelDecoder;

architecture Structural of ParallelDecoder is
	signal c0, c1, c2						: std_logic_vector(3 downto 0);
	signal m0one, m1one, m2one 		: std_logic;
	signal m0zero, m1zero, m2zero		: std_logic;
	signal m0error, m1error, m2error	: std_logic;
	signal d0, d1, d2, d					: std_logic;
	signal y0error, error, s_valid 	: std_logic;
	signal mPrime0, mPrime1, mPrime2	: std_logic;
	component LocalDecoder
		port (y	: in std_logic_vector(7 downto 0);
				c0	: out std_logic_vector(3 downto 0);
				c1	: out std_logic_vector(3 downto 0);
				c2	: out std_logic_vector(3 downto 0));
	end component;
	component mIsOne
		port (c		: in std_logic_vector(3 downto 0);
				res	: out std_logic);
	end component;
	component mIsZero
		port (c		: in std_logic_vector(3 downto 0);
				res	: out std_logic);
	end component;
	component mIsError
		port (mIsOne	: in std_logic;
				mIsZero	: in std_logic;
				res		: out std_logic);
	end component;
	component gateNOR3
		port (x0, x1, x2	: in std_logic;
				y				: out std_logic);
	end component;
	component gateAND2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component gateXOR4
		port (x0, x1, x2, x3	: in std_logic;
				y					: out std_logic);
	end component;
	component gateXOR2
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
begin
	localDecoder0	: LocalDecoder port map(y, c0, c1, c2);
	m0IsOne			: mIsOne port map(c0, m0one);
	m1IsOne			: mIsOne port map(c1, m1one);
	m2IsOne			: mIsOne port map(c2, m2one);
	m0IsZero			: mIsZero port map(c0, m0zero);
	m1IsZero			: mIsZero port map(c1, m1zero);
	m2IsZero    	: mIsZero port map(c2, m2zero);
	m0IsError		: mIsError port map(m0one, m0zero, m0error);
	m1IsError		: mIsError port map(m1one, m1zero, m1error);
	m2IsError		: mIsError port map(m2one, m2zero, m2error);
	nor30				: gateNOR3 port map(m0error, m1error, m2error, s_valid);
	valid <= s_valid;
	and20				: gateAND2 port map(m0one, s_valid, mPrime0);
	mPrime(0) <= mPrime0;
	and21				: gateAND2 port map(m1one, s_valid, mPrime1);
	mPrime(1) <= mPrime1;
	and22				: gateAND2 port map(m2one, s_valid, mPrime2);
	mPrime(2) <= mPrime2;
	xor40				: gateXOR4 port map(c0(1), c0(2), c0(3), mPrime0, d0);
	xor41				: gateXOR4 port map(c1(1), c1(2), c1(3), mPrime1, d1);
	xor42				: gateXOR4 port map(c2(1), c2(2), c2(3), mPrime2, d2);
	nor31				: gateNOR3 port map(d0, d1, d2, d);
	xor20				: gateXOR2 port map(c0(0), mPrime0, y0error);
	and23				: gateAND2 port map(d, y0error, error);
	xor21				: gateXOR2 port map(error, y(0), mPrime(3));
end Structural;
