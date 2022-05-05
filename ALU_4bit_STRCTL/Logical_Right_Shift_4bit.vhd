----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
--  
-- Module Name:    Logical_Left_Shift_4bit - Behavioral 
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

entity Logical_Right_Shift_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end Logical_Right_Shift_4bit;

architecture LRS_4_DFLOW of Logical_Right_Shift_4bit is
Signal f: STD_LOGIC_VECTOR(3 downto 0);
begin
	f(0)<=A(1);
	f(1)<=A(2);
	f(2)<=A(3);
	f(3)<='0'; -- 0 inserted from the Right side
	Y <= f;
end LRS_4_DFLOW;