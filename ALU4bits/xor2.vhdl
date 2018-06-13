library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor2 is 
    port(
        bitA : in std_logic;
        bitB : in std_logic;
        bitResult : out std_logic
    );
end xor2;

architecture dataFlow of xor2 is 
    begin
        bitResult <= bitA xor bitB ; 
end dataFlow;