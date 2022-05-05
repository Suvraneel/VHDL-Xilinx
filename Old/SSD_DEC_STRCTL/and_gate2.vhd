----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Student(ENGG):  Siddhartha Dhar
-- 
-- Create Date:    23:07:35 05/08/2021 
-- Design Name:    Simple 2 input AND gate
-- Module Name:    and_gate2 - DataFlow 
-- Project Name:   SSD_DEC_STRCTL
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity and_gate2 is
    Port ( A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end and_gate2;

architecture and_gate2_dflow of and_gate2 is

begin
	Z1 <= A1 and A2;
end and_gate2_dflow;