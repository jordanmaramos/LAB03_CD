library ieee;
use ieee.std_logic_1164.all;

entity MUX_4X1 is
port(
	I0, I1, I2, I3, S0, S1: in bit;
	D: out bit
);
end MUX_4X1;

architecture main of MUX_4X1 is

	signal M1: bit;
	signal M2: bit;
	
begin
	
	--Foi utilizada a lógica de três MUX_2X1
	
	with S1 select
	M1 <= I0 when '0',
			I1 when '1';
	
	with S1 select
	M2 <= I2 when '0',
			I3 when '1';
	
	with S0 select
	D <= M1 when '0',
		  M2 when '1';
	
end architecture main;

