--
-- VHDL Architecture ip_repo_lib.flip_flop_d.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 01:37:58 11/12/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity flip_flop_d is
  port(
    d   : in std_logic;
    en  : in std_logic;
    clk : in std_logic;
    rst : in  std_logic;
    q   : out std_logic
  );
end entity flip_flop_d;

--
architecture rtl of flip_flop_d is
begin
  
  process(clk, rst)
  begin
    if rst = '1' then
        q <='0';
    else
      if rising_edge(clk) then  
        if en = '1' then
          q <= d;
        end if;
      end if;
    end if;

      
  end process;
end architecture rtl;

