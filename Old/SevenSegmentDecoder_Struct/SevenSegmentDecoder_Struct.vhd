----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 g_signal_out
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
entity SevenSegmentDecoder_Struct is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
           e : out  STD_LOGIC;
           f : out  STD_LOGIC;
           g : out  STD_LOGIC);
end SevenSegmentDecoder_Struct;
------------------------------------------------------Definition of Architecture
architecture Structural of SevenSegmentDecoder_Struct is

component a_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           a_out : out  STD_LOGIC);
end component;

component b_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           b_out : out  STD_LOGIC);
end component;

component c_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           c_out : out  STD_LOGIC);
end component;

component d_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           d_out : out  STD_LOGIC);
end component;

component e_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           e_out : out  STD_LOGIC);
end component;

component f_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           f_out : out  STD_LOGIC);
end component;

component g_signal_out
    Port ( S : in  STD_LOGIC_VECTOR (3 downto 0);
           g_out : out  STD_LOGIC);
end component;

begin

	T0: a_signal_out port map(I, a);
	T1: b_signal_out port map(I, b);
	T2: c_signal_out port map(I, c);
	T3: d_signal_out port map(I, d);
	T4: e_signal_out port map(I, e);
	T5: f_signal_out port map(I, f);
	T6: g_signal_out port map(I, g);
	
end Structural;

