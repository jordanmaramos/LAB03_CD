library ieee;
use ieee.std_logic_1164.all;

entity LAB03 is
port(
	A0, A1, A2, A3, B0, B1: in bit;
	MUX_OUT: out bit
);
end LAB03;

architecture main of LAB03 is

component MUX_2X1_COMPORT is 
port(
	I0, I1, S0: in bit;
	D: out bit
);
end component;

	signal MUX1: bit;
	signal MUX2: bit;
	
begin
	
	u1: MUX_2X1_COMPORT port map(I0 => A0, I1 => A1, S0 => B1, D => MUX1);
	u2: MUX_2X1_COMPORT port map(I0 => A2, I1 => A3, S0 => B1, D => MUX2);
	u3: MUX_2X1_COMPORT port map(I0 => MUX1, I1 => MUX2, S0 => B0, D => MUX_OUT);

end architecture main;

