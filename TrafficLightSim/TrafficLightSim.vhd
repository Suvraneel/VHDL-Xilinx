----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:47:31 07/03/2021 
-- Design Name: 
-- Module Name:    TrafficLightSim - Behavioral 
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
use
IEEE.STD_LOGIC_UNSIGNED.ALL;
entity traffic_light is
port(sensor,clock:in std_logic;
red_light,green_light,yellow_light:out
std_logic);
end traffic_light;
architecture fsm of traffic_light is
type t_state is (red,green,yellow);
signal ps,ns:t_state;
begin

c1: process(ps,sensor)
begin
case ps is
when green=>
ns<=yellow;
red_light<='0';
green_light<='1';
yellow_light<='0';
when red=>
red_light<='1';
green_light<='0';
yellow_light<='0';
if(sensor='1') then
ns<=green;
else
ns<=red;
end if;
when yellow=>
red_light<='0';
green_light<='0';
yellow_light<='1';
ns<=red;
end case;
end process;
c2: process
begin
wait until clock'event and clock='1';
ps<=ns;
end process;
end fsm;