--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural := 50000000;
            clk_out_freq : natural := 1);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;

architecture arch of clk_div is

signal clockout : std_logic := '0';
signal count : unsigned(31 downto 0);
begin
process(clk_in,rst)
begin
if(rst = '1') then
	count <= (others => '0');
	clockout<= '0';
elsif(clk_in'Event and clk_in = '1') then
	
	count <= (count+1);
		if(count = (clk_in_freq/clk_out_freq)) then
			clockout <= not(clockout);
			count <= (others => '0');
		end if;
		
end if;
end process;
clk_out<= clockout;

end arch;