--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
  generic (
    WIDTH : positive := 8);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
    go     : in  std_logic;
    done   : out std_logic;
    x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic_vector(WIDTH-1 downto 0));
end gcd;


architecture FSM_D1 of gcd is
component ctrl1
port
(
	x_sel, y_sel, y_en, x_en, output_en, done: out std_logic;
	x_lt_y,x_ne_y, clk, reset, go : in std_logic
	
);
end component;

component datapath1
generic(width : positive := width);
port
(
	x: in std_logic_vector(width-1 downto 0);
	y: in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0);
	x_sel, y_sel, y_en, x_en, output_en, clk, reset: in std_logic;
	x_lt_y,x_ne_y : out std_logic
	
);
end component;
signal controller_x_sel, controller_y_sel, controller_y_en, controller_x_en, 
controller_output_en, controller_done, controller_x_lt_y, controller_x_ne_y :std_logic;
signal datapath_output : std_logic_vector(width-1 downto 0);
signal inputx, inputy : std_logic_vector(width-1 downto 0);


begin  -- FSM_D1

inputx <= x;
inputy <= y;
controller: ctrl1 port map (x_sel=>controller_x_sel,y_sel=>controller_y_sel,
										y_en=>controller_y_en,x_en=>controller_x_en,
										output_en=>controller_output_en,done=>done,
										x_lt_y=>controller_x_lt_y, x_ne_y => controller_x_ne_y, clk=>clk,
										reset=>rst, go=>go);

datapath: datapath1 generic map (width => width) port map(x=>inputx, y=>inputy, output =>datapath_output, x_sel=>controller_x_sel,
																		 y_sel=>controller_y_sel,y_en=>controller_y_en,
																		 x_en=>controller_x_en,output_en=>controller_output_en,
																		 clk =>clk, reset =>rst, x_lt_y=>controller_x_lt_y, 
																		 x_ne_y => controller_x_ne_y);

output <= datapath_output;

end FSM_D1;

--architecture FSM_D2 of gcd is

--begin  -- FSM_D2


																		 
--end FSM_D2;

