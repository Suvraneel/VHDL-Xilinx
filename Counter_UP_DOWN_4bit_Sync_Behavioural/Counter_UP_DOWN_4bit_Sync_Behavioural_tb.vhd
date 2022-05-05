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

entity Counter_UP_DOWN_4bit_Sync_Behavioural_tb is
end entity;

architecture tb of Counter_UP_DOWN_4bit_Sync_Behavioural_tb is
component Counter_UP_DOWN_4bit_Sync_Behavioural is
    PORT(
         CLOCK : IN  std_logic;
         SET : IN  std_logic;
         CLR : IN  std_logic;
         CONTROL : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal SET : std_logic := '0';
   signal CLR : std_logic := '0';
   signal CONTROL : std_logic := '0';

     --Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Counter_UP_DOWN_4bit_Sync_Behavioural PORT MAP (
          CLOCK => CLOCK,
          SET => SET,
          CLR => CLR,
          CONTROL => CONTROL,
          Q => Q
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
        CLOCK <= '0';
        wait for CLOCK_period/2;
        CLOCK <= '1';
        wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
      -- hold reset state for 100 ns.
      wait for 10 ns;    
      -- insert stimulus here 
        SET <= '1';
        wait for 10 ns;
        SET <= '0';
        CONTROL <= '0'; --Counting Downwards Initially
        wait for 165 ns;
        CLR <= '1';
        wait for 10 ns;
        CLR <= '0';
        CONTROL <= '1'; --Counting Downwards Initially
        wait for 165 ns;
   end process;

END;
