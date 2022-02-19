--------------------------------------
-- Title: Simple AND Logic Gate TB in Xilinx
-- Alex Shields-Weber
--
-- Create Date: 2/18/2022
-- Module Name: es/and_gate/and_gate_sim.vhdl
-- Project Name: and_gate
-- Top-level Source Type: HDL
-- Description: VHDL Test bench code to simulate a simple AND logic gate 

-- Boolean expression AND: C = A AND B. If output_c is 1, then input_a and input_b must also be 1
-- Device:
-- Device Family: Spartan6
-- Device: XC65LX4
-- Package: TQG144
-- Speed: -3

Synthesis Tool: XST (VHDL/Verilog)
simulator: ISim (VHDL/Verilog)

/* 1. Define Library functions.*/

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2. Declare Entity and Architecture.
ENTITY and_gate_sim IS
END and_gate_sim;

ARCHITECTURE behavior OF and_gate_sim IS

-- COMPONENT Declaration for UUT
COMPONENT and_gate is
PORT(
a : in std_logic;
b: in  STD_LOGIC;
c: out  STD_LOGIC);
END COMPONENT;

--Inputs 
signal a : std_logic :='0';
signal b : std_logic :='0';

--Outputs 
signal c : std_logic;
-- No clocks detected in port list. 
-- Replace <clock> below w/ given port name

constant <clock>_period : time :=10 ns;

BEGIN

-- Instantiate UUT
uut: and_gate PORT MAP (
a => a,
b => b,
c => c
);

--clock process definitions
<clock>_process :process
begin
<clock> <= '0';
wait for <clock>_period/2;
<clock> <= '1';
wait for <clock>_period/2;
end process;

stim_proc: process
begin
-- hold reset state for 100 ns
wait for 100 ns;
wait for <clock>_period*10;

wait;
end process;

END;

-- Run 'Simulate behavioral model' 
-- system will then compile architecture behavioral of entity gate
-- simulation executable: E:/mks es/and-gate-logic/gate_isim_beh.exe

-- launch ISim simulation engine GUI for 'simulate behavioral model'
 
-- once ISim is launched, it will perform a curcuit initialization process 

-- For gate signals a and b, set appropriate clock parameters
-- to force the signal to an alterating clock (select 'force clock') 
-- for signal /gate/a define values as:  
-- leading edge=0, trailing edge=1, start=0,cancel=4us, period=2us

-- for signal /gate/b define values as:
-- leading:0, trailing:1, start:0, cancel:4us, period:4us 
--Apply changes & Run all 

