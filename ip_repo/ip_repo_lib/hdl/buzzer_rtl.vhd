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
    clk: in std_logic;
    sel_freq: in std_logic;
    output: out std_logic_vector (1 DOWNTO 0)
  );
end entity buzzer;

--
architecture rtl of buzzer is
  	signal aux : integer := 0;
  	signal counter_sec : integer := 0;
  	signal sub_clk : std_logic := '0';
  	constant FREQ_1KHZ: integer:= 125000;
  	constant FREQ_2KHZ: integer:= 62500;
begin
  
process(clk, sel_freq)
begin
  
  if (sel_freq = '1') then
    if rising_edge(clk) then
          aux <= aux + 1;
        if( aux = FREQ_2KHZ) then
          aux <= 0;
          sub_clk <= not sub_clk;
          if ( sub_clk = '1' )then
            output <= "10";
          elsif ( sub_clk = '0') then
            output <= "01";
          end if;
        end if;
    end if;       
  elsif (sel_freq = '0') then
    if rising_edge(clk) then
          aux <= aux + 1;
      if( aux = FREQ_1KHZ) then
        aux <= 0;
        sub_clk <= not sub_clk;
        if ( sub_clk = '1' )then
          output <= "10";
        elsif ( sub_clk = '0') then
          output <= "01";
        end if;
      end if;
    end if;      
  end if;    
  
  
end process;
end architecture rtl;

