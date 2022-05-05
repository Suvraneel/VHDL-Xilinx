----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		 Suvraneel Bhuin
-- 					 T91/CSE/194032
--						 Class Roll: 19
-- Create Date:    01:50:38 07/05/2021 
-- Design Name: 
-- Module Name:    Traffic_Light_src - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Traffic_Light_src is
    Port ( CLOCK : in  STD_LOGIC;
           ManualRed : in  STD_LOGIC;
           ManualGreen : in  STD_LOGIC;
           Red : out  STD_LOGIC;
           Yellow : out  STD_LOGIC;
           Green : out  STD_LOGIC);
end entity;

architecture Behavioral of Traffic_Light_src is
Signal Counter: STD_LOGIC_VECTOR(4 downto 0) := "00000";
begin
    process(CLOCK, ManualRed, ManualGreen, Counter)
    begin
        if(ManualRed='1')then -- Manually Set the Traffic Signal to Red
            Red <= '1';
            Yellow <= '0';
            Green <= '0';
            Counter <= "00000";  -- Force the counter to Initiate Red
        elsif(ManualGreen='1')then -- Manually Set the Traffic Signal to Green
            Green <= '1';
            Yellow <= '0';
            Red <= '0';
            Counter <= "01111"; -- Force the counter to Initiate Green
        elsif(Counter="00000")then -- If counter is 0 then set it to Red
            Red <= '1';
            Yellow <= '0';
            Green <= '0';
            Counter <= Counter+1;
        elsif(Counter="01000" or Counter="11000")then -- If counter is 8 or 24 then set it to Yellow
            Red <= '0';
            Yellow <= '1';
            Green <= '0';
            Counter <= Counter+1;
        elsif(Counter="01111" )then -- If counter is 15 then set it to green
            Red <= '0';
            Yellow <= '0';
            Green <= '1';
            Counter <= Counter+1;            
        elsif(rising_edge(CLOCK))then -- Increment the Counter
            Counter <= Counter+1;
        end if;
    end process;

end Behavioral;