-- A simple AND logic gate 

-- 1. Define Library functions.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2. Declare Entity
entity and_gate is
    Port ( a: in  STD_LOGIC; -- AND gate input 
           b: in  STD_LOGIC; -- AND gate input
           c: out  STD_LOGIC); -- AND gate input
end and_gate;

-- Define Architecture & Functionality 
architecture and_Logic of and_gate is
begin
c <= a AND  b;
-- 4. End source code 
end and_logic;
-- 5. Compile & Run program 

-- Create Test Bench Code (see file:'and_gate_sim.vhdl')

-- Plug this code into the test bench code file above 
