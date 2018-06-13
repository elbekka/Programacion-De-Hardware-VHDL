library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or2 is 
    port(
        bitA : in std_logic;
        bitB : in std_logic;
        bitResult : out std_logic
    );
end or2;

architecture dataFlow of or2 is 
    begin
        bitResult <= bitA or bitB ; 
end dataFlow;