-- Copyright (C) 1991-2008 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "12/08/2017 18:07:33"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	Block1 IS
    PORT (
	pin_b0 : OUT std_logic;
	pin_F0 : IN std_logic;
	pin_F2 : IN std_logic;
	pin_b1 : OUT std_logic;
	pin_F1 : IN std_logic;
	pin_F3 : IN std_logic
	);
END Block1;

ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_b0 : std_logic;
SIGNAL ww_pin_F0 : std_logic;
SIGNAL ww_pin_F2 : std_logic;
SIGNAL ww_pin_b1 : std_logic;
SIGNAL ww_pin_F1 : std_logic;
SIGNAL ww_pin_F3 : std_logic;
SIGNAL \pin_F0~combout\ : std_logic;
SIGNAL \pin_F2~combout\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \pin_F1~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~combout\ : std_logic;
SIGNAL \ALT_INV_pin_F0~combout\ : std_logic;
SIGNAL \ALT_INV_pin_F2~combout\ : std_logic;
SIGNAL \ALT_INV_pin_F1~combout\ : std_logic;

BEGIN

pin_b0 <= ww_pin_b0;
ww_pin_F0 <= pin_F0;
ww_pin_F2 <= pin_F2;
pin_b1 <= ww_pin_b1;
ww_pin_F1 <= pin_F1;
ww_pin_F3 <= pin_F3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;
\ALT_INV_inst2~combout\ <= NOT \inst2~combout\;
\ALT_INV_pin_F0~combout\ <= NOT \pin_F0~combout\;
\ALT_INV_pin_F2~combout\ <= NOT \pin_F2~combout\;
\ALT_INV_pin_F1~combout\ <= NOT \pin_F1~combout\;

\pin_F0~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pin_F0,
	combout => \pin_F0~combout\);

\pin_F2~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pin_F2,
	combout => \pin_F2~combout\);

inst : stratixii_lcell_comb
-- Equation(s):
-- \inst~combout\ = \pin_F2~combout\ # !\pin_F2~combout\ & ( \pin_F0~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pin_F0~combout\,
	dataf => \ALT_INV_pin_F2~combout\,
	combout => \inst~combout\);

\pin_F1~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pin_F1,
	combout => \pin_F1~combout\);

inst2 : stratixii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = \pin_F1~combout\ # !\pin_F1~combout\ & ( \pin_F0~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pin_F0~combout\,
	dataf => \ALT_INV_pin_F1~combout\,
	combout => \inst2~combout\);

\pin_b0~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_b0);

\pin_b1~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pin_b1);

\pin_F3~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_pin_F3);
END structure;


