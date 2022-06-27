/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar as raízes reais de equação de segundo grau a partir
de seus coeficientes
*/
#include <iostream>
#include <cmath>

int main() {
    double Termo_Independente, Coeficiente_Linear, Coeficiente_Quadratico;
    double Solucao_1, Solucao_2, Descriminante;

    //Obter os coeficientes
    std::cout << "Informe o termo independente: ";
    std::cin >> Termo_Independente;
    std::cout << "Informe o coeficiente linear: ";
    std::cin >> Coeficiente_Linear;
    std::cout << "Informe o coeficiente quadrático: ";
    std::cin >> Coeficiente_Quadratico;

    //Computar o descriminante
    Descriminante = Coeficiente_Linear * Coeficiente_Linear 
                    - 4.0 * Coeficiente_Quadratico * Termo_Independente;

    if (Descriminante > 0) { //há duas soluções reais dadas pela
                             //fórmula resolvente de segundo grau
        Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante))
                    / (2.0 * Coeficiente_Quadratico);
        Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante))
                    / (2.0 * Coeficiente_Quadratico);
        std::cout << "há duas soluções reais: x1 = " << Solucao_1 << " e x2 = " << Solucao_2;
    } else if (Descriminante == 0) { //há uma única solução real dadas pela
                                     //fórmula resolvente de segundo grau que
                                     //neste caso reduz-se para x = -b/2a
        Solucao_1 = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico);
        std::cout << "há uma solução real: x = " <<  Solucao_1;
    } else { //não há soluções reais
        std::cout << "não há soluções reais";
    }

    return 0;
}