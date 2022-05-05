----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		 Suvraneel Bhuin
-- 					T91_CSE_194032
-- Create Date:    16:20:58 07/04/2021 
-- Design Name: 
-- Module Name:    Counter_UP_DOWN_4bit_Sync_src - Structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_UP_DOWN_4bit_Sync_src is
    Port ( CLK : in  STD_LOGIC;
           CTRL : in  STD_LOGIC;
           SET : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end Counter_UP_DOWN_4bit_Sync_src;

architecture Structural of Counter_UP_DOWN_4bit_Sync_src is
-----------------------------------------------------------> JK flipflop
component JK_FF
    Port ( CLK : in  STD_LOGIC;
			  J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           SET : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Q : out  STD_LOGIC;
			  Qb : out  STD_LOGIC);
end component;
-----------------------------------------------------------> Ctrl Blk
component CTRL_BLK
 Port ( ModeQ : in  STD_LOGIC;
        ModeQb : in STD_LOGIC;
        Q : in  STD_LOGIC;
        Qb : in  STD_LOGIC;
        A1 : out STD_LOGIC;
        A2 : out STD_LOGIC;
        Y : out  STD_LOGIC);
end component;

Signal f : STD_LOGIC;
Signal Qb, Res : STD_LOGIC_VECTOR(3 downto 0);
Signal Cb, a1, a2: STD_LOGIC_VECTOR(2 downto 0);
begin
        T: f<=not CTRL;
        T0: JK_FF port map(CLK=>CLK, J=>'1', K=>'1', SET=>SET, CLR=>CLR, Q=>Res(0), Qb=>Qb(0));
        T1: CTRL_BLK port map(ModeQ=>CTRL, ModeQb=>f, Q=>Res(0), Qb=>Qb(0), A1=>a1(0), A2=>a2(0), Y=>cb(0));
        T2: JK_FF port map(CLK=>CLK, J=>Cb(0), K=>Cb(0), SET=>SET, CLR=>CLR, Q=>Res(1), Qb=>Qb(1));
        T3: CTRL_BLK port map(ModeQ=>a1(0), ModeQb=>a2(0), Q=>Res(1), Qb=>Qb(1), A1=>a1(1), A2=>a2(1), Y=>cb(1));
        T4: JK_FF port map(CLK=>CLK, J=>Cb(1), K=>Cb(1), SET=>SET, CLR=>CLR, Q=>Res(2), Qb=>Qb(2));
        T5: CTRL_BLK port map(ModeQ=>a1(1), ModeQb=>a2(1), Q=>Res(2), Qb=>Qb(2), A1=>a1(2), A2=>a2(2), Y=>cb(2));
        T6: JK_FF port map(CLK=>CLK, J=>Cb(2), K=>Cb(2), SET=>SET, CLR=>CLR, Q=>Res(3), Qb=>Qb(3));
        Q <= Res;
end Structural;

