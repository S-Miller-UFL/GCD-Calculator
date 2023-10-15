-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/15/2023 13:10:40"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	go : IN std_logic;
	done : BUFFER std_logic;
	output : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- x[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_go : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_output : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \controller|state.start~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \controller|state.start~q\ : std_logic;
SIGNAL \controller|state~12_combout\ : std_logic;
SIGNAL \controller|state.load~feeder_combout\ : std_logic;
SIGNAL \controller|state.load~q\ : std_logic;
SIGNAL \controller|WideOr1~combout\ : std_logic;
SIGNAL \controller|state.compare~q\ : std_logic;
SIGNAL \controller|state~13_combout\ : std_logic;
SIGNAL \controller|state.subxfromyputintoy~q\ : std_logic;
SIGNAL \datapath|mux1|output[7]~4_combout\ : std_logic;
SIGNAL \datapath|mux2|output[7]~4_combout\ : std_logic;
SIGNAL \datapath|x_mux|output[6]~7_combout\ : std_logic;
SIGNAL \controller|WideOr1~0_combout\ : std_logic;
SIGNAL \datapath|mux1|output[6]~5_combout\ : std_logic;
SIGNAL \datapath|x_mux|output[5]~5_combout\ : std_logic;
SIGNAL \datapath|mux2|output[5]~6_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \datapath|x_mux|output[4]~6_combout\ : std_logic;
SIGNAL \datapath|mux2|output[4]~7_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \datapath|y_mux|output[3]~4_combout\ : std_logic;
SIGNAL \controller|y_en~0_combout\ : std_logic;
SIGNAL \datapath|mux1|output[3]~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \datapath|y_mux|output[2]~5_combout\ : std_logic;
SIGNAL \datapath|mux2|output[2]~1_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \datapath|y_mux|output[1]~6_combout\ : std_logic;
SIGNAL \datapath|mux1|output[1]~2_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \datapath|x_mux|output[0]~2_combout\ : std_logic;
SIGNAL \datapath|mux2|output[0]~3_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[0]~0_combout\ : std_logic;
SIGNAL \datapath|y_mux|output[0]~7_combout\ : std_logic;
SIGNAL \datapath|mux1|output[0]~3_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[0]~1\ : std_logic;
SIGNAL \datapath|subtractor|output[1]~2_combout\ : std_logic;
SIGNAL \datapath|x_mux|output[1]~1_combout\ : std_logic;
SIGNAL \datapath|mux2|output[1]~2_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[1]~3\ : std_logic;
SIGNAL \datapath|subtractor|output[2]~4_combout\ : std_logic;
SIGNAL \datapath|x_mux|output[2]~3_combout\ : std_logic;
SIGNAL \datapath|mux1|output[2]~1_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[2]~5\ : std_logic;
SIGNAL \datapath|subtractor|output[3]~6_combout\ : std_logic;
SIGNAL \datapath|x_mux|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|mux2|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[3]~7\ : std_logic;
SIGNAL \datapath|subtractor|output[4]~8_combout\ : std_logic;
SIGNAL \datapath|y_mux|output[4]~3_combout\ : std_logic;
SIGNAL \datapath|mux1|output[4]~7_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[4]~9\ : std_logic;
SIGNAL \datapath|subtractor|output[5]~10_combout\ : std_logic;
SIGNAL \datapath|y_mux|output[5]~2_combout\ : std_logic;
SIGNAL \datapath|mux1|output[5]~6_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[5]~11\ : std_logic;
SIGNAL \datapath|subtractor|output[6]~12_combout\ : std_logic;
SIGNAL \datapath|y_mux|output[6]~1_combout\ : std_logic;
SIGNAL \datapath|mux2|output[6]~5_combout\ : std_logic;
SIGNAL \datapath|subtractor|output[6]~13\ : std_logic;
SIGNAL \datapath|subtractor|output[7]~14_combout\ : std_logic;
SIGNAL \datapath|y_mux|output[7]~0_combout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~1_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~3_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~5_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~7_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~9_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~11_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~13_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan1~14_combout\ : std_logic;
SIGNAL \controller|state~11_combout\ : std_logic;
SIGNAL \controller|state.subyfromxputintox~q\ : std_logic;
SIGNAL \datapath|x_mux|output[7]~4_combout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~1_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~3_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~5_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~7_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~9_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~11_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~13_cout\ : std_logic;
SIGNAL \datapath|comparator|LessThan0~14_combout\ : std_logic;
SIGNAL \controller|Selector1~0_combout\ : std_logic;
SIGNAL \controller|Selector1~1_combout\ : std_logic;
SIGNAL \controller|state.done_state~q\ : std_logic;
SIGNAL \controller|Selector0~0_combout\ : std_logic;
SIGNAL \controller|state.hold~q\ : std_logic;
SIGNAL \controller|done~combout\ : std_logic;
SIGNAL \datapath|outputreg|sigout[1]~feeder_combout\ : std_logic;
SIGNAL \controller|output_en~combout\ : std_logic;
SIGNAL \datapath|outputreg|sigout[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|outputreg|sigout[2]~feeder_combout\ : std_logic;
SIGNAL \decoder2|outputs[0]~0_combout\ : std_logic;
SIGNAL \decoder2|outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder2|outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder2|outputs[3]~3_combout\ : std_logic;
SIGNAL \decoder2|outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder2|outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder2|outputs[6]~6_combout\ : std_logic;
SIGNAL \datapath|outputreg|sigout[5]~feeder_combout\ : std_logic;
SIGNAL \decoder1|outputs[0]~0_combout\ : std_logic;
SIGNAL \decoder1|outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder1|outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder1|outputs[3]~3_combout\ : std_logic;
SIGNAL \decoder1|outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder1|outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder1|outputs[6]~6_combout\ : std_logic;
SIGNAL \datapath|x_register|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|outputreg|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \datapath|y_register|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder1|ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_outputs[0]~0_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[6]~6_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[5]~5_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[4]~4_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[2]~2_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[1]~1_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_outputs[0]~0_combout\ : std_logic;
SIGNAL \controller|ALT_INV_done~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_x <= x;
ww_y <= y;
ww_go <= go;
done <= ww_done;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\decoder1|ALT_INV_outputs[6]~6_combout\ <= NOT \decoder1|outputs[6]~6_combout\;
\decoder1|ALT_INV_outputs[5]~5_combout\ <= NOT \decoder1|outputs[5]~5_combout\;
\decoder1|ALT_INV_outputs[4]~4_combout\ <= NOT \decoder1|outputs[4]~4_combout\;
\decoder1|ALT_INV_outputs[2]~2_combout\ <= NOT \decoder1|outputs[2]~2_combout\;
\decoder1|ALT_INV_outputs[1]~1_combout\ <= NOT \decoder1|outputs[1]~1_combout\;
\decoder1|ALT_INV_outputs[0]~0_combout\ <= NOT \decoder1|outputs[0]~0_combout\;
\decoder2|ALT_INV_outputs[6]~6_combout\ <= NOT \decoder2|outputs[6]~6_combout\;
\decoder2|ALT_INV_outputs[5]~5_combout\ <= NOT \decoder2|outputs[5]~5_combout\;
\decoder2|ALT_INV_outputs[4]~4_combout\ <= NOT \decoder2|outputs[4]~4_combout\;
\decoder2|ALT_INV_outputs[2]~2_combout\ <= NOT \decoder2|outputs[2]~2_combout\;
\decoder2|ALT_INV_outputs[1]~1_combout\ <= NOT \decoder2|outputs[1]~1_combout\;
\decoder2|ALT_INV_outputs[0]~0_combout\ <= NOT \decoder2|outputs[0]~0_combout\;
\controller|ALT_INV_done~combout\ <= NOT \controller|done~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X66_Y54_N16
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controller|ALT_INV_done~combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[0]~0_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[1]~1_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[2]~2_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|outputs[3]~3_combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[4]~4_combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[5]~5_combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_outputs[6]~6_combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\go~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LCCOMB_X61_Y47_N4
\controller|state.start~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|state.start~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \controller|state.start~feeder_combout\);

-- Location: IOIBUF_X49_Y54_N29
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X61_Y47_N5
\controller|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|state.start~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.start~q\);

