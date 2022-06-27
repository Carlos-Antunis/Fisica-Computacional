/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar as raízes reais de equação de segundo grau a partir
de seus coeficientes
*/
#include <stdio.h>
#include <math.h>

int main() {
    double Termo_Independente, Coeficiente_Linear, Coeficiente_Quadratico;
    double Solucao_1, Solucao_2, Descriminante;

    //Obter os coeficientes
    printf("Informe o termo independente: ");
    scanf("%lf", &Termo_Independente);
    printf("Informe o coeficiente linear: ");
    scanf("%lf", &Coeficiente_Linear);
    printf("Informe o coeficiente quadrático: ");
    scanf("%lf", &Coeficiente_Quadratico);

    //Computar o descriminante
    Descriminante = Coeficiente_Linear * Coeficiente_Linear 
                    - 4.0 * Coeficiente_Quadratico * Termo_Independente;

    if (Descriminante > 0) { //há duas soluções reais dadas pela
                             //fórmula resolvente de segundo grau
        Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante))
                    / (2.0 * Coeficiente_Quadratico);
        Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante))
                    / (2.0 * Coeficiente_Quadratico);
        printf("há duas soluções reais: x1 = %lf e x2 = %lf\n", Solucao_1, Solucao_2);
    } else if (Descriminante == 0) { //há uma única solução real dadas pela
                                     //fórmula resolvente de segundo grau que
                                     //neste caso reduz-se para x = -b/2a
        Solucao_1 = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico);
        printf("há uma solução real: x = %lf\n", Solucao_1);
    } else { //não há soluções reais
        printf("não há soluções reais\n");
    }

    return 0;
}