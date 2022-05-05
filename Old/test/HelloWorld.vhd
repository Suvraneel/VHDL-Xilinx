----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:30 05/05/2021 
-- Design Name: 
-- Module Name:    HelloWorld - Behavioral 
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

entity HelloWorld is
    Port ( A : in  STD_LOGIC_VECTOR (0 downto 0);
           B : in  STD_LOGIC_VECTOR (0 downto 0);
           Y : out  STD_LOGIC_VECTOR (0 downto 0));
end HelloWorld;

architecture Behavioral of HelloWorld is

begin
Y <= A and B; 

end Behavioral;

