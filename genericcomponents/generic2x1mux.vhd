--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity generic2x1mux is

generic (width : positive:=8);

port
(
	x: in std_logic_vector(width-1 downto 0);
	y: in std_logic_vector(width-1 downto 0);
	sel: in std_logic;
	output: out std_logic_vector(width-1 downto 0)
);

end generic2x1mux;

architecture arch of generic2x1mux is

begin

output <= x when sel = '0' else
			 y;

end arch;