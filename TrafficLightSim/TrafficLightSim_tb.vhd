--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:55 07/03/2021
-- Design Name:   
-- Module Name:   C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/TrafficLightSim/TrafficLightSim_tb.vhd
-- Project Name:  TrafficLightSim
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: traffic_light
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
 
ENTITY TrafficLightSim_tb IS
END TrafficLightSim_tb;
 
ARCHITECTURE behavior OF TrafficLightSim_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT traffic_light
    PORT(
         sensor : IN  std_logic;
         clock : IN  std_logic;
         red_light : OUT  std_logic;
         green_light : OUT  std_logic;
         yellow_light : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sensor : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal red_light : std_logic;
   signal green_light : std_logic;
   signal yellow_light : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: traffic_light PORT MAP (
          sensor => sensor,
          clock => clock,
          red_light => red_light,
          green_light => green_light,
          yellow_light => yellow_light
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      sensor <= '0';
		wait for clock_period;
		sensor <= '1';
		wait for clock_period;
   end process;

END;