-- Location: LCCOMB_X61_Y47_N16
\controller|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|state~12_combout\ = (\controller|state.hold~q\ & !\go~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.hold~q\,
	datad => \go~input_o\,
	combout => \controller|state~12_combout\);

-- Location: LCCOMB_X61_Y47_N18
\controller|state.load~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|state.load~feeder_combout\ = \controller|state~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|state~12_combout\,
	combout => \controller|state.load~feeder_combout\);

-- Location: FF_X61_Y47_N19
\controller|state.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|state.load~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.load~q\);

-- Location: LCCOMB_X61_Y47_N0
\controller|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|WideOr1~combout\ = (\controller|state.subyfromxputintox~q\) # ((\controller|state.subxfromyputintoy~q\) # (\controller|state.load~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \controller|state.subxfromyputintoy~q\,
	datad => \controller|state.load~q\,
	combout => \controller|WideOr1~combout\);

-- Location: FF_X61_Y47_N1
\controller|state.compare\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|WideOr1~combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.compare~q\);

-- Location: LCCOMB_X61_Y47_N10
\controller|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|state~13_combout\ = (\datapath|comparator|LessThan0~14_combout\ & \controller|state.compare~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \controller|state.compare~q\,
	combout => \controller|state~13_combout\);

-- Location: FF_X61_Y47_N11
\controller|state.subxfromyputintoy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|state~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.subxfromyputintoy~q\);

-- Location: LCCOMB_X58_Y47_N24
\datapath|mux1|output[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[7]~4_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(7)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(7),
	datab => \datapath|y_register|sigout\(7),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux1|output[7]~4_combout\);

-- Location: LCCOMB_X58_Y47_N2
\datapath|mux2|output[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[7]~4_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(7))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(7),
	datab => \datapath|y_register|sigout\(7),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[7]~4_combout\);

-- Location: LCCOMB_X59_Y47_N30
\datapath|x_mux|output[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[6]~7_combout\ = (\controller|state.subyfromxputintox~q\ & \datapath|subtractor|output[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.subyfromxputintox~q\,
	datad => \datapath|subtractor|output[6]~12_combout\,
	combout => \datapath|x_mux|output[6]~7_combout\);

-- Location: LCCOMB_X58_Y47_N4
\controller|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|WideOr1~0_combout\ = (\controller|state.load~q\) # (\controller|state.subyfromxputintox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.load~q\,
	datac => \controller|state.subyfromxputintox~q\,
	combout => \controller|WideOr1~0_combout\);

-- Location: FF_X59_Y47_N31
\datapath|x_register|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[6]~7_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(6));

-- Location: LCCOMB_X58_Y47_N22
\datapath|mux1|output[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[6]~5_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(6))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(6),
	datac => \datapath|x_register|sigout\(6),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux1|output[6]~5_combout\);

-- Location: LCCOMB_X59_Y47_N24
\datapath|x_mux|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[5]~5_combout\ = (\controller|state.subyfromxputintox~q\ & \datapath|subtractor|output[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.subyfromxputintox~q\,
	datad => \datapath|subtractor|output[5]~10_combout\,
	combout => \datapath|x_mux|output[5]~5_combout\);

-- Location: FF_X59_Y47_N25
\datapath|x_register|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[5]~5_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(5));

-- Location: LCCOMB_X60_Y47_N28
\datapath|mux2|output[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[5]~6_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(5)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(5),
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \datapath|x_register|sigout\(5),
	combout => \datapath|mux2|output[5]~6_combout\);

-- Location: IOIBUF_X54_Y54_N22
\y[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\x[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LCCOMB_X58_Y47_N28
\datapath|x_mux|output[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[4]~6_combout\ = (\controller|state.subyfromxputintox~q\ & (\datapath|subtractor|output[4]~8_combout\)) # (!\controller|state.subyfromxputintox~q\ & ((\x[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \datapath|subtractor|output[4]~8_combout\,
	datad => \x[4]~input_o\,
	combout => \datapath|x_mux|output[4]~6_combout\);

-- Location: FF_X58_Y47_N29
\datapath|x_register|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[4]~6_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(4));

-- Location: LCCOMB_X60_Y47_N4
\datapath|mux2|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[4]~7_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(4)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(4),
	datac => \datapath|x_register|sigout\(4),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[4]~7_combout\);

-- Location: IOIBUF_X56_Y54_N1
\x[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X61_Y47_N6
\datapath|y_mux|output[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[3]~4_combout\ = (\controller|state.subxfromyputintoy~q\ & ((\datapath|subtractor|output[3]~6_combout\))) # (!\controller|state.subxfromyputintoy~q\ & (\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subxfromyputintoy~q\,
	datac => \y[3]~input_o\,
	datad => \datapath|subtractor|output[3]~6_combout\,
	combout => \datapath|y_mux|output[3]~4_combout\);

-- Location: LCCOMB_X61_Y47_N24
\controller|y_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|y_en~0_combout\ = (\controller|state.subxfromyputintoy~q\) # (\controller|state.load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subxfromyputintoy~q\,
	datad => \controller|state.load~q\,
	combout => \controller|y_en~0_combout\);

-- Location: FF_X61_Y47_N7
\datapath|y_register|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[3]~4_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(3));

