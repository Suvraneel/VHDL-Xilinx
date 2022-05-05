----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
--  
-- Design Name: 
-- Module Name:    BUS_MUX_4X1 - Behavioral 
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

entity BUS_MUX_4X1 is
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);  -- First Input 4bit Bus
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Second Input 4bit Bus
           I2 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Third Input 4bit Bus
           I3 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Fourth Input 4bit Bus
           S : in  STD_LOGIC_VECTOR(1 downto 0);   -- Select Lines
           Y : out  STD_LOGIC_VECTOR (3 downto 0)); -- Output 4bit Bus
end BUS_MUX_4X1;

architecture Behavioral of BUS_MUX_4X1 is
begin

process(S, I0, I1, I2, I3)
begin
		if(S="00")then
			Y <= I0;
		elsif(S="01")then
			Y <= I1;
		elsif(S="10")then
			Y <= I2;
		else
			Y <= I3;
		end if;
end process;

end Behavioral;