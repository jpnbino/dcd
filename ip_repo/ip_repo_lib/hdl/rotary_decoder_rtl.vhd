--
-- VHDL Architecture ip_repo_lib.rotary_decoder.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 17:57:27 12/12/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity rotary_decoder is  
  port(
    clk: in std_logic;
    A: in std_logic;
    B: in std_logic;
    preset: in std_logic;
    preset_val: in std_logic_vector(4 Downto 0);
    val : out std_logic_vector(4 Downto 0)
  );
end entity rotary_decoder;

--
architecture rtl of rotary_decoder is
  signal s_val: std_logic_vector(4 Downto 0);
  signal AB: std_logic_vector (1 downto 0) := "00";
  signal S_AB: std_logic_vector (1 downto 0) := "00";  
begin 
  process ( clk ) 
  begin 
      if (rising_edge(clk)) then
         if( preset = '1') then
            s_val <= preset_val;
         else
            if ( AB = "11" and S_AB = "10") then
              s_val <= s_val + 1;
            elsif ( AB = "11" and S_AB = "01") then
              s_val <= s_val - 1;
            else
              S_AB <= AB;
            end if;
         end if;
      end if;
  end process;
  
val <= s_val;
AB <= A & B;

end architecture rtl;

