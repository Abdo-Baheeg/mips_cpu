library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity RegisterFile is
Port ( 
read_sel1 : in std_logic_vector(4 downto 0);
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic ;
clk: in std_logic ;
write_data: in std_logic_vector(31 downto 0) ;
data1: out std_logic_vector(31 Downto 0);
data2: out std_logic_vector(31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal r0: std_logic_vector(31 downto 0);
signal r1: std_logic_vector(31 downto 0);
signal r2: std_logic_vector(31 downto 0);
signal r3: std_logic_vector(31 downto 0);
signal r4: std_logic_vector(31 downto 0);
signal r5: std_logic_vector(31 downto 0);
signal r6: std_logic_vector(31 downto 0);
signal r7: std_logic_vector(31 downto 0);
signal r8: std_logic_vector(31 downto 0);
signal r9: std_logic_vector(31 downto 0);
signal r10: std_logic_vector(31 downto 0);
signal r11: std_logic_vector(31 downto 0);
signal r12: std_logic_vector(31 downto 0);
signal r13: std_logic_vector(31 downto 0);
signal r14: std_logic_vector(31 downto 0);
signal r15: std_logic_vector(31 downto 0);
signal r16: std_logic_vector(31 downto 0);
signal r17: std_logic_vector(31 downto 0);
signal r18: std_logic_vector(31 downto 0);
signal r19: std_logic_vector(31 downto 0);
signal r20: std_logic_vector(31 downto 0);
signal r21: std_logic_vector(31 downto 0);
signal r22: std_logic_vector(31 downto 0);
signal r23: std_logic_vector(31 downto 0);
signal r24: std_logic_vector(31 downto 0);
signal r25: std_logic_vector(31 downto 0);
signal r26: std_logic_vector(31 downto 0);
signal r27: std_logic_vector(31 downto 0);
signal r28: std_logic_vector(31 downto 0);
signal r29: std_logic_vector(31 downto 0);
signal r30: std_logic_vector(31 downto 0);
signal r31: std_logic_vector(31 downto 0);
begin
with read_sel1 select
  data1 <= r0 when "00000",
           r1 when "00001",
           r2 when "00010",
           r3 when "00011",
           r4 when "00100",
           r5 when "00101",
           r6 when "00110",
           r7 when "00111",
           r8 when "01000",
           r9 when "01001",
           r10 when "01010",
           r11 when "01011",
           r12 when "01100",
           r13 when "01101",
           r14 when "01110",
           r15 when "01111",
           r16 when "10000",
           r17 when "10001",
           r18 when "10010",
           r19 when "10011",
           r20 when "10100",
           r21 when "10101",
           r22 when "10110",
           r23 when "10111",
           r24 when "11000",
           r25 when "11001",
           r26 when "11010",
           r27 when "11011",
           r28 when "11100",
           r29 when "11101",
           r30 when "11110",
           r31 when "11111",
           (others => '0') when others;
with read_sel2 select
  data2 <= r0 when "00000",
           r1 when "00001",
           r2 when "00010",
           r3 when "00011",
           r4 when "00100",
           r5 when "00101",
           r6 when "00110",
           r7 when "00111",
           r8 when "01000",
           r9 when "01001",
           r10 when "01010",
           r11 when "01011",
           r12 when "01100",
           r13 when "01101",
           r14 when "01110",
           r15 when "01111",
           r16 when "10000",
           r17 when "10001",
           r18 when "10010",
           r19 when "10011",
           r20 when "10100",
           r21 when "10101",
           r22 when "10110",
           r23 when "10111",
           r24 when "11000",
           r25 when "11001",
           r26 when "11010",
           r27 when "11011",
           r28 when "11100",
           r29 when "11101",
           r30 when "11110",
           r31 when "11111",
           (others => '0') when others;           
           
           


end Behavioral;
