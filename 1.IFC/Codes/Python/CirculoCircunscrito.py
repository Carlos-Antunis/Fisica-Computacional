#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar área de um polígono regular inscrito numa 
#circunferência
from math import sin, cos

CONST_pi = 3.14159265359

#Obter o raio do círculo
Raio_do_Circulo = float(input("Insira o valor do raio do círculo: "))

#Obter a quantidade de lados do polígono inscrito
Numero_de_Lados_do_Poligono = float(input("nsira o número de lados do polígono inscrito: "))

#Calcular o ângulo entre o raio e a apotema
Angulo = CONST_pi/Numero_de_Lados_do_Poligono

#Calcular o lado do polígono
Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo)

#Calcular a apotema do polígono
Apotema = Raio_do_Circulo * cos(Angulo)

#Calcular o perímetro do polígono
Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono

#Calcular a área do polígono
Area_do_Poligono = Perimetro * Apotema / 2.0
print("A área do polígono vale:", Area_do_Poligono)