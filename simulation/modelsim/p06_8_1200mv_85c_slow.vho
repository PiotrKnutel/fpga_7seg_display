-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/03/2022 09:39:57"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	p06 IS
    PORT (
	full : OUT std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	button3 : IN std_logic;
	empty : OUT std_logic;
	cyfry : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	jed : OUT std_logic_vector(7 DOWNTO 0);
	WY1 : OUT std_logic_vector(3 DOWNTO 0);
	CKL1 : IN std_logic
	);
END p06;

-- Design Ports Information
-- full	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cyfry[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cyfry[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cyfry[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cyfry[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jed[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WY1[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WY1[2]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WY1[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WY1[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button3	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CKL1	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF p06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_button3 : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_cyfry : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_jed : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WY1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CKL1 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CKL1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \full~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \cyfry[3]~output_o\ : std_logic;
SIGNAL \cyfry[2]~output_o\ : std_logic;
SIGNAL \cyfry[1]~output_o\ : std_logic;
SIGNAL \cyfry[0]~output_o\ : std_logic;
SIGNAL \jed[7]~output_o\ : std_logic;
SIGNAL \jed[6]~output_o\ : std_logic;
SIGNAL \jed[5]~output_o\ : std_logic;
SIGNAL \jed[4]~output_o\ : std_logic;
SIGNAL \jed[3]~output_o\ : std_logic;
SIGNAL \jed[2]~output_o\ : std_logic;
SIGNAL \jed[1]~output_o\ : std_logic;
SIGNAL \jed[0]~output_o\ : std_logic;
SIGNAL \WY1[3]~output_o\ : std_logic;
SIGNAL \WY1[2]~output_o\ : std_logic;
SIGNAL \WY1[1]~output_o\ : std_logic;
SIGNAL \WY1[0]~output_o\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \button1~inputclkctrl_outclk\ : std_logic;
SIGNAL \button3~input_o\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \inst2|count[0]~5_combout\ : std_logic;
SIGNAL \button2~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|count~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|f_full~0_combout\ : std_logic;
SIGNAL \inst2|f_full~q\ : std_logic;
SIGNAL \inst2|f_empt~0_combout\ : std_logic;
SIGNAL \inst2|f_empt~q\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst7|Mux2~2_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[4]~2_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \CKL1~input_o\ : std_logic;
SIGNAL \CKL1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst8|Mux2~2_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_button1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|ALT_INV__~0_combout\ : std_logic;

BEGIN

full <= ww_full;
ww_button1 <= button1;
ww_button2 <= button2;
ww_button3 <= button3;
empty <= ww_empty;
cyfry <= ww_cyfry;
ww_CLK <= CLK;
jed <= ww_jed;
WY1 <= ww_WY1;
ww_CKL1 <= CKL1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\CKL1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CKL1~input_o\);

\button1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \button1~input_o\);

\button2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \button2~input_o\);
\ALT_INV_button1~inputclkctrl_outclk\ <= NOT \button1~inputclkctrl_outclk\;
\inst8|ALT_INV_Mux3~0_combout\ <= NOT \inst8|Mux3~0_combout\;
\inst5|LPM_MUX_component|auto_generated|ALT_INV__~0_combout\ <= NOT \inst5|LPM_MUX_component|auto_generated|_~0_combout\;

-- Location: IOOBUF_X34_Y9_N2
\full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|f_full~q\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|f_empt~q\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\cyfry[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cyfry[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\cyfry[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \cyfry[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\cyfry[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \cyfry[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\cyfry[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|ALT_INV__~0_combout\,
	devoe => ww_devoe,
	o => \cyfry[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\jed[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \jed[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\jed[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	devoe => ww_devoe,
	o => \jed[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\jed[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[5]~1_combout\,
	devoe => ww_devoe,
	o => \jed[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\jed[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[4]~2_combout\,
	devoe => ww_devoe,
	o => \jed[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\jed[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \jed[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\jed[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[2]~4_combout\,
	devoe => ww_devoe,
	o => \jed[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\jed[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	devoe => ww_devoe,
	o => \jed[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\jed[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	devoe => ww_devoe,
	o => \jed[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\WY1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \WY1[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\WY1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \WY1[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\WY1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \WY1[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\WY1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \WY1[0]~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\button1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: CLKCTRL_G8
\button1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \button1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \button1~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N8
\button3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button3,
	o => \button3~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\button2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LCCOMB_X22_Y16_N6
\inst2|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[0]~5_combout\ = !\inst2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(0),
	combout => \inst2|count[0]~5_combout\);

-- Location: CLKCTRL_G6
\button2~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \button2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \button2~inputclkctrl_outclk\);

-- Location: FF_X22_Y16_N7
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|count[0]~5_combout\,
	clrn => \button2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X22_Y16_N12
\inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|count\(1) $ (\inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|count\(1),
	datad => \inst2|count\(0),
	combout => \inst2|Add1~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (\button3~input_o\ & (\inst2|count\(1) & (\inst2|count\(2) & \inst2|count\(0)))) # (!\button3~input_o\ & ((\inst2|count\(1)) # ((\inst2|count\(2)) # (\inst2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~input_o\,
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(0),
	combout => \inst2|count~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\inst2|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (\button3~input_o\ & (!\inst2|Equal0~0_combout\ & (\inst2|count\(3) $ (\inst2|count~0_combout\)))) # (!\button3~input_o\ & ((\inst2|count\(3) $ (!\inst2|count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~input_o\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|count\(3),
	datad => \inst2|count~0_combout\,
	combout => \inst2|count~1_combout\);

-- Location: FF_X22_Y16_N17
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|count~1_combout\,
	clrn => \button2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X22_Y16_N10
\inst2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (\button3~input_o\ & ((!\inst2|count\(0)) # (!\inst2|count\(1)))) # (!\button3~input_o\ & ((\inst2|count\(1)) # (\inst2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~input_o\,
	datac => \inst2|count\(1),
	datad => \inst2|count\(0),
	combout => \inst2|count~2_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst2|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (\inst2|count\(2) & (((\inst2|count~2_combout\)))) # (!\inst2|count\(2) & (!\inst2|count~2_combout\ & ((\inst2|count\(0)) # (\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(3),
	datac => \inst2|count\(2),
	datad => \inst2|count~2_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X22_Y16_N15
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|count~3_combout\,
	clrn => \button2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X22_Y16_N2
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst2|count\(0) & (!\inst2|count\(1) & (!\inst2|count\(2) & !\inst2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst2|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (\inst2|Add1~0_combout\ & (\button3~input_o\ & (!\inst2|Equal0~0_combout\))) # (!\inst2|Add1~0_combout\ & (!\button3~input_o\ & ((!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~0_combout\,
	datab => \button3~input_o\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst2|count~4_combout\);

-- Location: FF_X22_Y16_N5
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|count~4_combout\,
	clrn => \button2~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X22_Y16_N8
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|count\(0) & (!\inst2|count\(1) & (!\inst2|count\(2) & \inst2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst2|f_full~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|f_full~0_combout\ = (\button3~input_o\ & ((\button2~input_o\ & ((!\inst2|Equal0~0_combout\))) # (!\button2~input_o\ & (\inst2|f_full~q\)))) # (!\button3~input_o\ & (((\inst2|f_full~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~input_o\,
	datab => \button2~input_o\,
	datac => \inst2|f_full~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|f_full~0_combout\);

-- Location: FF_X22_Y16_N25
\inst2|f_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|f_full~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|f_full~q\);

-- Location: LCCOMB_X22_Y16_N18
\inst2|f_empt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|f_empt~0_combout\ = (\button3~input_o\ & (((\inst2|f_empt~q\)))) # (!\button3~input_o\ & ((\button2~input_o\ & ((!\inst|Equal0~0_combout\))) # (!\button2~input_o\ & (\inst2|f_empt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button3~input_o\,
	datab => \button2~input_o\,
	datac => \inst2|f_empt~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst2|f_empt~0_combout\);

-- Location: FF_X22_Y16_N19
\inst2|f_empt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_button1~inputclkctrl_outclk\,
	d => \inst2|f_empt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|f_empt~q\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y23_N22
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X12_Y23_N23
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X12_Y23_N24
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ $ (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\);

-- Location: FF_X12_Y23_N25
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X11_Y23_N24
\inst7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y23_N10
\inst7|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~1_combout\ = (!\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst7|Mux2~1_combout\);

-- Location: LCCOMB_X11_Y23_N12
\inst7|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~2_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst7|Mux2~2_combout\);

-- Location: LCCOMB_X12_Y23_N0
\inst5|LPM_MUX_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|_~0_combout\ = (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X18_Y23_N0
\inst5|LPM_MUX_component|auto_generated|result_node[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ = (\inst2|count\(1) & ((\inst2|count\(3)) # ((\inst2|count\(2) & \inst2|count\(0))))) # (!\inst2|count\(1) & (\inst2|count\(2) $ (((!\inst2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[6]~0_combout\);

-- Location: LCCOMB_X18_Y23_N10
\inst5|LPM_MUX_component|auto_generated|result_node[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ = (\inst2|count\(2) & ((\inst2|count\(3)) # ((\inst2|count\(1) & \inst2|count\(0))))) # (!\inst2|count\(2) & ((\inst2|count\(1)) # ((\inst2|count\(0) & !\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X18_Y23_N12
\inst5|LPM_MUX_component|auto_generated|result_node[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[4]~2_combout\ = (\inst2|count\(0)) # ((\inst2|count\(1) & ((\inst2|count\(3)))) # (!\inst2|count\(1) & (\inst2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[4]~2_combout\);

-- Location: LCCOMB_X18_Y23_N26
\inst5|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\inst2|count\(1) & ((\inst2|count\(3)) # ((\inst2|count\(2) & \inst2|count\(0))))) # (!\inst2|count\(1) & (\inst2|count\(2) $ (((\inst2|count\(0) & !\inst2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y23_N24
\inst5|LPM_MUX_component|auto_generated|result_node[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ = (\inst2|count\(2) & (((\inst2|count\(3))))) # (!\inst2|count\(2) & (\inst2|count\(1) & ((\inst2|count\(3)) # (!\inst2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X18_Y23_N2
\inst5|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\inst2|count\(2) & ((\inst2|count\(3)) # (\inst2|count\(1) $ (\inst2|count\(0))))) # (!\inst2|count\(2) & (\inst2|count\(1) & ((\inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y23_N8
\inst5|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst2|count\(1) & (((\inst2|count\(3))))) # (!\inst2|count\(1) & (\inst2|count\(2) $ (((\inst2|count\(0) & !\inst2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datab => \inst2|count\(2),
	datac => \inst2|count\(0),
	datad => \inst2|count\(3),
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: IOIBUF_X34_Y12_N1
\CKL1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CKL1,
	o => \CKL1~input_o\);

-- Location: CLKCTRL_G9
\CKL1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CKL1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CKL1~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y23_N0
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X1_Y23_N1
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CKL1~inputclkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y23_N2
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ $ (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\);

-- Location: FF_X1_Y23_N3
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CKL1~inputclkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y23_N12
\inst8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\inst8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y23_N16
\inst8|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~2_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst8|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y23_N22
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst8|Mux3~0_combout\);

ww_full <= \full~output_o\;

ww_empty <= \empty~output_o\;

ww_cyfry(3) <= \cyfry[3]~output_o\;

ww_cyfry(2) <= \cyfry[2]~output_o\;

ww_cyfry(1) <= \cyfry[1]~output_o\;

ww_cyfry(0) <= \cyfry[0]~output_o\;

ww_jed(7) <= \jed[7]~output_o\;

ww_jed(6) <= \jed[6]~output_o\;

ww_jed(5) <= \jed[5]~output_o\;

ww_jed(4) <= \jed[4]~output_o\;

ww_jed(3) <= \jed[3]~output_o\;

ww_jed(2) <= \jed[2]~output_o\;

ww_jed(1) <= \jed[1]~output_o\;

ww_jed(0) <= \jed[0]~output_o\;

ww_WY1(3) <= \WY1[3]~output_o\;

ww_WY1(2) <= \WY1[2]~output_o\;

ww_WY1(1) <= \WY1[1]~output_o\;

ww_WY1(0) <= \WY1[0]~output_o\;
END structure;


