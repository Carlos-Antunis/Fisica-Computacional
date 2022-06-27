#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar a área de um triângulo a partir da fórmula
#de Heron
from math import sqrt

#Obter o valor dos lado do triângulo
Lado_1 = float(input("Informe o primeiro valor do lado do triângulo: "))
Lado_2 = float(input("Informe o segundo valor do lado do triângulo: "))
Lado_3 = float(input("Informe o terceiro valor do lado do triângulo: "))

#Computar o semiperímetro
Semiperimetro = (Lado_1 + Lado_2 + Lado_3) / 2.0;

#Computar a área do triângulo
Area_do_Triangulo = sqrt(Semiperimetro *
                    (Semiperimetro - Lado_1) *
                    (Semiperimetro - Lado_2) *
                    (Semiperimetro - Lado_3))
print("A área do triângulo é:", Area_do_Triangulo)