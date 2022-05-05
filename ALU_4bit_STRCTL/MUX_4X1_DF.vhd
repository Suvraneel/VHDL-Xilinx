----------------------------------------------------------------------------------
-- University:     University of Calcutta 
-- Engineer:       SUVRANEEL BHUIN
--  
-- Module Name:    ALU_4bit - Behavioral 
-- Design Name:    MUX_4X1_DataFlow
-- Module Name:    MUX_4X1_DF
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_4X1_DF is
	port(I: in std_logic_vector(0 to 3);
        S: in std_logic_vector(0 to 1);
        Y: out std_logic);
end MUX_4X1_DF;

architecture Dataflow of MUX_4X1_DF is
signal S0bar, S1bar, a0, a1, a2, a3: std_logic; --Signals Declerations
begin
	S0bar <= not S(0);
	S1bar <= not S(1);
	a0 <= S0bar and S1bar and I(0);
	a1 <= S0bar and S(1) and I(1);
	a2 <= S(0) and S1bar and I(2);
	a3 <= S(0) and S(1) and I(3);
	Y <= a0 or a1 or a2 or a3;
end Dataflow;