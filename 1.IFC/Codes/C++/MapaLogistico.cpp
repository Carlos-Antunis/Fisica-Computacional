/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o comprimento de uma circunferência com raio
informado pelo usuário
*/
#include <fstream>

int main() {
    const double dr = 0.0001, dx = 0.01;
    double X_mapa;
    //Arquivo dos dados
    std::ofstream Grafico_das_Bifurcacoes;

    //Abrir o arquivo de dados
    Grafico_das_Bifurcacoes.open("Bifurcacoes.dat");

    //Para cada parametro possível
    for (double r = 3.0; r < 4.0 ; r+=dr) {
        //Para cada condição inicial
        for (double X_0 = 0.1; X_0 < 1.0; X_0+=dx) {
            X_mapa = X_0;
            //Obter o comportamento assintótico do mapa
            for (int Iteracao = 0; Iteracao < 15000; Iteracao++)
                X_mapa = r * X_mapa * (1.0 - X_mapa);

            //Escrever o valor do mapa do mapa
            Grafico_das_Bifurcacoes << r << X_mapa;
        }
    }

    //Fechar o arquivo de dados
    Grafico_das_Bifurcacoes.close();

    return 0;
}