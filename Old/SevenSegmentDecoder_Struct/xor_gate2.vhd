----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Student(ENGG):  Siddhartha Dhar
-- 
-- Create Date:    23:20:55 05/08/2021 
-- Design Name:    Simple 2 input XOR gate
-- Module Name:    XOR gate 2 input - DataFlow 
-- Project Name:   SSD_DEC_STRCTL
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity xor_gate2 is
    Port ( A6 : in  STD_LOGIC;
           A7 : in  STD_LOGIC;
           Z4 : out  STD_LOGIC);
end xor_gate2;

architecture xor_gate2_dflow of xor_gate2 is

begin
	Z4 <= A6 xor A7;
end xor_gate2_dflow;