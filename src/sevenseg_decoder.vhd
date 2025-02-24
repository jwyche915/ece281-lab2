----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 09:24:37 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

begin
    with i_Hex select
        o_seg_n <=  x"40" when x"0",
                    x"79" when x"1",
                    x"24" when x"2",
                    x"30" when x"3",
                    x"19" when x"4",
                    x"12" when x"5",
                    x"02" when x"6",
                    x"78" when x"7",
                    x"00" when x"8",
                    x"18" when x"9",
                    x"08" when x"A",
                    x"03" when x"B",
                    x"27" when x"C",
                    x"21" when x"D",
                    x"06" when x"E",
                    x"0E" when x"F";

end Behavioral;
