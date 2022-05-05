--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : sync_counter_tb.vhw
-- /___/   /\     Timestamp : Thu May 13 16:33:01 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: sync_counter_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY sync_counter_tb IS
END sync_counter_tb;

ARCHITECTURE testbench_arch OF sync_counter_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT SYNC_4C
        PORT (
            D : InOut std_logic_vector (3 DownTo 0);
            CLK : In std_logic;
            RST : In std_logic
        );
    END COMPONENT;

    SIGNAL D : std_logic_vector (3 DownTo 0) := "ZZZZ";
    SIGNAL CLK : std_logic := '0';
    SIGNAL RST : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : SYNC_4C
        PORT MAP (
            D => D,
            CLK => CLK,
            RST => RST
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                RST <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 200 ns;
                RST <= '0';
                -- -------------------------------------
                WAIT FOR 3815 ns;

            END PROCESS;

    END testbench_arch;

