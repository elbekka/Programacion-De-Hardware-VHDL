library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is 
    port(
        bitA : in std_logic;
        bitB : in std_logic;
        bitResult : out std_logic
    );
end and2;

architecture dataFlow of and2 is 
    begin
        bitResult <= bitA and bitB ; 
end dataFlow;