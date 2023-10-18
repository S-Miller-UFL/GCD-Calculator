--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity genericsubtractor is

generic(width: positive := 8);

port
(
	x : in std_logic_vector(width-1 downto 0);
	y : in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0)

);
end genericsubtractor;

architecture arch of genericsubtractor is

begin

output <= x-y;

end arch;