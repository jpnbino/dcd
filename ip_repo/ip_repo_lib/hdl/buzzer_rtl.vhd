--
-- VHDL Architecture ip_repo_lib.buzzer.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 17:41:00 20/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity buzzer is
  port(
    en : in std_logic;
    clk: in std_logic;
    sel_freq: in std_logic;
    output: out std_logic_vector (1 DOWNTO 0);
    leds: out std_logic_vector (1 DOWNTO 0)
  );
end entity buzzer;

--
architecture rtl of buzzer is
  	signal aux : std_logic_vector (15 DOWNTO 0);
  	signal sub_clk : std_logic;
  	signal sel : std_logic;
  	signal enable : std_logic;
  	constant FREQ_1KHZ: std_logic_vector (15 DOWNTO 0) := (x"F424");
  	constant FREQ_2KHZ: std_logic_vector (15 DOWNTO 0) := (x"7A12");
begin

enable <= en;
sel <= sel_freq;

process(clk, sel)
begin 

if rising_edge(clk) then
  aux <= aux + 1;
  if (sel = '0') then
    leds <= "01";          
    if( aux = FREQ_1KHZ) then
      aux <= (others => '0');
      sub_clk <= not sub_clk;
    end if;
  elsif (sel = '1') then
    if( aux = FREQ_2KHZ) then
        leds <= "10";
        aux <= (others => '0');
        sub_clk <= not sub_clk;
    end if;
  else
    leds <= "11";
  end if;      
end if;    
end process;

process( sub_clk, enable)
begin
if ( enable = '1') then
  if ( sub_clk = '1' )then
    output <= "10";
  elsif ( sub_clk = '0') then
    output <= "01";
  end if;
else
  output <= "00";  
end if;
end process;

end architecture rtl;

