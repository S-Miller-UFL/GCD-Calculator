--steven miller
--117140
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity genericregister is

generic(width: positive := 8);

port
(
	input : in std_logic_vector(width-1 downto 0);
	clk: in std_logic;
	enable: in std_logic;
	reset: in std_logic;
	output: out std_logic_vector(width-1 downto 0)

);
end genericregister;

architecture arch of genericregister is

signal sigout: std_logic_vector(width-1 downto 0);

begin

process(clk,reset)

begin

if(reset = '1') then

	sigout <= (others => '0');

elsif(clk'event and clk = '1') then

	if(enable = '1') then
	
		sigout <= input;
		
	else
	
		sigout <= sigout;
		
	end if;
	
end if;

end process;

output <= sigout;

end arch;