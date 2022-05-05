--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : SevenSegmentDecoder_Struct_tb.vhw
-- /___/   /\     Timestamp : Sun May 09 00:44:47 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Company:  University of Calcutta
--Engineer: Suvraneel Bhuin
--Description: T91/CSE/194032		Class Roll-19
--
--Create Date:    01:04:01 08/05/2021 
--Design Name: 	 g_signal_out
--Module Name:    Seven Segment Decoder - Structural
--Design Name: SevenSegmentDecoder_Struct
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY SevenSegmentDecoder_Struct IS
END SevenSegmentDecoder_Struct_tb;

ARCHITECTURE Structural OF SevenSegmentDecoder_Struct_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT SevenSegmentDecoder_Struct
        PORT (
            I : In std_logic_vector (3 DownTo 0);
            a : Out std_logic;
            b : Out std_logic;
            c : Out std_logic;
            d : Out std_logic;
            e : Out std_logic;
            f : Out std_logic;
            g : Out std_logic
        );
    END COMPONENT;

    SIGNAL I : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL a : std_logic := '0';
    SIGNAL b : std_logic := '0';
    SIGNAL c : std_logic := '0';
    SIGNAL d : std_logic := '0';
    SIGNAL e : std_logic := '0';
    SIGNAL f : std_logic := '0';
    SIGNAL g : std_logic := '0';

    BEGIN
        UUT : SevenSegmentDecoder_Struct
        PORT MAP (
            I => I,
            a => a,
            b => b,
            c => c,
            d => d,
            e => e,
            f => f,
            g => g
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                I <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                I <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                I <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                I <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                I <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                I <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                I <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                I <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                I <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                I <= "0000";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                I <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                I <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                I <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                I <= "0100";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END Structural;

