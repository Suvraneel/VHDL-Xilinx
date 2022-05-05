----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Student(ENGG):  Siddhartha Dhar
-- 
-- Create Date:    23:22:29 05/08/2021 
-- Design Name:    Simple 2 input XNOR gate
-- Module Name:    XNOR gate 2input
-- Project Name:   SSD_DEC_STRCTL
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity xnor_gate2 is
    Port ( A8 : in  STD_LOGIC;
           A9 : in  STD_LOGIC;
           Z5 : out  STD_LOGIC);
end xnor_gate2;

architecture xnor_gate2_dflow of xnor_gate2 is

begin
	Z5 <= A8 xnor A9;
end xnor_gate2_dflow;

