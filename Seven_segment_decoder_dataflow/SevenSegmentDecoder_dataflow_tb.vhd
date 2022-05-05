--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : SevenSegmentDecoder_datafow_tb.vhw
-- /___/   /\     Timestamp : Sat May 08 11:47:07 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
-- Company:  University of Calcutta
-- Engineer: Suvraneel Bhuin
-- Description: T91/CSE/194032		Class Roll-19
--
-- Create Date:    01:04:01 08/05/2021 
--Design Name: SevenSegmentDecoder_datafow_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY SevenSegmentDecoder_datafow_tb IS
END SevenSegmentDecoder_datafow_tb;

ARCHITECTURE testbench_arch OF SevenSegmentDecoder_datafow_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT SevenSegmentDecoder_dataflow_src
        PORT (
            A : In std_logic;
            B : In std_logic;
            C : In std_logic;
            D : In std_logic;
            Y : Out std_logic_vector (6 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic := '0';
    SIGNAL B : std_logic := '0';
    SIGNAL C : std_logic := '0';
    SIGNAL D : std_logic := '0';
    SIGNAL Y : std_logic_vector (6 DownTo 0) := "0000000";

    BEGIN
        UUT : SevenSegmentDecoder_dataflow_src
        PORT MAP (
            A => A,
            B => B,
            C => C,
            D => D,
            Y => Y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                C <= '1';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                B <= '1';
                C <= '0';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                C <= '1';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                A <= '1';
                B <= '0';
                C <= '0';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                C <= '1';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                B <= '1';
                C <= '0';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                C <= '1';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                A <= '0';
                B <= '0';
                C <= '0';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                C <= '1';
                D <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                D <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                B <= '1';
                C <= '0';
                D <= '0';

            END PROCESS;

    END testbench_arch;

