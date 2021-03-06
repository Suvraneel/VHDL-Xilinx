--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : ANDgate_tb.vhw
-- /___/   /\     Timestamp : Wed May 05 12:36:47 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: ANDgate_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY ANDgate_tb IS
END ANDgate_tb;

ARCHITECTURE testbench_arch OF ANDgate_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT HelloWorld
        PORT (
            A : In std_logic_vector (0 DownTo 0);
            B : In std_logic_vector (0 DownTo 0);
            Y : Out std_logic_vector (0 DownTo 0)
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (0 DownTo 0) := "0";
    SIGNAL B : std_logic_vector (0 DownTo 0) := "0";
    SIGNAL Y : std_logic_vector (0 DownTo 0) := "0";

    BEGIN
        UUT : HelloWorld
        PORT MAP (
            A => A,
            B => B,
            Y => Y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                A <= "1";
                B <= "1";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                A <= "0";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A <= "1";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                A <= "0";
                B <= "0";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                A <= "1";
                B <= "1";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                A <= "0";
                B <= "0";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                A <= "1";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                A <= "0";
                B <= "1";
                -- -------------------------------------
                WAIT FOR 100 ns;

            END PROCESS;

    END testbench_arch;

