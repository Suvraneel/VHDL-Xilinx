----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:01 07/04/2021 
-- Design Name: 
-- Module Name:    Control_Block - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control_Block is
    Port ( Control : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           Qb : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Control_Block;

architecture Behavioral of Control_Block is
signal a, b, cinv: STD_LOGIC;
begin
	cinv <= not Control;
	a <= (Q and Control);
	b <= (Qb and cinv);
	Y <= (a or b);
end Behavioral;