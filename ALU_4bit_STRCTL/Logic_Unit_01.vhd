----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
--  
-- Module Name:    Logic_Unit_01 - Behavioral 
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

entity Logic_Unit_01 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);  -- First Input 4bit Bus
           B : in  STD_LOGIC_VECTOR (3 downto 0);  -- Second Input 4bit Bus
           S : in  STD_LOGIC_VECTOR(1 downto 0);   -- Select Lines
           Y : out  STD_LOGIC_VECTOR (3 downto 0)); -- Output 4bit Bus
end Logic_Unit_01;

architecture Behavioral of Logic_Unit_01 is
-----------------------------------------------4 bit Bus Multiplexer
component BUS_MUX_4X1
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);  -- First Input 4bit Bus
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Second Input 4bit Bus
           I2 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Third Input 4bit Bus
           I3 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Fourth Input 4bit Bus
           S : in  STD_LOGIC_VECTOR(1 downto 0);   -- Select Lines
           Y : out  STD_LOGIC_VECTOR (3 downto 0)); -- Output 4bit Bus
end component;
signal Annd, Orr, Xoor, Noot: STD_LOGIC_VECTOR(3 downto 0);
begin
	Annd <= (A and B);
	Orr <= (A or B);
	Xoor <= (A xor B);
	Noot <= (not A);
	T0: BUS_MUX_4X1 port map(I0=>Annd, I1=>Orr, I2=>Xoor, I3=>Noot, S=>S, Y=>Y);
end Behavioral;