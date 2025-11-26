
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



entity FlopR is 
Port(
clk   : in  std_logic;
reset : in  std_logic;
d: in STD_LOGIC_VECTOR(31 downto 0);
q: out STD_LOGIC_VECTOR(31 downto 0)
);
end FlopR;

architecture Behavioral of FlopR is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= (31 downto 0 => '0');  -- reset all 32 bits to 0
        elsif rising_edge(clk) then
            q <= d;                       -- standard D flip-flop behavior
        end if;
    end process;
end Behavioral;


entity Decoder is
    port (
        input  : in  std_logic_vector(4 downto 0);   -- 5-bit input
        output : out std_logic_vector(31 downto 0)  -- 32-bit one-hot output
    );
	 end Decoder;
	 
architecture Behavioral of Decoder is
begin
    process(input)
    begin
        -- reset all outputs to 0
        output <= (31 downto 0 => '0');
	 case input is
		  when "00000" => output(0)  <= '1';
		  when "00001" => output(1)  <= '1';
		  when "00010" => output(2)  <= '1';
		  when "00011" => output(3)  <= '1';
		  when "00100" => output(4)  <= '1';
		  when "00101" => output(5)  <= '1';
		  when "00110" => output(6)  <= '1';
		  when "00111" => output(7)  <= '1';
		  when "01000" => output(8)  <= '1';
		  when "01001" => output(9)  <= '1';
		  when "01010" => output(10)  <= '1';
		  when "01011" => output(11)  <= '1';
		  when "01100" => output(12)  <= '1';
		  when "01101" => output(13)  <= '1';
		  when "01110" => output(14)  <= '1';
		  when "01111" => output(15)  <= '1';
		  when "10000" => output(16)  <= '1';
		  when "10001" => output(17)  <= '1';
		  when "10010" => output(18)  <= '1';
		  when "10011" => output(19)  <= '1';
		  when "10100" => output(20)  <= '1';
		  when "10101" => output(21)  <= '1';
		  when "10110" => output(22)  <= '1';
		  when "10111" => output(23)  <= '1';
		  when "11000" => output(24)  <= '1';
		  when "11001" => output(25)  <= '1';
		  when "11010" => output(26)  <= '1';
		  when "11011" => output(27)  <= '1';
		  when "11100" => output(28)  <= '1';
		  when "11101" => output(29)  <= '1';
		  when "11110" => output(30)  <= '1';
		  when "11111" => output(31)  <= '1';
		  when others => null;
	end case;
	end process;
	end Behavioral;






architecture Behavioral of RegisterFile is
signal q0  : std_logic_vector(31 downto 0);
signal q1  : std_logic_vector(31 downto 0);
signal q2  : std_logic_vector(31 downto 0);
signal q3  : std_logic_vector(31 downto 0);
signal q4  : std_logic_vector(31 downto 0);
signal q5  : std_logic_vector(31 downto 0);
signal q6  : std_logic_vector(31 downto 0);
signal q7  : std_logic_vector(31 downto 0);
signal q8  : std_logic_vector(31 downto 0);
signal q9  : std_logic_vector(31 downto 0);
signal q10  : std_logic_vector(31 downto 0);
signal q11  : std_logic_vector(31 downto 0);
signal q12  : std_logic_vector(31 downto 0);
signal q13  : std_logic_vector(31 downto 0);
signal q14  : std_logic_vector(31 downto 0);
signal q15  : std_logic_vector(31 downto 0);
signal q16  : std_logic_vector(31 downto 0);
signal q17  : std_logic_vector(31 downto 0);
signal q18  : std_logic_vector(31 downto 0);
signal q19  : std_logic_vector(31 downto 0);
signal q20  : std_logic_vector(31 downto 0);
signal q21  : std_logic_vector(31 downto 0);
signal q22  : std_logic_vector(31 downto 0);
signal q23  : std_logic_vector(31 downto 0);
signal q24  : std_logic_vector(31 downto 0);
signal q25  : std_logic_vector(31 downto 0);
signal q26  : std_logic_vector(31 downto 0);
signal q27  : std_logic_vector(31 downto 0);
signal q28  : std_logic_vector(31 downto 0);
signal q29  : std_logic_vector(31 downto 0);
signal q30  : std_logic_vector(31 downto 0);
signal q31  : std_logic_vector(31 downto 0);
begin
   
Reg0: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q0);
Reg1: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q1);
Reg2: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q2);
Reg3: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q3);
Reg4: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q4);
Reg5: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q5);
Reg6: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q6);
Reg7: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q7);
Reg8: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q8);
Reg9: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q9);
Reg10: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q10);
Reg11: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q11);
Reg12: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q12);
Reg13: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q13);
Reg14: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q14);
Reg15: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q15);
Reg16: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q16);
Reg17: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q17);
Reg18: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q18);
Reg19: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q19);
Reg20: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q20);
Reg21: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q21);
Reg22: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q22);
Reg23: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q23);
Reg24: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q24);
Reg25: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q25);
Reg26: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q26);
Reg27: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q27);
Reg28: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q28);
Reg29: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q29);
Reg30: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q30);
Reg31: entity work.FlopR port map(clk => clk, reset => reset, d => write_data, q => q31);        
 process(read_sel1, read_sel2,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31)           
 begin
        -- data1 read
