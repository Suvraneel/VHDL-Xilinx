----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 d_signal_out
-- Module Name:    Seven Segment Decoder - Structural
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------------------------Entity Decleration
entity d_signal_out is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           d_out : out  STD_LOGIC);
end d_signal_out;
------------------------------------------------------Architecture Definition
architecture d_signal_out_strcl of d_signal_out is

component inverter                  --not gate
    Port ( A5 : in  STD_LOGIC;
           Z3 : out  STD_LOGIC);
end component;

component or_gate2                  --2 input OR gate
    Port ( A3, A4 : in  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end component;

component xor_gate2                 --2 input xor gate
    Port ( A6, A7 : in  STD_LOGIC;
           Z4 : out  STD_LOGIC);	
end component;

component and_gate2                 --2 input AND gate
    Port ( A1, A2 : in  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end component;
signal v0, v1, v2, v3, v4: std_logic;
begin

	T0: inverter port map(S(0), v0);
	T1: or_gate2 port map(v0, S(1), v1);
	T2: xor_gate2 port map(v1, S(2), v2);
	T3: and_gate2 port map(v0, S(1), v3);
	T4: or_gate2 port map(v2, v3, v4);
	T5: or_gate2 port map(v4, S(3), d_out);

end d_signal_out_strcl;

