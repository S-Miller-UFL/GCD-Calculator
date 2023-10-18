--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity genericcomparator is

generic(width: positive := 8);
port
(
	x : in std_logic_vector(width-1 downto 0);
	y : in std_logic_vector(width-1 downto 0);
	lt : out std_logic;
	ne : out std_logic
);
end genericcomparator;

architecture arch of genericcomparator is

begin

process(x, y)
begin

	if(x < y) then
	lt <= '1';
	ne <= '1';
	elsif(x > y) then
	lt <= '0';
	ne <= '1';
	elsif(x = y) then
	lt <= '0';
	ne <= '0';
	else
	lt <= '0';
	ne <='0';
	end if;
end process;

end arch;