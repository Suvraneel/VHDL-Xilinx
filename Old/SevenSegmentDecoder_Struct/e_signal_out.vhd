----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 e_signal_out
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
-----------------------------------------------------------Entity Decleration
entity e_signal_out is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           e_out : out  STD_LOGIC);
end e_signal_out;
-----------------------------------------------------------Architecture Definition
architecture e_signal_out_strcl of e_signal_out is

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
signal v0, v1, v2: std_logic;
begin

	T0: inverter port map(S(2), v0);
	T1: or_gate2 port map(v0, S(1), v1);
	T2: inverter port map(S(0), v2);
	T3: and_gate2 port map(v1, v2, e_out);

end e_signal_out_strcl;

