/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar a área de um triângulo a partir da fórmula
de Heron
*/
#include <iostream>
#include <cmath>

int main() {
    double Lado_1, Lado_2, Lado_3;
    double Semiperimetro, Area_do_Triangulo;

    //Obter o valor dos lado do triângulo
    std::cout << "Informe o primeiro valor do lado do triângulo: ";
    std::cin >> Lado_1;
    std::cout << "Informe o segundo valor do lado do triângulo: ";
    std::cin >> Lado_2;
    std::cout << "Informe o terceiro valor do lado do triângulo: ";
    std::cin >> Lado_3;

    //Computar o semiperímetro
    Semiperimetro = (Lado_1 + Lado_2 + Lado_3) / 2.0;

    //Computar a área do triângulo
    Area_do_Triangulo = sqrt(Semiperimetro * 
                        (Semiperimetro - Lado_1) * 
                        (Semiperimetro - Lado_2) * 
                        (Semiperimetro - Lado_3));
    std::cout << "A área do triângulo é: " << Area_do_Triangulo;

    return 0;
}