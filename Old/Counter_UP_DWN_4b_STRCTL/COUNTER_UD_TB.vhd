--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:59:03 07/04/2021
-- Design Name:   
-- Module Name:   E:/VHDL_Projects/Rough_Work/Counter_UP_DWN_4b_STRCTL/COUNTER_UD_TB.vhd
-- Project Name:  Counter_UP_DWN_4b_STRCTL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter_UD
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
 
ENTITY COUNTER_UD_TB IS
END COUNTER_UD_TB;
 
ARCHITECTURE behavior OF COUNTER_UD_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter_UD
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
   uut: Counter_UD PORT MAP (
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
      wait for 100 ns;	

      wait for CLOCK_period*10;

      -- insert stimulus here 
		Control <= '1';
		wait for CLOCK_period*10;
		Control <= '0';		
		wait for CLOCK_period*10;
		wait for CLOCK_period*10;
		SET <= '1';
		CLR <= '0';
		wait for CLOCK_period/2;
		SET <= '0';
		CLR <= '0';
		wait for CLOCK_period*10;
		SET <= '0';
		CLR <= '1';
		wait for CLOCK_period/2;
		SET <= '0';
		CLR <= '0';
		wait for CLOCK_period*10;		
   end process;

END;