if read_sel1 = "00000" then
            data1 <= q0;
elsif read_sel1 = "00001" then
            data1 <= q1;
elsif read_sel1 = "00010" then
            data1 <= q2;
elsif read_sel1 = "00011" then
            data1 <= q3;
elsif read_sel1 = "00100" then
            data1 <= q4;
elsif read_sel1 = "00101" then
            data1 <= q5;
elsif read_sel1 = "00110" then
            data1 <= q6;
elsif read_sel1 = "00111" then
            data1 <= q7;
elsif read_sel1 = "01000" then
            data1 <= q8;
elsif read_sel1 = "01001" then
            data1 <= q9;
elsif read_sel1 = "01010" then
            data1 <= q10;
elsif read_sel1 = "01011" then
            data1 <= q11;
elsif read_sel1 = "01100" then
            data1 <= q12;
elsif read_sel1 = "01101" then
            data1 <= q13;
elsif read_sel1 = "01110" then
            data1 <= q14;
elsif read_sel1 = "01111" then
            data1 <= q15;
elsif read_sel1 = "10000" then
            data1 <= q16;
elsif read_sel1 = "10001" then
            data1 <= q17;
elsif read_sel1 = "10010" then
            data1 <= q18;
elsif read_sel1 = "10011" then
            data1 <= q19;
elsif read_sel1 = "10100" then
            data1 <= q20;
elsif read_sel1 = "10101" then
            data1 <= q21;
elsif read_sel1 = "10110" then
            data1 <= q22;
elsif read_sel1 = "10111" then
            data1 <= q23;
elsif read_sel1 = "11000" then
            data1 <= q24;
elsif read_sel1 = "11001" then
            data1 <= q25;
elsif read_sel1 = "11010" then
            data1 <= q26;
elsif read_sel1 = "11011" then
            data1 <= q27;
elsif read_sel1 = "11100" then
            data1 <= q28;
elsif read_sel1 = "11101" then
            data1 <= q29;
elsif read_sel1 = "11110" then
            data1 <= q30;
elsif read_sel1 = "11111" then
            data1 <= q31;
        else
            data1 <= (others=>'0');
        end if;

        -- data2 read
 if read_sel2 = "00000" then
            data2 <= q0;
elsif read_sel2 = "00001" then
            data2 <= q1;
elsif read_sel2 = "00010" then
            data2 <= q2;
elsif read_sel2 = "00011" then
            data2 <= q3;
elsif read_sel2 = "00100" then
            data2 <= q4;
elsif read_sel2 = "00101" then
            data2 <= q5;
elsif read_sel2 = "00110" then
            data2 <= q6;
elsif read_sel2 = "00111" then
            data2 <= q7;
elsif read_sel2 = "01000" then
            data2 <= q8;
elsif read_sel2 = "01001" then
            data2 <= q9;
elsif read_sel2 = "01010" then
            data2 <= q10;
elsif read_sel2 = "01011" then
            data2 <= q11;
elsif read_sel2 = "01100" then
            data2 <= q12;
elsif read_sel2 = "01101" then
            data2 <= q13;
elsif read_sel2 = "01110" then
            data2 <= q14;
elsif read_sel2 = "01111" then
            data2 <= q15;
elsif read_sel2 = "10000" then
            data2 <= q16;
elsif read_sel2 = "10001" then
            data2 <= q17;
elsif read_sel2 = "10010" then
            data2 <= q18;
elsif read_sel2 = "10011" then
            data2 <= q19;
elsif read_sel2 = "10100" then
            data2 <= q20;
elsif read_sel2 = "10101" then
            data2 <= q21;
elsif read_sel2 = "10110" then
            data2 <= q22;
elsif read_sel2 = "10111" then
            data2 <= q23;
elsif read_sel2 = "11000" then
            data2 <= q24;
elsif read_sel2 = "11001" then
            data2 <= q25;
elsif read_sel2 = "11010" then
            data2 <= q26;
elsif read_sel2 = "11011" then
            data2 <= q27;
elsif read_sel2 = "11100" then
            data2 <= q28;
elsif read_sel2 = "11101" then
            data2 <= q29;
elsif read_sel2 = "11110" then
            data2 <= q30;
elsif read_sel2 = "11111" then
            data2 <= q31;
        else
            data2 <= (others=>'0');
        end if;
    end process;

end Behavioral;

