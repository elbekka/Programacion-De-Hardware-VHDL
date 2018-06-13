library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semiSum2 is 
    port(
        num1,num2 : in std_logic;
        suma,acarreo : out std_logic
    );
end semiSum2;

architecture estructural of semiSum2 is
    component and2
        port(
            bitA : in std_logic;
            bitB : in std_logic;
            bitResult : out std_logic
        );
    end component;
    component xor2
        port(
            bitA : in std_logic;
            bitB : in std_logic;
            bitResult : out std_logic
        );
    end component;
    begin 
        A1: and2 port map(num1,num2,acarreo);
        XO: xor2 port map(num1,num2,suma);
end estructural;