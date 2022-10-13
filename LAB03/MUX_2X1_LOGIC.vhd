library ieee;
use ieee.std_logic_1164.all;

entity MUX_2X1_LOGIC is
port(
	I0, I1, S0: in bit;
	D: out bit
);
end MUX_2X1_LOGIC;

architecture main of MUX_2X1_LOGIC is
begin
	
	D <= (I0 and (not S0)) or (I1 and S0);
	
end architecture main;

