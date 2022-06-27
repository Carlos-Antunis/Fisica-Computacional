#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar o comprimento de uma circunferência com raio
#informado pelo usuário

CONST_pi = 3.14159265359

#Obter o raio do círculo
Raio_do_Circulo = float(input("Informe o raio do círculo: "))#Lendo um valor
                                                             #float e
                                                             #armazenando-o
                                                             #na variável 
                                                             #de nome
                                                             #Raio_do_Circulo

#Computar o comprimento da circunferencia
Comprimento_da_Circunferencia = 2.0 * CONST_pi * Raio_do_Circulo
print("O perímetro é", Comprimento_da_Circunferencia)