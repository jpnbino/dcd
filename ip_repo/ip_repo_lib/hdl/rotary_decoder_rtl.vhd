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
  generic (
    DataWdith : integer := 4
  );
  
  port(
    clk: in std_logic;
    A: in std_logic;
    B: in std_logic;
    preset: in std_logic;
    preset_val: in std_logic_vector(DataWdith-1 Downto 0);
    val : out std_logic_vector(DataWdith-1 Downto 0)
  );
end entity rotary_decoder;

--
architecture rtl of rotary_decoder is
  signal s_val: std_logic_vector(DataWdith-1 Downto 0);
  signal cw, s_cw: std_logic;
  signal ccw, s_ccw: std_logic;
  
begin
  
  process ( A, B )
  begin 
    if (rising_edge(B)) then
      if (A = '1') then
        cw <=  '1';
      end if;
    end if;
    
    if (rising_edge (A)) then
      if (B = '1') then
        ccw <= '1';
      end if;
    end if;
  end process;

  process ( clk ) 
  begin
    if (rising_edge(clk)) then
      if( preset ='1') then
        s_val <= preset_val;
      else        
        if ( cw ='1' and  s_cw ='0') then
          s_val <= s_val + 1;
          s_cw <= '1';
        elsif ( ccw ='1' and s_ccw = '0') then
          s_val <= s_val - 1;
          s_ccw <= '1';
        elsif ( ccw ='0' and cw ='0') then
          s_cw <= '0';
          s_ccw <= '0';
        end if;
      end if;
    end if;
  end process;
  
val <= s_val;

end architecture rtl;

