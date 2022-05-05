----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
-- Design Name: 
-- Module Name:    Adder_4bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_4bit is
    Port ( Cin : in STD_LOGIC;
			  A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end Adder_4bit;

architecture Behavioral of Adder_4bit is
component Full_Adder
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Carry : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end component;
signal Ctmp : STD_LOGIC_VECTOR(2 downto 0);
begin
	T0: Full_Adder port map(A=>A(0), B=>B(0), C=>Cin, Carry=>Ctmp(0), Sum=>Sum(0));
	T1: Full_Adder port map(A=>A(1), B=>B(1), C=>Ctmp(0), Carry=>Ctmp(1), Sum=>Sum(1));
	T2: Full_Adder port map(A=>A(2), B=>B(2), C=>Ctmp(1), Carry=>Ctmp(2), Sum=>Sum(2));
	T3: Full_Adder port map(A=>A(3), B=>B(3), C=>Ctmp(2), Carry=>Cout, Sum=>Sum(3));
end Behavioral;