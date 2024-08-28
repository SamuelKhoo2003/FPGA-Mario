-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity cvtcolor_og_mul_16ns_16ns_32_3_1 is
generic (
    ID : INTEGER := 1;
    NUM_STAGE : INTEGER := 0;
    din0_WIDTH : INTEGER := 14;
    din1_WIDTH : INTEGER := 12;
    dout_WIDTH : INTEGER := 26);
port (

    clk: in std_logic;
    ce: in std_logic;
    reset: in std_logic;

    din0: in std_logic_vector(din0_WIDTH - 1 downto 0);
    din1: in std_logic_vector(din1_WIDTH - 1 downto 0);
    dout: out std_logic_vector(dout_WIDTH - 1 downto 0));


 
    attribute use_dsp : string;
    attribute use_dsp of cvtcolor_og_mul_16ns_16ns_32_3_1 : entity is "yes";

end entity;

architecture behav of cvtcolor_og_mul_16ns_16ns_32_3_1 is
    signal tmp_product : std_logic_vector(dout_WIDTH - 1 downto 0);
    signal a_i : std_logic_vector(din0_WIDTH - 1 downto 0);
    signal b_i : std_logic_vector(din1_WIDTH - 1 downto 0);
    
    signal buff0 : std_logic_vector(dout_WIDTH - 1 downto 0);
    
    
    signal a_reg : std_logic_vector(din0_WIDTH - 1 downto 0);
    signal b_reg : std_logic_vector(din1_WIDTH - 1 downto 0);
    
    
    
    
    
begin
    a_i <= din0;
    b_i <= din1;





    tmp_product <= std_logic_vector(resize(unsigned(a_reg) * unsigned(b_reg), dout_WIDTH));









    dout <= buff0;







    process(clk)
    begin
        if (clk'event and clk = '1') then
            if (ce = '1') then
                buff0 <= tmp_product;

                a_reg <= a_i;
                b_reg <= b_i;





            end if;
        end if;
    end process;

end architecture;
