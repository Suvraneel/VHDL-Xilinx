--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:12:32 07/04/2021
-- Design Name:   
-- Module Name:   C:/Users/suvra/OneDrive/Desktop/Competitive Programming/UCSTA/VHDL Xilinx/Seven_segment_decoder_Struct/SevenSegmentDecoder_struct_tb.vhd
-- Project Name:  Seven_segment_decoder_Struct
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SevenSegmentDecoder_Struct
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
 
ENTITY SevenSegmentDecoder_struct_tb IS
END SevenSegmentDecoder_struct_tb;
 
ARCHITECTURE behavior OF SevenSegmentDecoder_struct_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SevenSegmentDecoder_Struct
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;
   signal g : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SevenSegmentDecoder_Struct PORT MAP (
          I => I,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g
        );


   -- Stimulus process
   stim_proc: process
   begin		
-- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                I <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                I <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                I <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                I <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                I <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                I <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                I <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                I <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                I <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                I <= "0000";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                I <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                WAIT FOR 100 ns;

   end process;

END;
