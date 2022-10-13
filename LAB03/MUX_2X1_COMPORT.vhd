library ieee;
use ieee.std_logic_1164.all;

entity MUX_2X1_COMPORT is
port(
	I0, I1, S0: in bit;
	D: out bit
);
end MUX_2X1_COMPORT;

architecture main of MUX_2X1_COMPORT is
begin
with S0 select
	D <= I0 when '0',
		  I1 when '1';
end architecture main;