----------------------------------------------------------------------------------
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 03/07/2021 
-- Design Name: 	 4 X 1 Multiplexer - Dataflow Model
-- Module Name:    mux4x1_dataflow_src - Dataflow
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Dependencies: 
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

entity mux4x1_dataflow_src is
	-- I/O ports
	port(A: in STD_LOGIC_VECTOR(0 to 3);
        S: in STD_LOGIC_VECTOR(0 to 1);
        Y: out STD_LOGIC);
end mux4x1_dataflow_src;
architecture Dataflow of mux4x1_dataflow_src is
signal notS0, notS1, I0, I1, I2, I3: STD_LOGIC;
begin
	notS0 <= not S(0);
	notS1 <= not S(1);
	I0 <= notS0 and notS1 and A(0);
	I1 <= notS0 and S(1) and A(1);
	I2 <= S(0) and notS1 and A(2);
	I3 <= S(0) and S(1) and A(3);
	Y <= I0 or I1 or I2 or I3;
end Dataflow;