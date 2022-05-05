--------------------------------------------------------------------------------
-- Company: 
-- Engineer:		Suvraneel Bhuin
--
-- Create Date:   17:06:54 07/04/2021
-- Design Name:   
-- Module Name:   E:/VHDL_Projects/Rough_Work/Counter_UD_4bit_Synch_STRCTL/Counter_UD_SYNC_STRCTL_TB.vhd
-- Project Name:  Counter_UD_4bit_Synch_STRCTL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter_UD_SYNC_STRCTL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Counter_UD_SYNC_STRCTL_TB IS
END Counter_UD_SYNC_STRCTL_TB;
 
ARCHITECTURE behavior OF Counter_UD_SYNC_STRCTL_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter_UP_DOWN_4bit_Sync_src
    PORT(
         CLK : IN  std_logic;
         CTRL : IN  std_logic;
         SET : IN  std_logic;
         CLR : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CTRL : std_logic := '0';
   signal SET : std_logic := '0';
   signal CLR : std_logic := '0';

     --Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Counter_UP_DOWN_4bit_Sync_src PORT MAP (
          CLK => CLK,
          CTRL => CTRL,
          SET => SET,
          CLR => CLR,
          Q => Q
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
        CLK <= '0';
        wait for CLOCK_period/2;
        CLK <= '1';
        wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
      -- hold reset state for 100 ns.
      wait for 10 ns;
      -- insert stimulus here 
        CTRL <= '0';
        SET<='0';
        CLR<='1';
        wait for 10 ns;
        CLR<='0';
        wait for 160 ns;
        SET<='1';
        wait for 10 ns;
        SET <= '0';
        CTRL <= '1';
        wait for 160 ns;
   end process;

END;