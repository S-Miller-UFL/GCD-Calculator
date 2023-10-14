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

-- DATE "10/13/2023 20:39:26"

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

ENTITY 	datapath1 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0);
	x_sel : IN std_logic;
	y_sel : IN std_logic;
	y_en : IN std_logic;
	x_en : IN std_logic;
	output_en : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	x_lt_y : OUT std_logic;
	x_ne_y : OUT std_logic
	);
END datapath1;

-- Design Ports Information
-- output[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_lt_y	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_ne_y	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_en	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_sel	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_en	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_sel	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_en	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF datapath1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_sel : std_logic;
SIGNAL ww_y_sel : std_logic;
SIGNAL ww_y_en : std_logic;
SIGNAL ww_x_en : std_logic;
SIGNAL ww_output_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_x_lt_y : std_logic;
SIGNAL ww_x_ne_y : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \x_lt_y~output_o\ : std_logic;
SIGNAL \x_ne_y~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y_register|sigout[0]~8_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \y_sel~input_o\ : std_logic;
SIGNAL \y_en~input_o\ : std_logic;
SIGNAL \x_register|sigout[0]~8_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x_sel~input_o\ : std_logic;
SIGNAL \x_en~input_o\ : std_logic;
SIGNAL \outputreg|sigout[0]~feeder_combout\ : std_logic;
SIGNAL \output_en~input_o\ : std_logic;
SIGNAL \y_register|sigout[0]~9\ : std_logic;
SIGNAL \y_register|sigout[1]~10_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x_register|sigout[0]~9\ : std_logic;
SIGNAL \x_register|sigout[1]~10_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[1]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[1]~11\ : std_logic;
SIGNAL \y_register|sigout[2]~12_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x_register|sigout[1]~11\ : std_logic;
SIGNAL \x_register|sigout[2]~12_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[2]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[2]~13\ : std_logic;
SIGNAL \y_register|sigout[3]~14_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x_register|sigout[2]~13\ : std_logic;
SIGNAL \x_register|sigout[3]~14_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[3]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[3]~15\ : std_logic;
SIGNAL \y_register|sigout[4]~16_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \x_register|sigout[3]~15\ : std_logic;
SIGNAL \x_register|sigout[4]~16_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[4]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[4]~17\ : std_logic;
SIGNAL \y_register|sigout[5]~18_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \x_register|sigout[4]~17\ : std_logic;
SIGNAL \x_register|sigout[5]~18_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[5]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[5]~19\ : std_logic;
SIGNAL \y_register|sigout[6]~20_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \x_register|sigout[5]~19\ : std_logic;
SIGNAL \x_register|sigout[6]~20_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[6]~feeder_combout\ : std_logic;
SIGNAL \y_register|sigout[6]~21\ : std_logic;
SIGNAL \y_register|sigout[7]~22_combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \x_register|sigout[6]~21\ : std_logic;
SIGNAL \x_register|sigout[7]~22_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \outputreg|sigout[7]~feeder_combout\ : std_logic;
SIGNAL \comparator|LessThan0~1_cout\ : std_logic;
SIGNAL \comparator|LessThan0~3_cout\ : std_logic;
SIGNAL \comparator|LessThan0~5_cout\ : std_logic;
SIGNAL \comparator|LessThan0~7_cout\ : std_logic;
SIGNAL \comparator|LessThan0~9_cout\ : std_logic;
SIGNAL \comparator|LessThan0~11_cout\ : std_logic;
SIGNAL \comparator|LessThan0~13_cout\ : std_logic;
SIGNAL \comparator|LessThan0~14_combout\ : std_logic;
SIGNAL \comparator|LessThan1~1_cout\ : std_logic;
SIGNAL \comparator|LessThan1~3_cout\ : std_logic;
SIGNAL \comparator|LessThan1~5_cout\ : std_logic;
SIGNAL \comparator|LessThan1~7_cout\ : std_logic;
SIGNAL \comparator|LessThan1~9_cout\ : std_logic;
SIGNAL \comparator|LessThan1~11_cout\ : std_logic;
SIGNAL \comparator|LessThan1~13_cout\ : std_logic;
SIGNAL \comparator|LessThan1~14_combout\ : std_logic;
SIGNAL \comparator|ne~0_combout\ : std_logic;
SIGNAL \x_register|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \y_register|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \outputreg|sigout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_y_sel~input_o\ : std_logic;
SIGNAL \ALT_INV_x_sel~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_y <= y;
output <= ww_output;
ww_x_sel <= x_sel;
ww_y_sel <= y_sel;
ww_y_en <= y_en;
ww_x_en <= x_en;
ww_output_en <= output_en;
ww_clk <= clk;
ww_reset <= reset;
x_lt_y <= ww_x_lt_y;
x_ne_y <= ww_x_ne_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_y_sel~input_o\ <= NOT \y_sel~input_o\;
\ALT_INV_x_sel~input_o\ <= NOT \x_sel~input_o\;
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

-- Location: IOOBUF_X56_Y54_N30
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputreg|sigout\(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\x_lt_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparator|LessThan0~14_combout\,
	devoe => ww_devoe,
	o => \x_lt_y~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\x_ne_y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comparator|ne~0_combout\,
	devoe => ww_devoe,
	o => \x_ne_y~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X63_Y50_N16
\y_register|sigout[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[0]~8_combout\ = (\x_register|sigout\(0) & ((GND) # (!\y_register|sigout\(0)))) # (!\x_register|sigout\(0) & (\y_register|sigout\(0) $ (GND)))
-- \y_register|sigout[0]~9\ = CARRY((\x_register|sigout\(0)) # (!\y_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(0),
	datab => \y_register|sigout\(0),
	datad => VCC,
	combout => \y_register|sigout[0]~8_combout\,
	cout => \y_register|sigout[0]~9\);

-- Location: IOIBUF_X66_Y54_N22
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

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X69_Y54_N22
\y_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_sel,
	o => \y_sel~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\y_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_en,
	o => \y_en~input_o\);

-- Location: FF_X63_Y50_N17
\y_register|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[0]~8_combout\,
	asdata => \y[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(0));

-- Location: LCCOMB_X62_Y50_N16
\x_register|sigout[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[0]~8_combout\ = (\x_register|sigout\(0) & (\y_register|sigout\(0) $ (VCC))) # (!\x_register|sigout\(0) & ((\y_register|sigout\(0)) # (GND)))
-- \x_register|sigout[0]~9\ = CARRY((\y_register|sigout\(0)) # (!\x_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(0),
	datab => \y_register|sigout\(0),
	datad => VCC,
	combout => \x_register|sigout[0]~8_combout\,
	cout => \x_register|sigout[0]~9\);

-- Location: IOIBUF_X58_Y54_N22
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

-- Location: IOIBUF_X62_Y54_N29
\x_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_sel,
	o => \x_sel~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\x_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_en,
	o => \x_en~input_o\);

-- Location: FF_X62_Y50_N17
\x_register|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[0]~8_combout\,
	asdata => \x[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(0));

-- Location: LCCOMB_X60_Y50_N12
\outputreg|sigout[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[0]~feeder_combout\ = \x_register|sigout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_register|sigout\(0),
	combout => \outputreg|sigout[0]~feeder_combout\);

-- Location: IOIBUF_X60_Y54_N1
\output_en~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_output_en,
	o => \output_en~input_o\);

-- Location: FF_X60_Y50_N13
\outputreg|sigout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(0));

-- Location: LCCOMB_X63_Y50_N18
\y_register|sigout[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[1]~10_combout\ = (\y_register|sigout\(1) & ((\x_register|sigout\(1) & (!\y_register|sigout[0]~9\)) # (!\x_register|sigout\(1) & ((\y_register|sigout[0]~9\) # (GND))))) # (!\y_register|sigout\(1) & ((\x_register|sigout\(1) & 
-- (\y_register|sigout[0]~9\ & VCC)) # (!\x_register|sigout\(1) & (!\y_register|sigout[0]~9\))))
-- \y_register|sigout[1]~11\ = CARRY((\y_register|sigout\(1) & ((!\y_register|sigout[0]~9\) # (!\x_register|sigout\(1)))) # (!\y_register|sigout\(1) & (!\x_register|sigout\(1) & !\y_register|sigout[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(1),
	datab => \x_register|sigout\(1),
	datad => VCC,
	cin => \y_register|sigout[0]~9\,
	combout => \y_register|sigout[1]~10_combout\,
	cout => \y_register|sigout[1]~11\);

-- Location: IOIBUF_X66_Y54_N15
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

-- Location: FF_X63_Y50_N19
\y_register|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[1]~10_combout\,
	asdata => \y[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(1));

-- Location: LCCOMB_X62_Y50_N18
\x_register|sigout[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[1]~10_combout\ = (\x_register|sigout\(1) & ((\y_register|sigout\(1) & (!\x_register|sigout[0]~9\)) # (!\y_register|sigout\(1) & ((\x_register|sigout[0]~9\) # (GND))))) # (!\x_register|sigout\(1) & ((\y_register|sigout\(1) & 
-- (\x_register|sigout[0]~9\ & VCC)) # (!\y_register|sigout\(1) & (!\x_register|sigout[0]~9\))))
-- \x_register|sigout[1]~11\ = CARRY((\x_register|sigout\(1) & ((!\x_register|sigout[0]~9\) # (!\y_register|sigout\(1)))) # (!\x_register|sigout\(1) & (!\y_register|sigout\(1) & !\x_register|sigout[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(1),
	datab => \y_register|sigout\(1),
	datad => VCC,
	cin => \x_register|sigout[0]~9\,
	combout => \x_register|sigout[1]~10_combout\,
	cout => \x_register|sigout[1]~11\);

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: FF_X62_Y50_N19
\x_register|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[1]~10_combout\,
	asdata => \x[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(1));

-- Location: LCCOMB_X60_Y50_N6
\outputreg|sigout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[1]~feeder_combout\ = \x_register|sigout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_register|sigout\(1),
	combout => \outputreg|sigout[1]~feeder_combout\);

-- Location: FF_X60_Y50_N7
\outputreg|sigout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(1));

-- Location: LCCOMB_X63_Y50_N20
\y_register|sigout[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[2]~12_combout\ = ((\x_register|sigout\(2) $ (\y_register|sigout\(2) $ (\y_register|sigout[1]~11\)))) # (GND)
-- \y_register|sigout[2]~13\ = CARRY((\x_register|sigout\(2) & ((!\y_register|sigout[1]~11\) # (!\y_register|sigout\(2)))) # (!\x_register|sigout\(2) & (!\y_register|sigout\(2) & !\y_register|sigout[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(2),
	datab => \y_register|sigout\(2),
	datad => VCC,
	cin => \y_register|sigout[1]~11\,
	combout => \y_register|sigout[2]~12_combout\,
	cout => \y_register|sigout[2]~13\);

-- Location: IOIBUF_X69_Y54_N8
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

-- Location: FF_X63_Y50_N21
\y_register|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[2]~12_combout\,
	asdata => \y[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(2));

-- Location: LCCOMB_X62_Y50_N20
\x_register|sigout[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[2]~12_combout\ = ((\y_register|sigout\(2) $ (\x_register|sigout\(2) $ (\x_register|sigout[1]~11\)))) # (GND)
-- \x_register|sigout[2]~13\ = CARRY((\y_register|sigout\(2) & ((!\x_register|sigout[1]~11\) # (!\x_register|sigout\(2)))) # (!\y_register|sigout\(2) & (!\x_register|sigout\(2) & !\x_register|sigout[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(2),
	datab => \x_register|sigout\(2),
	datad => VCC,
	cin => \x_register|sigout[1]~11\,
	combout => \x_register|sigout[2]~12_combout\,
	cout => \x_register|sigout[2]~13\);

-- Location: IOIBUF_X58_Y54_N1
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

-- Location: FF_X62_Y50_N21
\x_register|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[2]~12_combout\,
	asdata => \x[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(2));

-- Location: LCCOMB_X60_Y50_N16
\outputreg|sigout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[2]~feeder_combout\ = \x_register|sigout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_register|sigout\(2),
	combout => \outputreg|sigout[2]~feeder_combout\);

-- Location: FF_X60_Y50_N17
\outputreg|sigout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(2));

-- Location: LCCOMB_X63_Y50_N22
\y_register|sigout[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[3]~14_combout\ = (\y_register|sigout\(3) & ((\x_register|sigout\(3) & (!\y_register|sigout[2]~13\)) # (!\x_register|sigout\(3) & ((\y_register|sigout[2]~13\) # (GND))))) # (!\y_register|sigout\(3) & ((\x_register|sigout\(3) & 
-- (\y_register|sigout[2]~13\ & VCC)) # (!\x_register|sigout\(3) & (!\y_register|sigout[2]~13\))))
-- \y_register|sigout[3]~15\ = CARRY((\y_register|sigout\(3) & ((!\y_register|sigout[2]~13\) # (!\x_register|sigout\(3)))) # (!\y_register|sigout\(3) & (!\x_register|sigout\(3) & !\y_register|sigout[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(3),
	datab => \x_register|sigout\(3),
	datad => VCC,
	cin => \y_register|sigout[2]~13\,
	combout => \y_register|sigout[3]~14_combout\,
	cout => \y_register|sigout[3]~15\);

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: FF_X63_Y50_N23
\y_register|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[3]~14_combout\,
	asdata => \y[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(3));

-- Location: LCCOMB_X62_Y50_N22
\x_register|sigout[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[3]~14_combout\ = (\x_register|sigout\(3) & ((\y_register|sigout\(3) & (!\x_register|sigout[2]~13\)) # (!\y_register|sigout\(3) & ((\x_register|sigout[2]~13\) # (GND))))) # (!\x_register|sigout\(3) & ((\y_register|sigout\(3) & 
-- (\x_register|sigout[2]~13\ & VCC)) # (!\y_register|sigout\(3) & (!\x_register|sigout[2]~13\))))
-- \x_register|sigout[3]~15\ = CARRY((\x_register|sigout\(3) & ((!\x_register|sigout[2]~13\) # (!\y_register|sigout\(3)))) # (!\x_register|sigout\(3) & (!\y_register|sigout\(3) & !\x_register|sigout[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(3),
	datab => \y_register|sigout\(3),
	datad => VCC,
	cin => \x_register|sigout[2]~13\,
	combout => \x_register|sigout[3]~14_combout\,
	cout => \x_register|sigout[3]~15\);

-- Location: IOIBUF_X58_Y54_N29
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

-- Location: FF_X62_Y50_N23
\x_register|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[3]~14_combout\,
	asdata => \x[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(3));

-- Location: LCCOMB_X60_Y50_N30
\outputreg|sigout[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[3]~feeder_combout\ = \x_register|sigout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_register|sigout\(3),
	combout => \outputreg|sigout[3]~feeder_combout\);

-- Location: FF_X60_Y50_N31
\outputreg|sigout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(3));

-- Location: LCCOMB_X63_Y50_N24
\y_register|sigout[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[4]~16_combout\ = ((\y_register|sigout\(4) $ (\x_register|sigout\(4) $ (\y_register|sigout[3]~15\)))) # (GND)
-- \y_register|sigout[4]~17\ = CARRY((\y_register|sigout\(4) & (\x_register|sigout\(4) & !\y_register|sigout[3]~15\)) # (!\y_register|sigout\(4) & ((\x_register|sigout\(4)) # (!\y_register|sigout[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(4),
	datab => \x_register|sigout\(4),
	datad => VCC,
	cin => \y_register|sigout[3]~15\,
	combout => \y_register|sigout[4]~16_combout\,
	cout => \y_register|sigout[4]~17\);

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: FF_X63_Y50_N25
\y_register|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[4]~16_combout\,
	asdata => \y[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(4));

-- Location: LCCOMB_X62_Y50_N24
\x_register|sigout[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[4]~16_combout\ = ((\x_register|sigout\(4) $ (\y_register|sigout\(4) $ (\x_register|sigout[3]~15\)))) # (GND)
-- \x_register|sigout[4]~17\ = CARRY((\x_register|sigout\(4) & (\y_register|sigout\(4) & !\x_register|sigout[3]~15\)) # (!\x_register|sigout\(4) & ((\y_register|sigout\(4)) # (!\x_register|sigout[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(4),
	datab => \y_register|sigout\(4),
	datad => VCC,
	cin => \x_register|sigout[3]~15\,
	combout => \x_register|sigout[4]~16_combout\,
	cout => \x_register|sigout[4]~17\);

-- Location: IOIBUF_X69_Y54_N29
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

-- Location: FF_X62_Y50_N25
\x_register|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[4]~16_combout\,
	asdata => \x[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(4));

-- Location: LCCOMB_X60_Y50_N4
\outputreg|sigout[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[4]~feeder_combout\ = \x_register|sigout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_register|sigout\(4),
	combout => \outputreg|sigout[4]~feeder_combout\);

-- Location: FF_X60_Y50_N5
\outputreg|sigout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(4));

-- Location: LCCOMB_X63_Y50_N26
\y_register|sigout[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[5]~18_combout\ = (\x_register|sigout\(5) & ((\y_register|sigout\(5) & (!\y_register|sigout[4]~17\)) # (!\y_register|sigout\(5) & (\y_register|sigout[4]~17\ & VCC)))) # (!\x_register|sigout\(5) & ((\y_register|sigout\(5) & 
-- ((\y_register|sigout[4]~17\) # (GND))) # (!\y_register|sigout\(5) & (!\y_register|sigout[4]~17\))))
-- \y_register|sigout[5]~19\ = CARRY((\x_register|sigout\(5) & (\y_register|sigout\(5) & !\y_register|sigout[4]~17\)) # (!\x_register|sigout\(5) & ((\y_register|sigout\(5)) # (!\y_register|sigout[4]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(5),
	datab => \y_register|sigout\(5),
	datad => VCC,
	cin => \y_register|sigout[4]~17\,
	combout => \y_register|sigout[5]~18_combout\,
	cout => \y_register|sigout[5]~19\);

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: FF_X63_Y50_N27
\y_register|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[5]~18_combout\,
	asdata => \y[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(5));

-- Location: LCCOMB_X62_Y50_N26
\x_register|sigout[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[5]~18_combout\ = (\x_register|sigout\(5) & ((\y_register|sigout\(5) & (!\x_register|sigout[4]~17\)) # (!\y_register|sigout\(5) & ((\x_register|sigout[4]~17\) # (GND))))) # (!\x_register|sigout\(5) & ((\y_register|sigout\(5) & 
-- (\x_register|sigout[4]~17\ & VCC)) # (!\y_register|sigout\(5) & (!\x_register|sigout[4]~17\))))
-- \x_register|sigout[5]~19\ = CARRY((\x_register|sigout\(5) & ((!\x_register|sigout[4]~17\) # (!\y_register|sigout\(5)))) # (!\x_register|sigout\(5) & (!\y_register|sigout\(5) & !\x_register|sigout[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(5),
	datab => \y_register|sigout\(5),
	datad => VCC,
	cin => \x_register|sigout[4]~17\,
	combout => \x_register|sigout[5]~18_combout\,
	cout => \x_register|sigout[5]~19\);

-- Location: IOIBUF_X54_Y54_N8
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

-- Location: FF_X62_Y50_N27
\x_register|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[5]~18_combout\,
	asdata => \x[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(5));

-- Location: LCCOMB_X60_Y50_N10
\outputreg|sigout[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[5]~feeder_combout\ = \x_register|sigout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_register|sigout\(5),
	combout => \outputreg|sigout[5]~feeder_combout\);

-- Location: FF_X60_Y50_N11
\outputreg|sigout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(5));

-- Location: LCCOMB_X63_Y50_N28
\y_register|sigout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[6]~20_combout\ = ((\y_register|sigout\(6) $ (\x_register|sigout\(6) $ (\y_register|sigout[5]~19\)))) # (GND)
-- \y_register|sigout[6]~21\ = CARRY((\y_register|sigout\(6) & (\x_register|sigout\(6) & !\y_register|sigout[5]~19\)) # (!\y_register|sigout\(6) & ((\x_register|sigout\(6)) # (!\y_register|sigout[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(6),
	datab => \x_register|sigout\(6),
	datad => VCC,
	cin => \y_register|sigout[5]~19\,
	combout => \y_register|sigout[6]~20_combout\,
	cout => \y_register|sigout[6]~21\);

-- Location: IOIBUF_X69_Y54_N1
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

-- Location: FF_X63_Y50_N29
\y_register|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[6]~20_combout\,
	asdata => \y[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(6));

-- Location: LCCOMB_X62_Y50_N28
\x_register|sigout[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[6]~20_combout\ = ((\y_register|sigout\(6) $ (\x_register|sigout\(6) $ (\x_register|sigout[5]~19\)))) # (GND)
-- \x_register|sigout[6]~21\ = CARRY((\y_register|sigout\(6) & ((!\x_register|sigout[5]~19\) # (!\x_register|sigout\(6)))) # (!\y_register|sigout\(6) & (!\x_register|sigout\(6) & !\x_register|sigout[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(6),
	datab => \x_register|sigout\(6),
	datad => VCC,
	cin => \x_register|sigout[5]~19\,
	combout => \x_register|sigout[6]~20_combout\,
	cout => \x_register|sigout[6]~21\);

-- Location: IOIBUF_X54_Y54_N15
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

-- Location: FF_X62_Y50_N29
\x_register|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[6]~20_combout\,
	asdata => \x[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(6));

-- Location: LCCOMB_X60_Y50_N28
\outputreg|sigout[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[6]~feeder_combout\ = \x_register|sigout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x_register|sigout\(6),
	combout => \outputreg|sigout[6]~feeder_combout\);

-- Location: FF_X60_Y50_N29
\outputreg|sigout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(6));

-- Location: LCCOMB_X63_Y50_N30
\y_register|sigout[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y_register|sigout[7]~22_combout\ = \y_register|sigout\(7) $ (\y_register|sigout[6]~21\ $ (!\x_register|sigout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(7),
	datad => \x_register|sigout\(7),
	cin => \y_register|sigout[6]~21\,
	combout => \y_register|sigout[7]~22_combout\);

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: FF_X63_Y50_N31
\y_register|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y_register|sigout[7]~22_combout\,
	asdata => \y[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_y_sel~input_o\,
	ena => \y_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_register|sigout\(7));

-- Location: LCCOMB_X62_Y50_N30
\x_register|sigout[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x_register|sigout[7]~22_combout\ = \y_register|sigout\(7) $ (\x_register|sigout[6]~21\ $ (!\x_register|sigout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(7),
	datad => \x_register|sigout\(7),
	cin => \x_register|sigout[6]~21\,
	combout => \x_register|sigout[7]~22_combout\);

-- Location: IOIBUF_X54_Y54_N1
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

-- Location: FF_X62_Y50_N31
\x_register|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \x_register|sigout[7]~22_combout\,
	asdata => \x[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_x_sel~input_o\,
	ena => \x_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_register|sigout\(7));

-- Location: LCCOMB_X60_Y50_N22
\outputreg|sigout[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \outputreg|sigout[7]~feeder_combout\ = \x_register|sigout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_register|sigout\(7),
	combout => \outputreg|sigout[7]~feeder_combout\);

-- Location: FF_X60_Y50_N23
\outputreg|sigout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outputreg|sigout[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \output_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outputreg|sigout\(7));

-- Location: LCCOMB_X63_Y50_N0
\comparator|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~1_cout\ = CARRY((!\x_register|sigout\(0) & \y_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(0),
	datab => \y_register|sigout\(0),
	datad => VCC,
	cout => \comparator|LessThan0~1_cout\);

-- Location: LCCOMB_X63_Y50_N2
\comparator|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~3_cout\ = CARRY((\y_register|sigout\(1) & (\x_register|sigout\(1) & !\comparator|LessThan0~1_cout\)) # (!\y_register|sigout\(1) & ((\x_register|sigout\(1)) # (!\comparator|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(1),
	datab => \x_register|sigout\(1),
	datad => VCC,
	cin => \comparator|LessThan0~1_cout\,
	cout => \comparator|LessThan0~3_cout\);

-- Location: LCCOMB_X63_Y50_N4
\comparator|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~5_cout\ = CARRY((\x_register|sigout\(2) & (\y_register|sigout\(2) & !\comparator|LessThan0~3_cout\)) # (!\x_register|sigout\(2) & ((\y_register|sigout\(2)) # (!\comparator|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(2),
	datab => \y_register|sigout\(2),
	datad => VCC,
	cin => \comparator|LessThan0~3_cout\,
	cout => \comparator|LessThan0~5_cout\);

-- Location: LCCOMB_X63_Y50_N6
\comparator|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~7_cout\ = CARRY((\y_register|sigout\(3) & (\x_register|sigout\(3) & !\comparator|LessThan0~5_cout\)) # (!\y_register|sigout\(3) & ((\x_register|sigout\(3)) # (!\comparator|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(3),
	datab => \x_register|sigout\(3),
	datad => VCC,
	cin => \comparator|LessThan0~5_cout\,
	cout => \comparator|LessThan0~7_cout\);

-- Location: LCCOMB_X63_Y50_N8
\comparator|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~9_cout\ = CARRY((\y_register|sigout\(4) & ((!\comparator|LessThan0~7_cout\) # (!\x_register|sigout\(4)))) # (!\y_register|sigout\(4) & (!\x_register|sigout\(4) & !\comparator|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(4),
	datab => \x_register|sigout\(4),
	datad => VCC,
	cin => \comparator|LessThan0~7_cout\,
	cout => \comparator|LessThan0~9_cout\);

-- Location: LCCOMB_X63_Y50_N10
\comparator|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~11_cout\ = CARRY((\x_register|sigout\(5) & ((!\comparator|LessThan0~9_cout\) # (!\y_register|sigout\(5)))) # (!\x_register|sigout\(5) & (!\y_register|sigout\(5) & !\comparator|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(5),
	datab => \y_register|sigout\(5),
	datad => VCC,
	cin => \comparator|LessThan0~9_cout\,
	cout => \comparator|LessThan0~11_cout\);

-- Location: LCCOMB_X63_Y50_N12
\comparator|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~13_cout\ = CARRY((\y_register|sigout\(6) & ((!\comparator|LessThan0~11_cout\) # (!\x_register|sigout\(6)))) # (!\y_register|sigout\(6) & (!\x_register|sigout\(6) & !\comparator|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(6),
	datab => \x_register|sigout\(6),
	datad => VCC,
	cin => \comparator|LessThan0~11_cout\,
	cout => \comparator|LessThan0~13_cout\);

-- Location: LCCOMB_X63_Y50_N14
\comparator|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan0~14_combout\ = (\y_register|sigout\(7) & ((\comparator|LessThan0~13_cout\) # (!\x_register|sigout\(7)))) # (!\y_register|sigout\(7) & (!\x_register|sigout\(7) & \comparator|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(7),
	datab => \x_register|sigout\(7),
	cin => \comparator|LessThan0~13_cout\,
	combout => \comparator|LessThan0~14_combout\);

-- Location: LCCOMB_X62_Y50_N0
\comparator|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~1_cout\ = CARRY((\x_register|sigout\(0) & !\y_register|sigout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(0),
	datab => \y_register|sigout\(0),
	datad => VCC,
	cout => \comparator|LessThan1~1_cout\);

-- Location: LCCOMB_X62_Y50_N2
\comparator|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~3_cout\ = CARRY((\x_register|sigout\(1) & (\y_register|sigout\(1) & !\comparator|LessThan1~1_cout\)) # (!\x_register|sigout\(1) & ((\y_register|sigout\(1)) # (!\comparator|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(1),
	datab => \y_register|sigout\(1),
	datad => VCC,
	cin => \comparator|LessThan1~1_cout\,
	cout => \comparator|LessThan1~3_cout\);

-- Location: LCCOMB_X62_Y50_N4
\comparator|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~5_cout\ = CARRY((\y_register|sigout\(2) & (\x_register|sigout\(2) & !\comparator|LessThan1~3_cout\)) # (!\y_register|sigout\(2) & ((\x_register|sigout\(2)) # (!\comparator|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(2),
	datab => \x_register|sigout\(2),
	datad => VCC,
	cin => \comparator|LessThan1~3_cout\,
	cout => \comparator|LessThan1~5_cout\);

-- Location: LCCOMB_X62_Y50_N6
\comparator|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~7_cout\ = CARRY((\x_register|sigout\(3) & (\y_register|sigout\(3) & !\comparator|LessThan1~5_cout\)) # (!\x_register|sigout\(3) & ((\y_register|sigout\(3)) # (!\comparator|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(3),
	datab => \y_register|sigout\(3),
	datad => VCC,
	cin => \comparator|LessThan1~5_cout\,
	cout => \comparator|LessThan1~7_cout\);

-- Location: LCCOMB_X62_Y50_N8
\comparator|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~9_cout\ = CARRY((\x_register|sigout\(4) & ((!\comparator|LessThan1~7_cout\) # (!\y_register|sigout\(4)))) # (!\x_register|sigout\(4) & (!\y_register|sigout\(4) & !\comparator|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(4),
	datab => \y_register|sigout\(4),
	datad => VCC,
	cin => \comparator|LessThan1~7_cout\,
	cout => \comparator|LessThan1~9_cout\);

-- Location: LCCOMB_X62_Y50_N10
\comparator|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~11_cout\ = CARRY((\x_register|sigout\(5) & (\y_register|sigout\(5) & !\comparator|LessThan1~9_cout\)) # (!\x_register|sigout\(5) & ((\y_register|sigout\(5)) # (!\comparator|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \x_register|sigout\(5),
	datab => \y_register|sigout\(5),
	datad => VCC,
	cin => \comparator|LessThan1~9_cout\,
	cout => \comparator|LessThan1~11_cout\);

-- Location: LCCOMB_X62_Y50_N12
\comparator|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~13_cout\ = CARRY((\y_register|sigout\(6) & (\x_register|sigout\(6) & !\comparator|LessThan1~11_cout\)) # (!\y_register|sigout\(6) & ((\x_register|sigout\(6)) # (!\comparator|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(6),
	datab => \x_register|sigout\(6),
	datad => VCC,
	cin => \comparator|LessThan1~11_cout\,
	cout => \comparator|LessThan1~13_cout\);

-- Location: LCCOMB_X62_Y50_N14
\comparator|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|LessThan1~14_combout\ = (\y_register|sigout\(7) & (\comparator|LessThan1~13_cout\ & \x_register|sigout\(7))) # (!\y_register|sigout\(7) & ((\comparator|LessThan1~13_cout\) # (\x_register|sigout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y_register|sigout\(7),
	datad => \x_register|sigout\(7),
	cin => \comparator|LessThan1~13_cout\,
	combout => \comparator|LessThan1~14_combout\);

-- Location: LCCOMB_X61_Y50_N4
\comparator|ne~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comparator|ne~0_combout\ = (\comparator|LessThan1~14_combout\) # (\comparator|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comparator|LessThan1~14_combout\,
	datad => \comparator|LessThan0~14_combout\,
	combout => \comparator|ne~0_combout\);

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

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_x_lt_y <= \x_lt_y~output_o\;

ww_x_ne_y <= \x_ne_y~output_o\;
END structure;


