----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:18:01 11/21/2025 
-- Design Name: 
-- Module Name:    mux2to1 - Behavioral 
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

entity mux2to1 is
    Port (
				a : in  STD_LOGIC_VECTOR (31 downto 0);
				b : in  STD_LOGIC_VECTOR (31 downto 0);
				y : out  STD_LOGIC_VECTOR (31 downto 0);
				sel  : in  STD_LOGIC;
        
    );
end MUX2to1;

architecture Behavioral of MUX2to1 is
begin
    process(a,b,sel)
    begin
        y <= a when sel = '0' else b;
    end process;
end Behavioral;


