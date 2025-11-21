----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:28:52 11/22/2025 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity PC is
    Port(
        clk   : in  std_logic;
        reset : in  std_logic;
        pc_in : in  std_logic_vector(31 downto 0);
        pc_out: out std_logic_vector(31 downto 0)
    );
end PC;

architecture Behavioral of PC is
    signal pc_reg : std_logic_vector(31 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            pc_reg <= (others => '0');         -- Reset PC to 0
        elsif rising_edge(clk) then
            pc_reg <= pc_in;                  -- Load next PC
        end if;
    end process;

    pc_out <= pc_reg;                          -- Current PC output

end Behavioral;


