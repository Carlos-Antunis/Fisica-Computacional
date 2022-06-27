#Autor: Carlos Antunis Bonfim da Silva Santos
#Objetivo:
#Computar o comprimento de uma circunferência com raio
#informado pelo usuário

CONST_dr = 0.0001
CONST_dx = 0.01

#Com o arquivo de dados aberto
with open("Bifurcacoes.dat","w") as Grafico_das_Bifurcacoes:
    #Para cada parametro possível
    r = 3.0
    while (r < 4.0):
        #Para cada condição inicial
        X_0 = 0.1
        while(X_0 < 1.0):
            X_mapa = X_0
            for Iteracao in range(0, 15000):
                X_mapa = r * X_mapa * (1.0 - X_mapa)

            #Escrever o valor do mapa do mapa
            Grafico_das_Bifurcacoes.write(r, X_mapa)

            X_0 = X_0 + CONST_dx
        r = r + CONST_dr