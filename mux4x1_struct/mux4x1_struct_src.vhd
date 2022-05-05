----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:44 05/06/2021 
-- Design Name: 
-- Module Name:    mux4x1_struct_src - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1_struct_src is
    Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           y : out  STD_LOGIC);
end mux4x1_struct_src;

architecture Structural of mux4x1_struct_src is

component mux2x1 is
	Port (  a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
			  x : out  STD_LOGIC);
	end component;

Signal p, q: STD_LOGIC;
begin

Mux1: Mux2x1 Port map(a(0), a(1), s(0), p);
Mux2: Mux2x1 Port map(a(2), a(3), s(0), q);
Mux3: Mux2x1 Port map(p , q, s(1), y);

end Structural;

