----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
-- Design Name: 
-- Module Name:    Arithmetic_Unit - Behavioral 
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

entity Arithmetic_Unit is
    Port ( Cin : in STD_LOGIC;
			  A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  S : in  STD_LOGIC_VECTOR(1 downto 0);
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end Arithmetic_Unit;

architecture Structural of Arithmetic_Unit is
------------------------------------------------------4 bit Adder Component
component Adder_4bit
    Port ( Cin : in STD_LOGIC;
			  A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
------------------------------------------------------4X1 Multiplexer Component
component MUX_4X1_DF
	port(I: in std_logic_vector(0 to 3);
        S: in std_logic_vector(0 to 1);
        Y: out std_logic);
end component;
signal Bb, f : STD_LOGIC_VECTOR(3 downto 0);
begin
	Bb <= not B;
	T0: MUX_4X1_DF port map(I(0)=>B(0), I(1)=>Bb(0), I(2)=>'1', I(3)=>'0', S(0)=>S(1), S(1)=>S(0), Y=>f(0)); 	
	T1: MUX_4X1_DF port map(I(0)=>B(1), I(1)=>Bb(1), I(2)=>'1', I(3)=>'0', S(0)=>S(1), S(1)=>S(0), Y=>f(1));
	T2: MUX_4X1_DF port map(I(0)=>B(2), I(1)=>Bb(2), I(2)=>'1', I(3)=>'0', S(0)=>S(1), S(1)=>S(0), Y=>f(2));
	T3: MUX_4X1_DF port map(I(0)=>B(3), I(1)=>Bb(3), I(2)=>'1', I(3)=>'0', S(0)=>S(1), S(1)=>S(0), Y=>f(3));
	T4: Adder_4bit port map(Cin=>Cin, A=>A, B=>f, Cout=>Cout, Sum=>Sum);

end Structural;

