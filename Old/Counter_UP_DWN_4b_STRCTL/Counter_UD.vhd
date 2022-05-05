----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:38:56 07/04/2021 
-- Design Name: 
-- Module Name:    Counter_UD - Behavioral 
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

entity Counter_UD is
    Port ( CLOCK : in  STD_LOGIC; -- System Clock
			  SET : in STD_LOGIC;    -- Asynchronous Preset
			  CLR : in STD_LOGIC;    -- Asynchronous Clear
			  CONTROL : in STD_LOGIC; -- Control is ( UP'/DOWN )
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
			  Qb : out  STD_LOGIC_VECTOR (3 downto 0));
end Counter_UD;

architecture COUNTER_UD_ARCH of Counter_UD is
------------------------------------------JK Flip Flop component
component JK_FF
    Port ( CLOCK : in STD_LOGIC;
			  J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           SET : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end component;
-----------------------------------------Control Block Component to select the counting order (UP/DOWN)
component Control_Block
    Port ( Control : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           Qb : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;
signal F: STD_LOGIC_VECTOR(3 downto 0);
signal C: STD_LOGIC_VECTOR(3 downto 0);
signal CLK: STD_LOGIC_VECTOR(2 downto 0);
begin

	T0: JK_FF PORT MAP(CLOCK=>CLOCK, J=>'1', K=>'1', SET=>SET, CLR=>CLR, Q=>F(0), Qb=>C(0));
	T1: Control_Block PORT MAP(Control=>Control, Q=>F(0), Qb=>C(0), Y=>CLK(0));
	
	T2: JK_FF PORT MAP(CLOCK=>CLK(0), J=>'1', K=>'1', SET=>SET, CLR=>CLR, Q=>F(1), Qb=>C(1));
	T3: Control_Block PORT MAP(Control=>Control, Q=>F(1), Qb=>C(1), Y=>CLK(1));

	T4: JK_FF PORT MAP(CLOCK=>CLK(1), J=>'1', K=>'1', SET=>SET, CLR=>CLR, Q=>F(2), Qb=>C(2));
	T5: Control_Block PORT MAP(Control=>Control, Q=>F(2), Qb=>C(2), Y=>CLK(2));

	T6: JK_FF PORT MAP(CLOCK=>CLK(2), J=>'1', K=>'1', SET=>SET, CLR=>CLR, Q=>F(3), Qb=>C(3));

	Q <= F;
	Qb <= C;
end COUNTER_UD_ARCH;

