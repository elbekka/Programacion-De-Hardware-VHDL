library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder2 is
    port(
        num1,num2,cin : in std_logic;
        suma,cout : out std_logic
    );
end fullAdder2;

architecture estructural of fullAdder2 is 
    component semiSum2
        port(
            num1,num2 : in std_logic;
            suma,acarreo : out std_logic
        );
    end component;
    signal U0_CARRY,U0_SUM,U1_CARRY : std_logic;

    begin
        U0 : semiSum2 port map (num1,num2,U0_SUM,U0_CARRY);
        U1 : semiSum2 port map (U0_SUM,cin,suma,U1_CARRY);
    cout <= U0_CARRY or U1_CARRY;
end estructural;