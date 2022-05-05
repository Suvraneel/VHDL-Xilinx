----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
-- Design Name: 
-- Module Name:    Arithmetic_Left_Shift_4bit - Behavioral 
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

entity Arithmetic_Right_Shift_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end Arithmetic_Right_Shift_4bit;

architecture ARTH_R_SHFT_DFLOW of Arithmetic_Right_Shift_4bit is
signal f: STD_LOGIC_VECTOR(3 downto 0);
begin
	f(3) <= A(3);
	f(2) <= A(3);
	f(1) <= A(2);
	f(0) <= A(1);
	Y <= f;
end ARTH_R_SHFT_DFLOW;