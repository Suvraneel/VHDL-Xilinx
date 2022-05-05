--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:34:10 07/04/2021
-- Design Name:   
-- Module Name:   E:/VHDL_Projects/Rough_Work/ALU_4bit_STRCTL/ALU_4bit_TB.vhd
-- Project Name:  ALU_4bit_STRCTL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_4bit
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
 
ENTITY ALU_4bit_TB IS
END ALU_4bit_TB;
 
ARCHITECTURE behavior OF ALU_4bit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_4bit
    PORT(
         Cin : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         Z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Cin : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Cout : std_logic;
   signal Z : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_4bit PORT MAP (
          Cin => Cin,
          A => A,
          B => B,
          S => S,
          Cout => Cout,
          Z => Z
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
      -- insert stimulus here 
		Cin<='0';
		A <= "1010";
		B <= "0100";
		S <= "0000"; -- A+B
		wait for 10 ns;
		Cin <= '1';
		S <= "0011"; -- A+1
		wait for 10 ns;
		S <= "0100";
		wait for 10 ns;
		S <= "1000";
		wait for 10 ns;
		S <= "1011";		
		wait for 10 ns; 
   end process;

END;
