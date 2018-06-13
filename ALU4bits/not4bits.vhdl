library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not4Bit is
  port (
    num : in std_logic_vector(3 downto 0);
    resultado : out std_logic_vector(3 downto 0)
  ) ;
end not4Bit;

architecture dataFlow of not4Bit is
    begin
        resultado <= not num;

end dataFlow ; -- dataFlow