----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:18 11/22/2025 
-- Design Name: 
-- Module Name:    Datapath - Behavioral 
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
use work.muxes.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Datapath is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           regwrite : in  STD_LOGIC;
           aluout : buffer STD_LOGIC_VECTOR (31 downto 0));
end Datapath;

architecture Behavioral of Datapath is

begin
 mux2to1(instr, instr, regwrite, aluout);

end Behavioral;

