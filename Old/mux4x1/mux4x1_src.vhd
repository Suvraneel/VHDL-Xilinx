----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:10 05/05/2021 
-- Design Name: 
-- Module Name:    mux4x1_src - Behavioral 
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

entity mux4x1_src is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux4x1_src;

architecture Behavioral of mux4x1_src is
begin
process(a, b, c, d, s0, s1)
begin
if (s0='0' and s1='0') then
	y <= a;
elsif (s0='0' and s1='1') then
	y <= b;
elsif (s0='1' and s1='0') then
	y <= c;
elsif (s0='1' and s1='1') then
	y <= d;
else
	y <= 'Z';
end if;
end process;
end Behavioral;

