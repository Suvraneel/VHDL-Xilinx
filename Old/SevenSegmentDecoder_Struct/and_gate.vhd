----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
-- Design Name: 	 AND_gate
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_gate is
    Port ( A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           Z1 : out  STD_LOGIC);
end and_gate;

architecture and_gate_comp of and_gate is
begin
	Z1 <= A1 and A2;
end and_gate_comp;

