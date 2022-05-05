----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		 Suvraneel Bhuin
-- 					  T91_CSE_194032
--                 Class Roll - 19
-- Create Date:    16:20:58 07/04/2021 
-- Design Name: 
-- Module Name:    Counter_UP_DOWN_4bit_Sync_src - Behavioural 
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

entity Counter_UP_DOWN_4bit_Sync_Behavioural is
	 Port ( CLOCK : in  STD_LOGIC;
           SET : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CONTROL : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Counter_UP_DOWN_4bit_Sync_Behavioural;

architecture BEHAVIORAL of Counter_UP_DOWN_4bit_Sync_Behavioural is

signal TEMP:STD_LOGIC_VECTOR(3 downto 0):="0000";

begin
    process(CLOCK, SET, CLR)    
    begin
        if(SET='1')then
            TEMP <= "1111";
            Q <= "1111";
        elsif(CLR='1')then
            TEMP <= "0000";
            Q <= "0000";
        elsif(rising_edge(CLOCK))then -- rising edge of the clock detected
            if(CONTROL='1')then -- Control is 1 means Count Up wards
                TEMP <= TEMP+1;
            else    -------------- Control is 0 means Count Down wards
                TEMP <= TEMP-1;
            end if;
            Q <= TEMP;
        end if;    
    end process;
end BEHAVIORAL;