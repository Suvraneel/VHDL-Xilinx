--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : mux4x1_dataflow_tb.vhw
-- /___/   /\     Timestamp : Fri May 07 17:14:34 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: mux4x1_dataflow_tb
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY mux4x1_dataflow_tb IS
END mux4x1_dataflow_tb;

ARCHITECTURE testbench_arch OF mux4x1_dataflow_tb IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mux4x1_dataflow_src
        PORT (
            A : In std_logic_vector (0 To 3);
            S : In std_logic_vector (0 To 1);
            Y : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic_vector (0 To 3) := "0000";
    SIGNAL S : std_logic_vector (0 To 1) := "00";
    SIGNAL Y : std_logic := '0';

    BEGIN
        UUT : mux4x1_dataflow_src
        PORT MAP (
            A => A,
            S => S,
            Y => Y
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                A <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                A <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                A <= "0111";
                S <= "01";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                A <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                A <= "0110";
                S <= "10";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                A <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                S <= "11";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                A <= "0010";
                -- -------------------------------------
                WAIT FOR 200 ns;

            END PROCESS;

    END testbench_arch;

