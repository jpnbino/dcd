--
-- VHDL Architecture ip_repo_lib.entity_name.rtl
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 14:40:04 04/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity binary_counter is
   generic (nbits_g : integer := 8);
   port(      
      clk    : in     std_logic;
      reset  : in     std_logic;
      enable : in     std_logic;
      dir    : in     std_logic;
      cnt    : out    std_logic_vector (nbits_g-1 downto 0)
   );
end entity binary_counter;
--
architecture rtl of binary_counter is
  signal counter: std_logic_vector(cnt'range) := (others => '0');
begin



  process(clk)
  begin
      if rising_edge(clk) then
          if reset = '1' then
              counter <= (others => '0');
          elsif enable ='1' then
              if dir = '1' then
                  counter <= counter + 1;
              else
                  counter <= counter - 1;
              end if;
          end if;
      end if;
  end process;

cnt <= counter;

end architecture rtl;

