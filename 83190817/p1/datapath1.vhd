--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity datapath1 is

generic(width : positive := 8);

port
(
	x: in std_logic_vector(width-1 downto 0);
	y: in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0);
	x_sel, y_sel, y_en, x_en, output_en, clk, reset: in std_logic;
	x_lt_y,x_ne_y : out std_logic
	
);
end datapath1;

architecture arch of datapath1 is

signal x_mux_out, y_mux_out, x_reg_out, y_reg_out, x_sub_out, y_sub_out: std_logic_vector(width-1 downto 0);

component generic2x1mux
generic (width : positive:=width);
port
(
	x: in std_logic_vector(width-1 downto 0);
	y: in std_logic_vector(width-1 downto 0);
	sel: in std_logic;
	output: out std_logic_vector(width-1 downto 0)
);
end component;

component genericsubtractor
generic (width : positive:=width);
port
(
	x : in std_logic_vector(width-1 downto 0);
	y : in std_logic_vector(width-1 downto 0);
	output: out std_logic_vector(width-1 downto 0)

);
end component;


component genericregister
generic (width : positive:=width);
port
(
	input : in std_logic_vector(width-1 downto 0);
	clk: in std_logic;
	enable: in std_logic;
	reset: in std_logic;
	output: out std_logic_vector(width-1 downto 0)

);
end component;

component genericcomparator
generic (width : positive:=width);
port
(
	x : in std_logic_vector(width-1 downto 0);
	y : in std_logic_vector(width-1 downto 0);
	lt : out std_logic;
	ne : out std_logic
);
end component;

begin

x_mux: generic2x1mux generic map ( width => width) port map( x=> x, y=>x_sub_out, sel=> x_sel, output=>x_mux_out);
y_mux: generic2x1mux generic map ( width => width) port map( x=> y, y=>y_sub_out, sel=> y_sel, output=>y_mux_out);
x_register: genericregister generic map ( width => width) port map( input=> x_mux_out, clk => clk, enable=>x_en, reset=>reset,output=>x_reg_out);
y_register: genericregister generic map ( width => width) port map( input=> y_mux_out, clk => clk, enable=>y_en, reset=>reset,output=>y_reg_out);
x_subtractor: genericsubtractor generic map (width => width) port map(x=>x_reg_out, y => y_reg_out, output =>x_sub_out);
y_subtractor: genericsubtractor generic map (width => width) port map(x=>y_reg_out, y => x_reg_out, output =>y_sub_out);
comparator: genericcomparator generic map (width => width) port map(x=>x_reg_out, y => y_reg_out, lt =>x_lt_y, ne => x_ne_y);
outputreg: genericregister generic map (width => width) port map(input => x_reg_out, clk => clk, enable => output_en, reset => reset, output => output);



end arch;