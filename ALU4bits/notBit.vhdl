library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notBit is 
    port(
        bitA : in std_logic;
        bitResult : out std_logic
    );
end notBit;

architecture dataFlow of notBit is 
    begin
        bitResult <= not bitA ; 
end dataFlow;