--
-- VHDL Architecture ip_repo_lib.nco.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 18:56:12 10/12/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity nco is
  port(
    clk  :  in std_logic;
    fcw  :  in std_logic_vector(31 DOWNTO 0);
    reset:  in std_logic;
    rect :  out std_logic;
    stb  :  out std_logic
  );
end entity nco;

--
architecture rtl of nco is
  signal accu : std_logic_vector( fcw'range);
  signal rect_int, rect_int_q: std_logic;
begin
  
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        accu <= (others => '0');
      else
        accu <= accu + fcw;
      end if;
    end if;
  end process;
        
  rect_int <= accu(accu'left);
  
  process(clk)
  begin
    if rising_edge(clk) then
      rect_int_q <= rect_int;
    end if;
  end process;

stb <= rect_int_q and not  rect_int;
rect <= rect_int;
        
end architecture rtl;