-- Location: LCCOMB_X58_Y47_N30
\datapath|mux1|output[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[3]~0_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(3)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|x_register|sigout\(3),
	datac => \datapath|y_register|sigout\(3),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux1|output[3]~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\x[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X61_Y47_N30
\datapath|y_mux|output[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[2]~5_combout\ = (\controller|state.subxfromyputintoy~q\ & (\datapath|subtractor|output[2]~4_combout\)) # (!\controller|state.subxfromyputintoy~q\ & ((\y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subxfromyputintoy~q\,
	datac => \datapath|subtractor|output[2]~4_combout\,
	datad => \y[2]~input_o\,
	combout => \datapath|y_mux|output[2]~5_combout\);

-- Location: FF_X61_Y47_N31
\datapath|y_register|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[2]~5_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(2));

-- Location: LCCOMB_X60_Y47_N0
\datapath|mux2|output[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[2]~1_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(2)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(2),
	datab => \datapath|x_register|sigout\(2),
	datac => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[2]~1_combout\);

-- Location: IOIBUF_X54_Y54_N15
\x[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X61_Y47_N22
\datapath|y_mux|output[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[1]~6_combout\ = (\controller|state.subxfromyputintoy~q\ & (\datapath|subtractor|output[1]~2_combout\)) # (!\controller|state.subxfromyputintoy~q\ & ((\y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subxfromyputintoy~q\,
	datac => \datapath|subtractor|output[1]~2_combout\,
	datad => \y[1]~input_o\,
	combout => \datapath|y_mux|output[1]~6_combout\);

-- Location: FF_X61_Y47_N23
\datapath|y_register|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[1]~6_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(1));

-- Location: LCCOMB_X60_Y47_N24
\datapath|mux1|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[1]~2_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(1)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(1),
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \datapath|y_register|sigout\(1),
	combout => \datapath|mux1|output[1]~2_combout\);

-- Location: IOIBUF_X51_Y54_N29
\y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\x[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X58_Y47_N20
\datapath|x_mux|output[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[0]~2_combout\ = (\controller|state.subyfromxputintox~q\ & (\datapath|subtractor|output[0]~0_combout\)) # (!\controller|state.subyfromxputintox~q\ & ((\x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \datapath|subtractor|output[0]~0_combout\,
	datad => \x[0]~input_o\,
	combout => \datapath|x_mux|output[0]~2_combout\);

-- Location: FF_X58_Y47_N21
\datapath|x_register|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[0]~2_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(0));

-- Location: LCCOMB_X58_Y47_N6
\datapath|mux2|output[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[0]~3_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(0))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|x_register|sigout\(0),
	datac => \datapath|y_register|sigout\(0),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[0]~3_combout\);

-- Location: LCCOMB_X59_Y47_N0
\datapath|subtractor|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[0]~0_combout\ = (\datapath|mux1|output[0]~3_combout\ & ((GND) # (!\datapath|mux2|output[0]~3_combout\))) # (!\datapath|mux1|output[0]~3_combout\ & (\datapath|mux2|output[0]~3_combout\ $ (GND)))
-- \datapath|subtractor|output[0]~1\ = CARRY((\datapath|mux1|output[0]~3_combout\) # (!\datapath|mux2|output[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux1|output[0]~3_combout\,
	datab => \datapath|mux2|output[0]~3_combout\,
	datad => VCC,
	combout => \datapath|subtractor|output[0]~0_combout\,
	cout => \datapath|subtractor|output[0]~1\);

-- Location: LCCOMB_X61_Y47_N20
\datapath|y_mux|output[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[0]~7_combout\ = (\controller|state.subxfromyputintoy~q\ & ((\datapath|subtractor|output[0]~0_combout\))) # (!\controller|state.subxfromyputintoy~q\ & (\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subxfromyputintoy~q\,
	datac => \y[0]~input_o\,
	datad => \datapath|subtractor|output[0]~0_combout\,
	combout => \datapath|y_mux|output[0]~7_combout\);

-- Location: FF_X61_Y47_N21
\datapath|y_register|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[0]~7_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(0));

-- Location: LCCOMB_X60_Y47_N6
\datapath|mux1|output[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[0]~3_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(0))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(0),
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \datapath|x_register|sigout\(0),
	combout => \datapath|mux1|output[0]~3_combout\);

