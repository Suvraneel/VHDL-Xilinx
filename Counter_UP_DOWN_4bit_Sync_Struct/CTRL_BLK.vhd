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

entity CTRL_BLK is
     Port (ModeQ : in  STD_LOGIC;
           ModeQb : in STD_LOGIC;
           Q : in  STD_LOGIC;
           Qb : in  STD_LOGIC;
           A1 : out STD_LOGIC;
           A2 : out STD_LOGIC;
           Y : out  STD_LOGIC);
end CTRL_BLK;

architecture Behavioral of CTRL_BLK is
signal a, b: STD_LOGIC;
begin
    a <= (Q and ModeQ);
    b <= (Qb and ModeQb);
    A1 <= a;
    A2 <= b;
    Y <= (a or b);
end Behavioral;