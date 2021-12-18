--Exercicio 1a)

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4x1 is 
generic
( 
N : integer:= 4;
);
port
(
-- N 
	sel : in std_logic_vector(1 downto 0);
--	A : in std_logic_vector((3 downto 0);
	A, B, C, D : in std_logic;
	S : out std_logic  
);
end mux_4x1;
architecture hardware of mux_4x1 is
begin
	with sel select
		S <= A when "00",
			 B when "01",
			 C when "10",
			 D when others;
	end hardware;
	