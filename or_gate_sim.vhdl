-- VHDL Test bench Code to simulate a simple OR logic gate 
-- The Boolean expression is written as Q = A OR B.
-- The OR gate has two inputs - To output 1, 
-- either 1 or both inputs must be 1, otherwise output 0.
-- Module Name:or_gate/or_gate_sim.vhdl
-- Project Name: or_gate

/* 1. Define Library functions.*/
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2. Declare Entity and Architecture.
ENTITY or_gate_sim IS
END or_gate_sim;

ARCHITECTURE behavior OF or_gate_sim IS

-- COMPONENT Declaration for UUT
COMPONENT or_gate is
PORT(
a : in std_logic;
b: in  STD_LOGIC;
y: out  STD_LOGIC);
END COMPONENT;

signal a_in, b_in, y_out: std_logic;

constant <clock>_period : time :=10 ns;
begin

-- Instantiate UUT
uut: or_gate port map(a_in,b_in,y_out);
process 
begin 
a_in <= '0'; --input val
b_in <= '0'; -- input val 
y_out <= '0'; -- output val

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
--after sim is launched, choose 'force clock' to define
-- clock params for each object (a,b,y)
-- for signal /gate/a: leading=0,trailing=1,start=0, cancel=4us, period=2us