#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar o valor da hipotenusa de um triângulo retângulo
#com catetos informados pelo usuário
from math import sqrt

#Obter o primeiro cateto
Cateto_1 = float(input("Informe o primeiro cateto: "))

#Obter o segundo cateto
Cateto_2 = float(input("Informe o segundo cateto: "))

#Computar a hipotenusa
Hipotenusa = sqrt(Cateto_1 ** 2.0 + Cateto_2 ** 2.0)
print("A hipotenusa é",  Hipotenusa)