/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o comprimento de uma circunferência com raio
informado pelo usuário
*/
#include <iostream>
#include <cmath>

int main() {
    double Raio_do_Circulo, Comprimento_da_Circunferencia;
    const double pi = M_PI;

    //Obter o raio do círculo
    std::cout << "Informe o raio do círculo: ";
    std::cin >> Raio_do_Circulo;/*Lendo um valor double e armazenando-o
                                  na variável de nome Raio_do_Circulo*/

    //Computar o comprimento da circunferencia
    Comprimento_da_Circunferencia = 2.0 * pi * Raio_do_Circulo;
    std::cout << "O perímetro é " << Comprimento_da_Circunferencia;

    return 0;
}