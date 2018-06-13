library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or4bits is 
    port(
        num1,num2 : in std_logic_vector(3 downto 0);
        resultado : out std_logic_vector(3 downto 0)
    );
end or4bits ;

architecture dataFlow of or4bits is 
    begin
        resultado <= num1 or num2 ; 
end dataFlow;