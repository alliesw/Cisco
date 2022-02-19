-- Simple OR logic gate code 
-- y = a OR b

-- 1. Define Library functions.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 2. Declare Entity 
entity or_gate is
    Port ( a: in  STD_LOGIC; -- OR gate input
           b: in  STD_LOGIC; -- OR gate input
           c: out  STD_LOGIC); -- OR gate input
end or_gate;
-- Define Architecture & functionality
architecture or_logic of or_gate is
begin
y <= a OR b;
-- 4. End source code  
end or_logic;
-- 5. Compile & Run program 

-- Create Test Bench Code (see file:'or_gate_sim.vhdl')

-- Plug this code into the test bench code file above 
