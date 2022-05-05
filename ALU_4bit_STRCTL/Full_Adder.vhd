----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Carry : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end Full_Adder;

architecture FULL_ADDER_DFLOW of Full_Adder is
signal t: STD_LOGIC_VECTOR(2 downto 0);
begin
	t(0) <= (A xor B);
	Sum <= (t(0) xor C);
	t(1) <= (t(0) and C);
	t(2) <= (A and B);
	Carry <= (t(1) or t(2));
end FULL_ADDER_DFLOW;