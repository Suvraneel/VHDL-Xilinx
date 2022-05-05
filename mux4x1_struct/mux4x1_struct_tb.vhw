--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : mux4x1_struct_tb.vhw
-- /___/   /\     Timestamp : Fri May 07 19:18:59 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: mux4x1_struct_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY mux4x1_struct_tb IS
END mux4x1_struct_tb;

ARCHITECTURE testbench_arch OF mux4x1_struct_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mux4x1_struct_src
        PORT (
            a : In std_logic_vector (3 DownTo 0);
            s : In std_logic_vector (1 DownTo 0);
            y : Out std_logic
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL s : std_logic_vector (1 DownTo 0) := "00";
    SIGNAL y : std_logic := '0';

    BEGIN
        UUT : mux4x1_struct_src
        PORT MAP (
            a => a,
            s => s,
            y => y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                a <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                a <= "0010";
                s <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                a <= "1111";
                s <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                a <= "0111";
                s <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                a <= "1101";
                s <= "00";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                a <= "0111";
                s <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                a <= "0110";
                s <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                a <= "0100";
                s <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                s <= "00";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

