--
-- VHDL Architecture ip_repo_lib.traffic_light.RTL
--
-- Created:
--          by - jpnbino.UNKNOWN (DESKTOP-445QT3V)
--          at - 15:14:11 19/11/2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity traffic_light is
  port(
    en : in std_logic;
    clk: in std_logic;
    led: out std_logic_vector( 2 downto 0 )
  );
end entity traffic_light;

--
architecture RTL of traffic_light is
	signal aux : integer := 0;
	signal counter_sec : integer := 0;
	signal reset : std_logic := '0';
	constant ONE_SECOND_AT_125MHZ: integer:= 16#7735940#;
begin
  
process(clk)
begin
  if rising_edge(clk) then
    aux <= aux + 1;
    if( aux = ONE_SECOND_AT_125MHZ) then
      aux <= 0; 
      if counter_sec >= 20 then
        counter_sec <= 0;
      else
        counter_sec <= counter_sec + 1;
      end if;
    end if;
  end if;
end process;

process is
begin
  
if ( en = '1') then
		if ( counter_sec <= 10 )then
			
			if (counter_sec > 5) then
				led <= "011";
			else
				led <= "001";
			end if;
			
			
		elsif ( counter_sec > 10 and counter_sec < 20) then
			led <= "100";
			if (counter_sec > 15) then
				led <= "110";
			end if;
		
		elsif ( counter_sec >= 20) then
			led <= "001";
			reset <= '0';
		end if;
else
  led <= "000";
end if;
		
		wait for 10 ns;
end process;

end architecture RTL;
