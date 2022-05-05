--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : alpha_tb.vhw
-- /___/   /\     Timestamp : Wed May 05 12:52:56 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: alpha_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY alpha_tb IS
END alpha_tb;

ARCHITECTURE testbench_arch OF alpha_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT alpha_src
        PORT (
            a : In std_logic;
            b : In std_logic;
            c : Out std_logic
        );
    END COMPONENT;

    SIGNAL a : std_logic := '0';
    SIGNAL b : std_logic := '0';
    SIGNAL c : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : alpha_src
        PORT MAP (
            a => a,
            b => b,
            c => c
        );

        PROCESS    -- clock process for a
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                a <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                a <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                b <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 200 ns;
                b <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  585ns
                WAIT FOR 200 ns;
                b <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 200 ns;
                b <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  985ns
                WAIT FOR 200 ns;
                b <= '1';
                -- -------------------------------------
                WAIT FOR 215 ns;

            END PROCESS;

    END testbench_arch;

