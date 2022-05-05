----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Student(ENGG):  Siddhartha Dhar
-- 
-- Create Date:    23:13:55 05/08/2021 
-- Design Name:    Simple 1 input NOT gate
-- Module Name:    inverter - DataFlow 
-- Project Name:   SSD_DEC_STRCTL
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inverter is
    Port ( A5 : in  STD_LOGIC;
           Z3 : out  STD_LOGIC);
end inverter;

architecture inv_dflow of inverter is

begin
	Z3 <= not A5;
end inv_dflow;