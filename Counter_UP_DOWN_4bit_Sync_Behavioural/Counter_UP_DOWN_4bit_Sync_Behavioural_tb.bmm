library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sync_counter_tb is
end entity;

architecture tb of sync_counter_tb is
component updown_count is
Port ( clk,rst,updown : in STD_LOGIC;
count : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal clk, rst, updown : STD_LOGIC := '0';
signal count : STD_LOGIC_VECTOR (3 downto 0);
constant num_of_clocks : integer := 20;
signal i : integer := 0;
constant T : time := 20 ns;

begin

uut: updown_count port map(
clk => clk,
rst => rst,
updown => updown,
count => count);

process 
begin
rst <= '0';
clk <= '0';
wait for T/2;
clk <= '1';
wait for T/2;

if (i = num_of_clocks) then
wait;
else
i <= i + 1;
end if;

if (i < 10) then
updown <= '0';
else
updown <= '1';
end if;

end process;
end tb;