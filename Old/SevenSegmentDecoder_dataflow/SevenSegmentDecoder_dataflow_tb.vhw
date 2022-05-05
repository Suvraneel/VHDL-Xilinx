--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : SevenSegmentDecoder_dataflow_tb.vhw
-- /___/   /\     Timestamp : Sat May 08 11:27:54 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: SevenSegmentDecoder_dataflow_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY SevenSegmentDecoder_dataflow_tb IS
END SevenSegmentDecoder_dataflow_tb;

ARCHITECTURE testbench_arch OF SevenSegmentDecoder_dataflow_tb IS
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

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : SevenSegmentDecoder_dataflow_src
        PORT MAP (
            A => A,
            B => B,
            C => C,
            D => D,
            Y => Y
        );

        PROCESS    -- clock process for D
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                D <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                D <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                WAIT FOR 1200 ns;

            END PROCESS;

    END testbench_arch;

