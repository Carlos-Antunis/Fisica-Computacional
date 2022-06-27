/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o valor da hipotenusa de um triângulo retângulo
com catetos informados pelo usuário
*/
#include <iostream>
#include <cmath>

int main() {
    double Cateto_1, Cateto_2, Hipotenusa;

    //Obter o primeiro cateto
    std::cout << "Informe o primeiro cateto: ";
    std::cin >> Cateto_1;

    //Obter o segundo cateto
    std::cout << "Informe o segundo cateto: ";
    std::cin >> Cateto_2;

    //Computar a hipotenusa
    Hipotenusa = sqrt(Cateto_1 * Cateto_1 + Cateto_2 * Cateto_2);
    std::cout << "A hipotenusa é " <<  Hipotenusa;

    return 0;
}