--steven miller
--117140
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
  generic (
    WIDTH : positive := 8);
  port (
    clk    : in  std_logic;
    rst    : in  std_logic;
	 x      : in  std_logic_vector(WIDTH-1 downto 0);
    y      : in  std_logic_vector(WIDTH-1 downto 0);
    go     : in  std_logic;
    done   : out std_logic;
    output : out std_logic_vector(13 downto 0));
end top_level;


architecture arch of top_level is

component ctrl2
port
(
	x_sel, y_sel, y_en, x_en, output_en, done: out std_logic;
	x_lt_y,x_ne_y, clk, reset, go : in std_logic
	
);
end component;

component datapath2
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

component decoder7seg
port
(
	inputs : in std_logic_vector(3 downto 0);
	outputs_n: out std_logic_vector(6 downto 0);
	input_dp : in std_logic;
	dp : out std_logic
);
end component;

component clk_div is
generic(clk_in_freq  : natural := 50000000;
            clk_out_freq : natural := 1);
port (
    clk_in  : in  std_logic;
    clk_out : out std_logic;
    rst     : in  std_logic
	);
end component;


signal controller_x_sel, controller_y_sel, controller_y_en, controller_x_en, 
controller_output_en, controller_done, controller_x_lt_y, controller_x_ne_y, go_signal, done_signal, reset_signal :std_logic;
--signal small_clk : std_logic;
signal datapath_output : std_logic_vector(width-1 downto 0);
signal inputx, inputy : std_logic_vector(width-1 downto 0);


begin


inputx <= x and ("00011111");
inputy <= y and ("00011111");

go_signal <= not(go);
reset_signal <= not(rst);

--clock_divider: clk_div generic map(clk_in_freq => 50000000, clk_out_freq => 1) port map (clk_in => clk, clk_out=> small_clk, rst => reset_signal);

controller: ctrl2 port map (x_sel=>controller_x_sel,y_sel=>controller_y_sel,
										y_en=>controller_y_en,x_en=>controller_x_en,
										output_en=>controller_output_en,done=>done_signal,
										x_lt_y=>controller_x_lt_y, x_ne_y => controller_x_ne_y, clk=>clk,
										reset=>reset_signal, go=>go_signal);
  
datapath: datapath2 generic map (width => width) port map(x=>inputx, y=>inputy, output =>datapath_output, x_sel=>controller_x_sel,
																		 y_sel=>controller_y_sel,y_en=>controller_y_en,
																		 x_en=>controller_x_en,output_en=>controller_output_en,
																		 clk =>clk, reset =>reset_signal, x_lt_y=>controller_x_lt_y, 
																		 x_ne_y => controller_x_ne_y);

decoder1: decoder7seg port map(inputs => datapath_output(7 downto 4), outputs_n => output(13 downto 7), input_dp => done_signal, dp => done);

decoder2: decoder7seg port map(inputs => datapath_output(3 downto 0), outputs_n => output(6 downto 0), input_dp => '1');
																		 
end arch;
