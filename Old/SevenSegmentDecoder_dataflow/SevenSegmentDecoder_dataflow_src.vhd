----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 07/05/2021 
-- Design Name:	   Seven Segment Decoder - Dataflow
-- Module Name:    Seven Segment Decoder - Dataflow
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

entity SevenSegmentDecoder_dataflow_src is
    Port ( A : in  STD_LOGIC;
			  B : in  STD_LOGIC;
			  C : in  STD_LOGIC;
			  D : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR(6 downto 0));
end SevenSegmentDecoder_dataflow_src;

architecture Dataflow of SevenSegmentDecoder_dataflow_src is

begin

Y(0) <= (B and D) or ((not B) or (not D)) or A or C;
Y(1) <= (not B) or ((not C) and (not D)) or (C and D);
Y(2) <= (not C) or D or B;
Y(3) <= ((not B)and(not D)) or ((not B) and C) or (B and(not C) and D) or (C and (not D)) or A;
Y(4) <= ((not B)and(not D)) or (C and (not D));
Y(5) <= ((not C)and(not D)) or (B and(not C)) or (B and(not D)) or A;
Y(6) <= (C and(not B)) or (B and(not C)) or A or (B and(not D));

end Dataflow;

