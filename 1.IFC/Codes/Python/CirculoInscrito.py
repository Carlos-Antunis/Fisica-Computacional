#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar a área de um círculo a partir do lado de um
#quadrado que o circunscreve

CONST_pi = 3.14159265359

#bter o valor do lado do quadrado
Lado_do_Quadrado = float(input("Informe o valor do lado do quadrado: "))

#Computar o raio do círculo
Raio_do_Circulo = Lado_do_Quadrado / 2.0

#Computar a área do círculo
Area_do_Circulo = CONST_pi * Raio_do_Circulo * Raio_do_Circulo
print("A área do círculo vale:", Area_do_Circulo)