--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : mux4x1_dataflow_tb_selfcheck.vhw
-- /___/   /\     Timestamp : Fri May 07 16:16:17 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: mux4x1_dataflow_tb_selfcheck_beh
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY mux4x1_dataflow_tb_selfcheck_beh IS
END mux4x1_dataflow_tb_selfcheck_beh;

ARCHITECTURE testbench_arch OF mux4x1_dataflow_tb_selfcheck_beh IS
    COMPONENT mux4x1_dataflow_src
        PORT (
            d0 : In STD_LOGIC;
            d1 : In STD_LOGIC;
            d2 : In STD_LOGIC;
            d3 : In STD_LOGIC;
            s0 : In STD_LOGIC;
            s1 : In STD_LOGIC;
            y : Out STD_LOGIC
        );
    END COMPONENT;

    SIGNAL d0 : STD_LOGIC := '0';
    SIGNAL d1 : STD_LOGIC := '0';
    SIGNAL d2 : STD_LOGIC := '0';
    SIGNAL d3 : STD_LOGIC := '0';
    SIGNAL s0 : STD_LOGIC := '0';
    SIGNAL s1 : STD_LOGIC := '0';
    SIGNAL y : STD_LOGIC := '0';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : mux4x1_dataflow_src
        PORT MAP (
            d0 => d0,
            d1 => d1,
            d2 => d2,
            d3 => d3,
            s0 => s0,
            s1 => s1,
            y => y
        );

        PROCESS
            PROCEDURE CHECK_y(
                next_y : STD_LOGIC;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (y /= next_y) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns y="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, y);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_y);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                d0 <= '1';
                d1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                d0 <= '0';
                d2 <= '1';
                d3 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                d0 <= '1';
                d1 <= '0';
                s1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                d0 <= '0';
                d2 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                d0 <= '1';
                d1 <= '1';
                d3 <= '0';
                s0 <= '1';
                s1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                d0 <= '0';
                d2 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                d0 <= '1';
                d1 <= '0';
                d2 <= '0';
                s1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                d0 <= '0';
                d2 <= '1';
                d3 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                d0 <= '1';
                d1 <= '1';
                s1 <= '0';
                -- -------------------------------------
                WAIT FOR 100 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

