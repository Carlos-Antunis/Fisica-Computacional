/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar a área de um círculo a partir do lado de um
quadrado que o circunscreve
*/
#include <iostream>
#include <cmath>

int main() {
    double Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo;
    const double pi = M_PI;

    //Obter o valor do lado do quadrado
    std::cout << "Informe o valor do lado do quadrado: ";
    std::cin >> Lado_do_Quadrado;

    //Computar o raio do círculo
    Raio_do_Circulo = Lado_do_Quadrado / 2.0;

    //Computar a área do círculo
    Area_do_Circulo = pi * Raio_do_Circulo * Raio_do_Circulo;
    std::cout << "A área do círculo vale: " << Area_do_Circulo;

    return 0;
}