----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 b_signal_out
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
entity b_signal_out is
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           b_out : out  STD_LOGIC);
end b_signal_out;
-----------------------------------------------------------Architecture Definition
architecture b_signal_out_strcl of b_signal_out is

component inverter                  --not gate
    Port ( A5 : in  STD_LOGIC;
           Z3 : out  STD_LOGIC);
end component;

component or_gate2                  --2 input OR gate
    Port ( A3, A4 : in  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end component;

component xnor_gate2
    Port ( A8, A9 : in  STD_LOGIC;  --2 input XNOR gate
           Z5 : out  STD_LOGIC);
end component;
signal v0, v1: std_logic;
begin                                     

	T0: xnor_gate2 port map(S(1), S(0), v0);
	T1: inverter port map(S(2), v1);
	T3: or_gate2 port map(v0, v1, b_out);

end b_signal_out_strcl;

