----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:51 05/13/2021 
-- Design Name: 
-- Module Name:    SYNC_4C - Behavioral 
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


entity UpCounter4 is
    Port ( D : inout  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC);
end UpCounter4;

architecture Behavioral of UpCounter4 is
begin

    process(CLK, RST) --------------process definition
    begin
        if(RST = '1')then
           D <= "0000";
        elsif(CLK = '1') then
            D <= D+1;
        end if;
    end process;

end Behavioral;