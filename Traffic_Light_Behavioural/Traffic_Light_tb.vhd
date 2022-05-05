--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		Suvraneel Bhuin
-- 					T91/CSE/194032
--						Class Roll: 19
-- Create Date:   01:53:24 07/05/2021
-- Design Name:   
-- Module Name:   C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/Traffic_Light_Behavioural/Traffic_Light_tb.vhd
-- Project Name:  Traffic_Light_Behavioural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Traffic_Light_src
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
 
ENTITY Traffic_Signal_TB IS
END Traffic_Signal_TB;
 
ARCHITECTURE behavior OF Traffic_Signal_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Traffic_Light_src
    PORT(
         CLOCK : IN  std_logic;
         ManualRed : IN  std_logic;
         ManualGreen : IN  std_logic;
         Red : OUT  std_logic;
         Yellow : OUT  std_logic;
         Green : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal ManualRed : std_logic := '0';
   signal ManualGreen : std_logic := '0';

     --Outputs
   signal Red : std_logic;
   signal Yellow : std_logic;
   signal Green : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Traffic_Light_src PORT MAP (
          CLOCK => CLOCK,
          ManualRed => ManualRed,
          ManualGreen => ManualGreen,
          Red => Red,
          Yellow => Yellow,
          Green => Green
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
        ManualRed <= '0';
        ManualGreen <= '0';
        wait for 200 ns;
        ManualRed <= '1';
        wait for 10 ns;
        ManualRed <= '0';
        wait for 200 ns;
        ManualGreen <= '1';
        wait for 10 ns;
        ManualGreen <= '0';
        wait for 200 ns;
   end process;

END;
