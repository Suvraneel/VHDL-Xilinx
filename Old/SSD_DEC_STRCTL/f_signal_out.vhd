----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 f_signal_out
-- Module Name:    Seven Segment Decoder - Structural
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
----------------------------------------------------Entity Decleration
entity f_signal_out is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           f_out : out  STD_LOGIC);
end f_signal_out;
----------------------------------------------------Definition of Architecture
architecture f_signal_out_strcl of f_signal_out is

component inverter                  --not gate
    Port ( A5 : in  STD_LOGIC;
           Z3 : out  STD_LOGIC);
end component;

component or_gate2                  --2 input OR gate
    Port ( A3, A4 : in  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end component;

component and_gate2                 --2 input AND gate
    Port ( A1, A2 : in  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end component;
signal v0, v1, v2, v3, v4, v5, v6, v7: std_logic;
begin

	T0: inverter port map(S(0), v0);
	T1: inverter port map(S(1), v1);
	T2: or_gate2 port map(v0, v1, v2);
	T3: and_gate2 port map(v2, S(2), v3);
	T4: and_gate2 port map(v0, v1, v4);
	T5: or_gate2 port map(v4, v3, v5);
	T6: or_gate2 port map(v5, S(3), f_out);

end f_signal_out_strcl;