-- Location: LCCOMB_X59_Y47_N2
\datapath|subtractor|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[1]~2_combout\ = (\datapath|mux2|output[1]~2_combout\ & ((\datapath|mux1|output[1]~2_combout\ & (!\datapath|subtractor|output[0]~1\)) # (!\datapath|mux1|output[1]~2_combout\ & ((\datapath|subtractor|output[0]~1\) # (GND))))) # 
-- (!\datapath|mux2|output[1]~2_combout\ & ((\datapath|mux1|output[1]~2_combout\ & (\datapath|subtractor|output[0]~1\ & VCC)) # (!\datapath|mux1|output[1]~2_combout\ & (!\datapath|subtractor|output[0]~1\))))
-- \datapath|subtractor|output[1]~3\ = CARRY((\datapath|mux2|output[1]~2_combout\ & ((!\datapath|subtractor|output[0]~1\) # (!\datapath|mux1|output[1]~2_combout\))) # (!\datapath|mux2|output[1]~2_combout\ & (!\datapath|mux1|output[1]~2_combout\ & 
-- !\datapath|subtractor|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux2|output[1]~2_combout\,
	datab => \datapath|mux1|output[1]~2_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[0]~1\,
	combout => \datapath|subtractor|output[1]~2_combout\,
	cout => \datapath|subtractor|output[1]~3\);

-- Location: LCCOMB_X58_Y47_N14
\datapath|x_mux|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[1]~1_combout\ = (\controller|state.subyfromxputintox~q\ & ((\datapath|subtractor|output[1]~2_combout\))) # (!\controller|state.subyfromxputintox~q\ & (\x[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \x[1]~input_o\,
	datad => \datapath|subtractor|output[1]~2_combout\,
	combout => \datapath|x_mux|output[1]~1_combout\);

-- Location: FF_X58_Y47_N15
\datapath|x_register|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[1]~1_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(1));

-- Location: LCCOMB_X60_Y47_N2
\datapath|mux2|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[1]~2_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(1))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(1),
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \datapath|y_register|sigout\(1),
	combout => \datapath|mux2|output[1]~2_combout\);

-- Location: LCCOMB_X59_Y47_N4
\datapath|subtractor|output[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[2]~4_combout\ = ((\datapath|mux1|output[2]~1_combout\ $ (\datapath|mux2|output[2]~1_combout\ $ (\datapath|subtractor|output[1]~3\)))) # (GND)
-- \datapath|subtractor|output[2]~5\ = CARRY((\datapath|mux1|output[2]~1_combout\ & ((!\datapath|subtractor|output[1]~3\) # (!\datapath|mux2|output[2]~1_combout\))) # (!\datapath|mux1|output[2]~1_combout\ & (!\datapath|mux2|output[2]~1_combout\ & 
-- !\datapath|subtractor|output[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux1|output[2]~1_combout\,
	datab => \datapath|mux2|output[2]~1_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[1]~3\,
	combout => \datapath|subtractor|output[2]~4_combout\,
	cout => \datapath|subtractor|output[2]~5\);

-- Location: LCCOMB_X58_Y47_N10
\datapath|x_mux|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[2]~3_combout\ = (\controller|state.subyfromxputintox~q\ & ((\datapath|subtractor|output[2]~4_combout\))) # (!\controller|state.subyfromxputintox~q\ & (\x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \x[2]~input_o\,
	datad => \datapath|subtractor|output[2]~4_combout\,
	combout => \datapath|x_mux|output[2]~3_combout\);

-- Location: FF_X58_Y47_N11
\datapath|x_register|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[2]~3_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(2));

-- Location: LCCOMB_X58_Y47_N16
\datapath|mux1|output[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[2]~1_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(2)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(2),
	datab => \datapath|y_register|sigout\(2),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux1|output[2]~1_combout\);

-- Location: LCCOMB_X59_Y47_N6
\datapath|subtractor|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[3]~6_combout\ = (\datapath|mux2|output[3]~0_combout\ & ((\datapath|mux1|output[3]~0_combout\ & (!\datapath|subtractor|output[2]~5\)) # (!\datapath|mux1|output[3]~0_combout\ & ((\datapath|subtractor|output[2]~5\) # (GND))))) # 
-- (!\datapath|mux2|output[3]~0_combout\ & ((\datapath|mux1|output[3]~0_combout\ & (\datapath|subtractor|output[2]~5\ & VCC)) # (!\datapath|mux1|output[3]~0_combout\ & (!\datapath|subtractor|output[2]~5\))))
-- \datapath|subtractor|output[3]~7\ = CARRY((\datapath|mux2|output[3]~0_combout\ & ((!\datapath|subtractor|output[2]~5\) # (!\datapath|mux1|output[3]~0_combout\))) # (!\datapath|mux2|output[3]~0_combout\ & (!\datapath|mux1|output[3]~0_combout\ & 
-- !\datapath|subtractor|output[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux2|output[3]~0_combout\,
	datab => \datapath|mux1|output[3]~0_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[2]~5\,
	combout => \datapath|subtractor|output[3]~6_combout\,
	cout => \datapath|subtractor|output[3]~7\);

-- Location: LCCOMB_X59_Y47_N28
\datapath|x_mux|output[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[3]~0_combout\ = (\controller|state.subyfromxputintox~q\ & ((\datapath|subtractor|output[3]~6_combout\))) # (!\controller|state.subyfromxputintox~q\ & (\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \x[3]~input_o\,
	datad => \datapath|subtractor|output[3]~6_combout\,
	combout => \datapath|x_mux|output[3]~0_combout\);

-- Location: FF_X59_Y47_N29
\datapath|x_register|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[3]~0_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(3));

-- Location: LCCOMB_X58_Y47_N8
\datapath|mux2|output[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[3]~0_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|x_register|sigout\(3))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|y_register|sigout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|x_register|sigout\(3),
	datac => \datapath|y_register|sigout\(3),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[3]~0_combout\);

-- Location: LCCOMB_X59_Y47_N8
\datapath|subtractor|output[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[4]~8_combout\ = ((\datapath|mux1|output[4]~7_combout\ $ (\datapath|mux2|output[4]~7_combout\ $ (\datapath|subtractor|output[3]~7\)))) # (GND)
-- \datapath|subtractor|output[4]~9\ = CARRY((\datapath|mux1|output[4]~7_combout\ & ((!\datapath|subtractor|output[3]~7\) # (!\datapath|mux2|output[4]~7_combout\))) # (!\datapath|mux1|output[4]~7_combout\ & (!\datapath|mux2|output[4]~7_combout\ & 
-- !\datapath|subtractor|output[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux1|output[4]~7_combout\,
	datab => \datapath|mux2|output[4]~7_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[3]~7\,
	combout => \datapath|subtractor|output[4]~8_combout\,
	cout => \datapath|subtractor|output[4]~9\);

-- Location: LCCOMB_X58_Y47_N26
\datapath|y_mux|output[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[4]~3_combout\ = (\controller|state.subxfromyputintoy~q\ & ((\datapath|subtractor|output[4]~8_combout\))) # (!\controller|state.subxfromyputintoy~q\ & (\y[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[4]~input_o\,
	datac => \datapath|subtractor|output[4]~8_combout\,
	datad => \controller|state.subxfromyputintoy~q\,
	combout => \datapath|y_mux|output[4]~3_combout\);

-- Location: FF_X58_Y47_N27
\datapath|y_register|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[4]~3_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(4));

-- Location: LCCOMB_X60_Y47_N26
\datapath|mux1|output[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[4]~7_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(4))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(4),
	datac => \datapath|x_register|sigout\(4),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux1|output[4]~7_combout\);

-- Location: LCCOMB_X59_Y47_N10
\datapath|subtractor|output[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[5]~10_combout\ = (\datapath|mux1|output[5]~6_combout\ & ((\datapath|mux2|output[5]~6_combout\ & (!\datapath|subtractor|output[4]~9\)) # (!\datapath|mux2|output[5]~6_combout\ & (\datapath|subtractor|output[4]~9\ & VCC)))) # 
-- (!\datapath|mux1|output[5]~6_combout\ & ((\datapath|mux2|output[5]~6_combout\ & ((\datapath|subtractor|output[4]~9\) # (GND))) # (!\datapath|mux2|output[5]~6_combout\ & (!\datapath|subtractor|output[4]~9\))))
-- \datapath|subtractor|output[5]~11\ = CARRY((\datapath|mux1|output[5]~6_combout\ & (\datapath|mux2|output[5]~6_combout\ & !\datapath|subtractor|output[4]~9\)) # (!\datapath|mux1|output[5]~6_combout\ & ((\datapath|mux2|output[5]~6_combout\) # 
-- (!\datapath|subtractor|output[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux1|output[5]~6_combout\,
	datab => \datapath|mux2|output[5]~6_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[4]~9\,
	combout => \datapath|subtractor|output[5]~10_combout\,
	cout => \datapath|subtractor|output[5]~11\);

-- Location: LCCOMB_X59_Y47_N16
\datapath|y_mux|output[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[5]~2_combout\ = (\controller|state.subxfromyputintoy~q\ & \datapath|subtractor|output[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.subxfromyputintoy~q\,
	datad => \datapath|subtractor|output[5]~10_combout\,
	combout => \datapath|y_mux|output[5]~2_combout\);

-- Location: FF_X59_Y47_N17
\datapath|y_register|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[5]~2_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(5));

-- Location: LCCOMB_X60_Y47_N30
\datapath|mux1|output[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux1|output[5]~6_combout\ = (\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(5))) # (!\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(5),
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \datapath|x_register|sigout\(5),
	combout => \datapath|mux1|output[5]~6_combout\);

-- Location: LCCOMB_X59_Y47_N12
\datapath|subtractor|output[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[6]~12_combout\ = ((\datapath|mux2|output[6]~5_combout\ $ (\datapath|mux1|output[6]~5_combout\ $ (\datapath|subtractor|output[5]~11\)))) # (GND)
-- \datapath|subtractor|output[6]~13\ = CARRY((\datapath|mux2|output[6]~5_combout\ & (\datapath|mux1|output[6]~5_combout\ & !\datapath|subtractor|output[5]~11\)) # (!\datapath|mux2|output[6]~5_combout\ & ((\datapath|mux1|output[6]~5_combout\) # 
-- (!\datapath|subtractor|output[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|mux2|output[6]~5_combout\,
	datab => \datapath|mux1|output[6]~5_combout\,
	datad => VCC,
	cin => \datapath|subtractor|output[5]~11\,
	combout => \datapath|subtractor|output[6]~12_combout\,
	cout => \datapath|subtractor|output[6]~13\);

-- Location: LCCOMB_X59_Y47_N26
\datapath|y_mux|output[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[6]~1_combout\ = (\controller|state.subxfromyputintoy~q\ & \datapath|subtractor|output[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.subxfromyputintoy~q\,
	datad => \datapath|subtractor|output[6]~12_combout\,
	combout => \datapath|y_mux|output[6]~1_combout\);

-- Location: FF_X59_Y47_N27
\datapath|y_register|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[6]~1_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(6));

-- Location: LCCOMB_X59_Y47_N22
\datapath|mux2|output[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|mux2|output[6]~5_combout\ = (\datapath|comparator|LessThan0~14_combout\ & ((\datapath|x_register|sigout\(6)))) # (!\datapath|comparator|LessThan0~14_combout\ & (\datapath|y_register|sigout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(6),
	datac => \datapath|x_register|sigout\(6),
	datad => \datapath|comparator|LessThan0~14_combout\,
	combout => \datapath|mux2|output[6]~5_combout\);

-- Location: LCCOMB_X59_Y47_N14
\datapath|subtractor|output[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|subtractor|output[7]~14_combout\ = \datapath|mux1|output[7]~4_combout\ $ (\datapath|subtractor|output[6]~13\ $ (!\datapath|mux2|output[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|mux1|output[7]~4_combout\,
	datad => \datapath|mux2|output[7]~4_combout\,
	cin => \datapath|subtractor|output[6]~13\,
	combout => \datapath|subtractor|output[7]~14_combout\);

-- Location: LCCOMB_X59_Y47_N20
\datapath|y_mux|output[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|y_mux|output[7]~0_combout\ = (\controller|state.subxfromyputintoy~q\ & \datapath|subtractor|output[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.subxfromyputintoy~q\,
	datac => \datapath|subtractor|output[7]~14_combout\,
	combout => \datapath|y_mux|output[7]~0_combout\);

-- Location: FF_X59_Y47_N21
\datapath|y_register|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|y_mux|output[7]~0_combout\,
	clrn => \rst~input_o\,
	ena => \controller|y_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|y_register|sigout\(7));

-- Location: LCCOMB_X62_Y47_N14
\datapath|comparator|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~1_cout\ = CARRY((!\datapath|y_register|sigout\(0) & \datapath|x_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(0),
	datab => \datapath|x_register|sigout\(0),
	datad => VCC,
	cout => \datapath|comparator|LessThan1~1_cout\);

-- Location: LCCOMB_X62_Y47_N16
\datapath|comparator|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~3_cout\ = CARRY((\datapath|x_register|sigout\(1) & (\datapath|y_register|sigout\(1) & !\datapath|comparator|LessThan1~1_cout\)) # (!\datapath|x_register|sigout\(1) & ((\datapath|y_register|sigout\(1)) # 
-- (!\datapath|comparator|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(1),
	datab => \datapath|y_register|sigout\(1),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~1_cout\,
	cout => \datapath|comparator|LessThan1~3_cout\);

-- Location: LCCOMB_X62_Y47_N18
\datapath|comparator|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~5_cout\ = CARRY((\datapath|x_register|sigout\(2) & ((!\datapath|comparator|LessThan1~3_cout\) # (!\datapath|y_register|sigout\(2)))) # (!\datapath|x_register|sigout\(2) & (!\datapath|y_register|sigout\(2) & 
-- !\datapath|comparator|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(2),
	datab => \datapath|y_register|sigout\(2),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~3_cout\,
	cout => \datapath|comparator|LessThan1~5_cout\);

-- Location: LCCOMB_X62_Y47_N20
\datapath|comparator|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~7_cout\ = CARRY((\datapath|x_register|sigout\(3) & (\datapath|y_register|sigout\(3) & !\datapath|comparator|LessThan1~5_cout\)) # (!\datapath|x_register|sigout\(3) & ((\datapath|y_register|sigout\(3)) # 
-- (!\datapath|comparator|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(3),
	datab => \datapath|y_register|sigout\(3),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~5_cout\,
	cout => \datapath|comparator|LessThan1~7_cout\);

-- Location: LCCOMB_X62_Y47_N22
\datapath|comparator|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~9_cout\ = CARRY((\datapath|y_register|sigout\(4) & (\datapath|x_register|sigout\(4) & !\datapath|comparator|LessThan1~7_cout\)) # (!\datapath|y_register|sigout\(4) & ((\datapath|x_register|sigout\(4)) # 
-- (!\datapath|comparator|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(4),
	datab => \datapath|x_register|sigout\(4),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~7_cout\,
	cout => \datapath|comparator|LessThan1~9_cout\);

-- Location: LCCOMB_X62_Y47_N24
\datapath|comparator|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~11_cout\ = CARRY((\datapath|y_register|sigout\(5) & ((!\datapath|comparator|LessThan1~9_cout\) # (!\datapath|x_register|sigout\(5)))) # (!\datapath|y_register|sigout\(5) & (!\datapath|x_register|sigout\(5) & 
-- !\datapath|comparator|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(5),
	datab => \datapath|x_register|sigout\(5),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~9_cout\,
	cout => \datapath|comparator|LessThan1~11_cout\);

-- Location: LCCOMB_X62_Y47_N26
\datapath|comparator|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~13_cout\ = CARRY((\datapath|y_register|sigout\(6) & (\datapath|x_register|sigout\(6) & !\datapath|comparator|LessThan1~11_cout\)) # (!\datapath|y_register|sigout\(6) & ((\datapath|x_register|sigout\(6)) # 
-- (!\datapath|comparator|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(6),
	datab => \datapath|x_register|sigout\(6),
	datad => VCC,
	cin => \datapath|comparator|LessThan1~11_cout\,
	cout => \datapath|comparator|LessThan1~13_cout\);

-- Location: LCCOMB_X62_Y47_N28
\datapath|comparator|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan1~14_combout\ = (\datapath|x_register|sigout\(7) & ((\datapath|comparator|LessThan1~13_cout\) # (!\datapath|y_register|sigout\(7)))) # (!\datapath|x_register|sigout\(7) & (\datapath|comparator|LessThan1~13_cout\ & 
-- !\datapath|y_register|sigout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(7),
	datad => \datapath|y_register|sigout\(7),
	cin => \datapath|comparator|LessThan1~13_cout\,
	combout => \datapath|comparator|LessThan1~14_combout\);

-- Location: LCCOMB_X61_Y47_N12
\controller|state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|state~11_combout\ = (\datapath|comparator|LessThan1~14_combout\ & (!\datapath|comparator|LessThan0~14_combout\ & \controller|state.compare~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|comparator|LessThan1~14_combout\,
	datac => \datapath|comparator|LessThan0~14_combout\,
	datad => \controller|state.compare~q\,
	combout => \controller|state~11_combout\);

-- Location: FF_X61_Y47_N13
\controller|state.subyfromxputintox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|state~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.subyfromxputintox~q\);

-- Location: LCCOMB_X59_Y47_N18
\datapath|x_mux|output[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|x_mux|output[7]~4_combout\ = (\controller|state.subyfromxputintox~q\ & \datapath|subtractor|output[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.subyfromxputintox~q\,
	datac => \datapath|subtractor|output[7]~14_combout\,
	combout => \datapath|x_mux|output[7]~4_combout\);

-- Location: FF_X59_Y47_N19
\datapath|x_register|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|x_mux|output[7]~4_combout\,
	clrn => \rst~input_o\,
	ena => \controller|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|x_register|sigout\(7));

-- Location: LCCOMB_X60_Y47_N8
\datapath|comparator|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~1_cout\ = CARRY((\datapath|y_register|sigout\(0) & !\datapath|x_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(0),
	datab => \datapath|x_register|sigout\(0),
	datad => VCC,
	cout => \datapath|comparator|LessThan0~1_cout\);

-- Location: LCCOMB_X60_Y47_N10
\datapath|comparator|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~3_cout\ = CARRY((\datapath|x_register|sigout\(1) & ((!\datapath|comparator|LessThan0~1_cout\) # (!\datapath|y_register|sigout\(1)))) # (!\datapath|x_register|sigout\(1) & (!\datapath|y_register|sigout\(1) & 
-- !\datapath|comparator|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(1),
	datab => \datapath|y_register|sigout\(1),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~1_cout\,
	cout => \datapath|comparator|LessThan0~3_cout\);

-- Location: LCCOMB_X60_Y47_N12
\datapath|comparator|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~5_cout\ = CARRY((\datapath|y_register|sigout\(2) & ((!\datapath|comparator|LessThan0~3_cout\) # (!\datapath|x_register|sigout\(2)))) # (!\datapath|y_register|sigout\(2) & (!\datapath|x_register|sigout\(2) & 
-- !\datapath|comparator|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(2),
	datab => \datapath|x_register|sigout\(2),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~3_cout\,
	cout => \datapath|comparator|LessThan0~5_cout\);

-- Location: LCCOMB_X60_Y47_N14
\datapath|comparator|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~7_cout\ = CARRY((\datapath|y_register|sigout\(3) & (\datapath|x_register|sigout\(3) & !\datapath|comparator|LessThan0~5_cout\)) # (!\datapath|y_register|sigout\(3) & ((\datapath|x_register|sigout\(3)) # 
-- (!\datapath|comparator|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(3),
	datab => \datapath|x_register|sigout\(3),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~5_cout\,
	cout => \datapath|comparator|LessThan0~7_cout\);

-- Location: LCCOMB_X60_Y47_N16
\datapath|comparator|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~9_cout\ = CARRY((\datapath|x_register|sigout\(4) & (\datapath|y_register|sigout\(4) & !\datapath|comparator|LessThan0~7_cout\)) # (!\datapath|x_register|sigout\(4) & ((\datapath|y_register|sigout\(4)) # 
-- (!\datapath|comparator|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|x_register|sigout\(4),
	datab => \datapath|y_register|sigout\(4),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~7_cout\,
	cout => \datapath|comparator|LessThan0~9_cout\);

-- Location: LCCOMB_X60_Y47_N18
\datapath|comparator|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~11_cout\ = CARRY((\datapath|y_register|sigout\(5) & (\datapath|x_register|sigout\(5) & !\datapath|comparator|LessThan0~9_cout\)) # (!\datapath|y_register|sigout\(5) & ((\datapath|x_register|sigout\(5)) # 
-- (!\datapath|comparator|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(5),
	datab => \datapath|x_register|sigout\(5),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~9_cout\,
	cout => \datapath|comparator|LessThan0~11_cout\);

-- Location: LCCOMB_X60_Y47_N20
\datapath|comparator|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~13_cout\ = CARRY((\datapath|y_register|sigout\(6) & ((!\datapath|comparator|LessThan0~11_cout\) # (!\datapath|x_register|sigout\(6)))) # (!\datapath|y_register|sigout\(6) & (!\datapath|x_register|sigout\(6) & 
-- !\datapath|comparator|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|y_register|sigout\(6),
	datab => \datapath|x_register|sigout\(6),
	datad => VCC,
	cin => \datapath|comparator|LessThan0~11_cout\,
	cout => \datapath|comparator|LessThan0~13_cout\);

-- Location: LCCOMB_X60_Y47_N22
\datapath|comparator|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|comparator|LessThan0~14_combout\ = (\datapath|x_register|sigout\(7) & (\datapath|comparator|LessThan0~13_cout\ & \datapath|y_register|sigout\(7))) # (!\datapath|x_register|sigout\(7) & ((\datapath|comparator|LessThan0~13_cout\) # 
-- (\datapath|y_register|sigout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|x_register|sigout\(7),
	datad => \datapath|y_register|sigout\(7),
	cin => \datapath|comparator|LessThan0~13_cout\,
	combout => \datapath|comparator|LessThan0~14_combout\);

-- Location: LCCOMB_X61_Y47_N14
\controller|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|Selector1~0_combout\ = (\controller|state.done_state~q\ & !\go~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done_state~q\,
	datad => \go~input_o\,
	combout => \controller|Selector1~0_combout\);

-- Location: LCCOMB_X61_Y47_N2
\controller|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|Selector1~1_combout\ = (\controller|Selector1~0_combout\) # ((!\datapath|comparator|LessThan0~14_combout\ & (!\datapath|comparator|LessThan1~14_combout\ & \controller|state.compare~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|comparator|LessThan0~14_combout\,
	datab => \datapath|comparator|LessThan1~14_combout\,
	datac => \controller|Selector1~0_combout\,
	datad => \controller|state.compare~q\,
	combout => \controller|Selector1~1_combout\);

-- Location: FF_X61_Y47_N3
\controller|state.done_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controller|Selector1~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.done_state~q\);

-- Location: LCCOMB_X61_Y47_N26
\controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|Selector0~0_combout\ = ((\go~input_o\ & ((\controller|state.hold~q\) # (\controller|state.done_state~q\)))) # (!\controller|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \go~input_o\,
	datab => \controller|state.start~q\,
	datac => \controller|state.hold~q\,
	datad => \controller|state.done_state~q\,
	combout => \controller|Selector0~0_combout\);

-- Location: FF_X61_Y47_N9
\controller|state.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controller|Selector0~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state.hold~q\);

-- Location: LCCOMB_X61_Y47_N28
\controller|done\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|done~combout\ = (\controller|state.hold~q\ & (\controller|done~combout\)) # (!\controller|state.hold~q\ & ((\controller|state.done_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|done~combout\,
	datac => \controller|state.hold~q\,
	datad => \controller|state.done_state~q\,
	combout => \controller|done~combout\);

-- Location: LCCOMB_X62_Y47_N10
\datapath|outputreg|sigout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|outputreg|sigout[1]~feeder_combout\ = \datapath|x_register|sigout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|x_register|sigout\(1),
	combout => \datapath|outputreg|sigout[1]~feeder_combout\);

-- Location: LCCOMB_X61_Y47_N8
\controller|output_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \controller|output_en~combout\ = (\controller|state.done_state~q\) # (\controller|state.compare~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done_state~q\,
	datad => \controller|state.compare~q\,
	combout => \controller|output_en~combout\);

-- Location: FF_X62_Y47_N11
\datapath|outputreg|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|outputreg|sigout[1]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(1));

-- Location: FF_X62_Y47_N13
\datapath|outputreg|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datapath|x_register|sigout\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(3));

-- Location: LCCOMB_X62_Y47_N4
\datapath|outputreg|sigout[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|outputreg|sigout[0]~feeder_combout\ = \datapath|x_register|sigout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|x_register|sigout\(0),
	combout => \datapath|outputreg|sigout[0]~feeder_combout\);

-- Location: FF_X62_Y47_N5
\datapath|outputreg|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|outputreg|sigout[0]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(0));

-- Location: LCCOMB_X62_Y47_N6
\datapath|outputreg|sigout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|outputreg|sigout[2]~feeder_combout\ = \datapath|x_register|sigout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|x_register|sigout\(2),
	combout => \datapath|outputreg|sigout[2]~feeder_combout\);

-- Location: FF_X62_Y47_N7
\datapath|outputreg|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|outputreg|sigout[2]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(2));

-- Location: LCCOMB_X62_Y47_N8
\decoder2|outputs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[0]~0_combout\ = (\datapath|outputreg|sigout\(0) & ((\datapath|outputreg|sigout\(3)) # (\datapath|outputreg|sigout\(1) $ (\datapath|outputreg|sigout\(2))))) # (!\datapath|outputreg|sigout\(0) & ((\datapath|outputreg|sigout\(1)) # 
-- (\datapath|outputreg|sigout\(3) $ (\datapath|outputreg|sigout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(1),
	datab => \datapath|outputreg|sigout\(3),
	datac => \datapath|outputreg|sigout\(0),
	datad => \datapath|outputreg|sigout\(2),
	combout => \decoder2|outputs[0]~0_combout\);

-- Location: LCCOMB_X62_Y47_N30
\decoder2|outputs[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[1]~1_combout\ = (\datapath|outputreg|sigout\(1) & ((\datapath|outputreg|sigout\(3)) # ((!\datapath|outputreg|sigout\(0) & \datapath|outputreg|sigout\(2))))) # (!\datapath|outputreg|sigout\(1) & ((\datapath|outputreg|sigout\(3) $ 
-- (\datapath|outputreg|sigout\(2))) # (!\datapath|outputreg|sigout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(1),
	datab => \datapath|outputreg|sigout\(3),
	datac => \datapath|outputreg|sigout\(0),
	datad => \datapath|outputreg|sigout\(2),
	combout => \decoder2|outputs[1]~1_combout\);

-- Location: LCCOMB_X62_Y47_N0
\decoder2|outputs[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[2]~2_combout\ = (\datapath|outputreg|sigout\(1) & ((\datapath|outputreg|sigout\(3)) # ((!\datapath|outputreg|sigout\(0))))) # (!\datapath|outputreg|sigout\(1) & ((\datapath|outputreg|sigout\(2) & (\datapath|outputreg|sigout\(3))) # 
-- (!\datapath|outputreg|sigout\(2) & ((!\datapath|outputreg|sigout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(1),
	datab => \datapath|outputreg|sigout\(3),
	datac => \datapath|outputreg|sigout\(0),
	datad => \datapath|outputreg|sigout\(2),
	combout => \decoder2|outputs[2]~2_combout\);

-- Location: LCCOMB_X58_Y47_N12
\decoder2|outputs[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[3]~3_combout\ = (\datapath|outputreg|sigout\(0) & (\datapath|outputreg|sigout\(2) $ ((!\datapath|outputreg|sigout\(1))))) # (!\datapath|outputreg|sigout\(0) & ((\datapath|outputreg|sigout\(2) & (!\datapath|outputreg|sigout\(1) & 
-- !\datapath|outputreg|sigout\(3))) # (!\datapath|outputreg|sigout\(2) & (\datapath|outputreg|sigout\(1) & \datapath|outputreg|sigout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(2),
	datab => \datapath|outputreg|sigout\(1),
	datac => \datapath|outputreg|sigout\(3),
	datad => \datapath|outputreg|sigout\(0),
	combout => \decoder2|outputs[3]~3_combout\);

-- Location: LCCOMB_X58_Y47_N18
\decoder2|outputs[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[4]~4_combout\ = (\datapath|outputreg|sigout\(2) & (((!\datapath|outputreg|sigout\(1) & \datapath|outputreg|sigout\(0))) # (!\datapath|outputreg|sigout\(3)))) # (!\datapath|outputreg|sigout\(2) & (((\datapath|outputreg|sigout\(3)) # 
-- (\datapath|outputreg|sigout\(0))) # (!\datapath|outputreg|sigout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(2),
	datab => \datapath|outputreg|sigout\(1),
	datac => \datapath|outputreg|sigout\(3),
	datad => \datapath|outputreg|sigout\(0),
	combout => \decoder2|outputs[4]~4_combout\);

-- Location: LCCOMB_X62_Y47_N12
\decoder2|outputs[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[5]~5_combout\ = (\datapath|outputreg|sigout\(1) & ((\datapath|outputreg|sigout\(0) & (!\datapath|outputreg|sigout\(3))) # (!\datapath|outputreg|sigout\(0) & ((!\datapath|outputreg|sigout\(2)))))) # (!\datapath|outputreg|sigout\(1) & 
-- ((\datapath|outputreg|sigout\(0) $ (!\datapath|outputreg|sigout\(3))) # (!\datapath|outputreg|sigout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(1),
	datab => \datapath|outputreg|sigout\(0),
	datac => \datapath|outputreg|sigout\(3),
	datad => \datapath|outputreg|sigout\(2),
	combout => \decoder2|outputs[5]~5_combout\);

-- Location: LCCOMB_X58_Y47_N0
\decoder2|outputs[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder2|outputs[6]~6_combout\ = (\datapath|outputreg|sigout\(2) & ((\datapath|outputreg|sigout\(1)) # (\datapath|outputreg|sigout\(3) $ (\datapath|outputreg|sigout\(0))))) # (!\datapath|outputreg|sigout\(2) & ((\datapath|outputreg|sigout\(1) $ 
-- (\datapath|outputreg|sigout\(3))) # (!\datapath|outputreg|sigout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(2),
	datab => \datapath|outputreg|sigout\(1),
	datac => \datapath|outputreg|sigout\(3),
	datad => \datapath|outputreg|sigout\(0),
	combout => \decoder2|outputs[6]~6_combout\);

-- Location: FF_X62_Y47_N23
\datapath|outputreg|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datapath|x_register|sigout\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(6));

-- Location: LCCOMB_X62_Y47_N2
\datapath|outputreg|sigout[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \datapath|outputreg|sigout[5]~feeder_combout\ = \datapath|x_register|sigout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|x_register|sigout\(5),
	combout => \datapath|outputreg|sigout[5]~feeder_combout\);

-- Location: FF_X62_Y47_N3
\datapath|outputreg|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \datapath|outputreg|sigout[5]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(5));

-- Location: FF_X62_Y47_N15
\datapath|outputreg|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datapath|x_register|sigout\(4),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(4));

-- Location: FF_X62_Y47_N29
\datapath|outputreg|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \datapath|x_register|sigout\(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \controller|output_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datapath|outputreg|sigout\(7));

-- Location: LCCOMB_X65_Y47_N4
\decoder1|outputs[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[0]~0_combout\ = (\datapath|outputreg|sigout\(4) & ((\datapath|outputreg|sigout\(7)) # (\datapath|outputreg|sigout\(6) $ (\datapath|outputreg|sigout\(5))))) # (!\datapath|outputreg|sigout\(4) & ((\datapath|outputreg|sigout\(5)) # 
-- (\datapath|outputreg|sigout\(6) $ (\datapath|outputreg|sigout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[0]~0_combout\);

-- Location: LCCOMB_X65_Y47_N2
\decoder1|outputs[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[1]~1_combout\ = (\datapath|outputreg|sigout\(6) & ((\datapath|outputreg|sigout\(5) $ (!\datapath|outputreg|sigout\(7))) # (!\datapath|outputreg|sigout\(4)))) # (!\datapath|outputreg|sigout\(6) & ((\datapath|outputreg|sigout\(7)) # 
-- ((!\datapath|outputreg|sigout\(5) & !\datapath|outputreg|sigout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[1]~1_combout\);

-- Location: LCCOMB_X65_Y47_N16
\decoder1|outputs[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[2]~2_combout\ = (\datapath|outputreg|sigout\(5) & (((\datapath|outputreg|sigout\(7)) # (!\datapath|outputreg|sigout\(4))))) # (!\datapath|outputreg|sigout\(5) & ((\datapath|outputreg|sigout\(6) & ((\datapath|outputreg|sigout\(7)))) # 
-- (!\datapath|outputreg|sigout\(6) & (!\datapath|outputreg|sigout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[2]~2_combout\);

-- Location: LCCOMB_X65_Y47_N18
\decoder1|outputs[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[3]~3_combout\ = (\datapath|outputreg|sigout\(4) & (\datapath|outputreg|sigout\(6) $ ((!\datapath|outputreg|sigout\(5))))) # (!\datapath|outputreg|sigout\(4) & ((\datapath|outputreg|sigout\(6) & (!\datapath|outputreg|sigout\(5) & 
-- !\datapath|outputreg|sigout\(7))) # (!\datapath|outputreg|sigout\(6) & (\datapath|outputreg|sigout\(5) & \datapath|outputreg|sigout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[3]~3_combout\);

-- Location: LCCOMB_X65_Y47_N20
\decoder1|outputs[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[4]~4_combout\ = (\datapath|outputreg|sigout\(6) & (((!\datapath|outputreg|sigout\(5) & \datapath|outputreg|sigout\(4))) # (!\datapath|outputreg|sigout\(7)))) # (!\datapath|outputreg|sigout\(6) & (((\datapath|outputreg|sigout\(4)) # 
-- (\datapath|outputreg|sigout\(7))) # (!\datapath|outputreg|sigout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[4]~4_combout\);

-- Location: LCCOMB_X65_Y47_N22
\decoder1|outputs[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[5]~5_combout\ = (\datapath|outputreg|sigout\(5) & ((\datapath|outputreg|sigout\(4) & ((!\datapath|outputreg|sigout\(7)))) # (!\datapath|outputreg|sigout\(4) & (!\datapath|outputreg|sigout\(6))))) # (!\datapath|outputreg|sigout\(5) & 
-- ((\datapath|outputreg|sigout\(4) $ (!\datapath|outputreg|sigout\(7))) # (!\datapath|outputreg|sigout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[5]~5_combout\);

-- Location: LCCOMB_X65_Y47_N12
\decoder1|outputs[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \decoder1|outputs[6]~6_combout\ = (\datapath|outputreg|sigout\(6) & ((\datapath|outputreg|sigout\(5)) # (\datapath|outputreg|sigout\(4) $ (\datapath|outputreg|sigout\(7))))) # (!\datapath|outputreg|sigout\(6) & ((\datapath|outputreg|sigout\(5) $ 
-- (\datapath|outputreg|sigout\(7))) # (!\datapath|outputreg|sigout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|outputreg|sigout\(6),
	datab => \datapath|outputreg|sigout\(5),
	datac => \datapath|outputreg|sigout\(4),
	datad => \datapath|outputreg|sigout\(7),
	combout => \decoder1|outputs[6]~6_combout\);

-- Location: IOIBUF_X31_Y39_N15
\x[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\x[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\x[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\y[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X78_Y33_N15
\y[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\y[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_done <= \done~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;
END structure;


