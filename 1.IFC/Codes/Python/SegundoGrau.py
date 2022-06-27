#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar as raízes reais de equação de segundo grau a partir
#de seus coeficientes
from math import sqrt

#Obter os coeficientes
Termo_Independente = float(input("Informe o termo independente: "))
Coeficiente_Linear = float(input("Informe o coeficiente linear: "))
Coeficiente_Quadratico = float(input("Informe o coeficiente quadrático: "))
    
#Computar o descriminante
Descriminante = Coeficiente_Linear ** 2.0 - 4.0 * Coeficiente_Quadratico * Termo_Independente

if (Descriminante > 0): #há duas soluções reais dadas pela
                        #fórmula resolvente de segundo grau
    Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante)) / (2.0 * Coeficiente_Quadratico)
    Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante)) / (2.0 * Coeficiente_Quadratico)
    print("há duas soluções reais: x1 = ", Solucao_1, " e x2 = ", Solucao_2)
elif (Descriminante == 0): #há uma única solução real dadas pela
                           #fórmula resolvente de segundo grau que
                           #neste caso reduz-se para x = -b/2a
    Solucao = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico)
    print("há uma solução real: x = ",  Solucao)
else: #não há soluções reais
    print("não há soluções reais")