----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 10:12:02 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    -- declare component for top-level design unit under test (UUT)
    component sevenseg_decoder is
        Port (  i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
                 o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
        end component sevenseg_decoder;
        
    -- declare input signals needed to simulate UUT
    signal w_Hex : std_logic_vector (3 downto 0):=(others => '0');
    
    -- declare output signals needed to simulate UUT
    signal w_seg_n : std_logic_vector (6 downto 0):=(others => '0');


begin
    -- PORT MAPS
    sevenseg_decoder_inst : sevenseg_decoder
        port map (
            i_Hex => w_Hex,
            o_seg_n => w_seg_n
        );        
    test_process : process
    begin
        w_Hex <= x"0"; wait for 10 ns;
                assert w_seg_n = "1000000" report "error on 0" severity failure;
        w_Hex <= x"1"; wait for 10 ns;
                assert w_seg_n = "1111001" report "error on 1" severity failure;
        w_Hex <= x"2"; wait for 10 ns;
                assert w_seg_n = "0100100" report "error on 2" severity failure;
        w_Hex <= x"3"; wait for 10 ns;
                assert w_seg_n = "0110000" report "error on 3" severity failure;
        W_Hex <= x"4"; wait for 10 ns;
                assert w_seg_n = "0011001" report "error on 4" severity failure;
        w_Hex <= x"5"; wait for 10 ns;
                assert w_seg_n = "0010010" report "error on 5" severity failure;
        w_Hex <= x"6"; wait for 10 ns;
                assert w_seg_n = "0000010" report "error on 6" severity failure;
        w_Hex <= x"7"; wait for 10 ns;
                assert w_seg_n = "1111000" report "error on 7" severity failure;
        w_Hex <= x"8"; wait for 10 ns;
                assert w_seg_n = "0000000" report "error on 8" severity failure;
        w_Hex <= x"9"; wait for 10 ns;
                assert w_seg_n = "0011000" report "error on 9" severity failure;
        w_Hex <= x"A"; wait for 10 ns;
                assert w_seg_n = "0001000" report "error on A" severity failure;
        w_Hex <= x"B"; wait for 10 ns;
                assert w_seg_n = "0000011" report "error on B" severity failure;
        w_Hex <= x"C"; wait for 10 ns;
                assert w_seg_n = "0100111" report "error on C" severity failure;
        w_Hex <= x"D"; wait for 10 ns;
                assert w_seg_n = "0100001" report "error on D" severity failure;
        w_Hex <= x"E"; wait for 10 ns;
                assert w_seg_n = "0000110" report "error on E" severity failure;
        w_Hex <= x"F"; wait for 10 ns;
                assert w_seg_n = "0001110" report "error on F" severity failure;
    
        wait; -- wait forever        
    end process;
end Behavioral;
