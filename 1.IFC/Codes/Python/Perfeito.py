#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar se um número é perfeito

#Obter o número
Numero = int(input("Informe o número a ser testado: "))

#Somar todos os fatores do Número
Soma_dos_Fatores = 0;
for fator in range(1,Numero):
    if (Numero % fator == 0):
        Soma_dos_Fatores = Soma_dos_Fatores + fator

if (Numero == Soma_dos_Fatores): #Se o número for
                                 #a soma dos fatores
                                 #ele é perfeito
    print(Numero, "é perfeito")
else:
    print(Numero, "não é perfeito")