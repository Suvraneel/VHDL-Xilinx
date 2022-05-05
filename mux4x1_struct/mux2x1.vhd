----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		Suvraneel Bhuin
-- 					T91/CSE/194032
--						Class Roll: 19
-- Create Date:    19:02:07 05/07/2021 
-- Design Name: 
-- Module Name:    mux2x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2x1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           x : out  STD_LOGIC);
end mux2x1;

architecture mux2x1_arch of mux2x1 is

begin
x <= (a and (not s)) or (b and s);
end mux2x1_arch;

