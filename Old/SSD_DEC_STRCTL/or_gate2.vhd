----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Student(ENGG):  Siddhartha Dhar
-- 
-- Create Date:    23:10:20 05/08/2021 
-- Design Name:    Simple 2 input AND gate
-- Module Name:    or_gate2 - DataFlow 
-- Project Name:   SSD_DEC_STRCTL
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity or_gate2 is
    Port ( A3 : in  STD_LOGIC;
           A4 : in  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end or_gate2;

architecture or_gate_dflow of or_gate2 is

begin
	Z2 <= A3 or A4;
end or_gate_dflow;