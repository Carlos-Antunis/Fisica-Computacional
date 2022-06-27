/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o valor da hipotenusa de um triângulo retângulo
com catetos informados pelo usuário
*/
#include <stdio.h>
#include <math.h>

int main() {
    double Cateto_1, Cateto_2, Hipotenusa;

    //Obter o primeiro cateto
    printf("Informe o primeiro cateto: ");
    scanf("%lf", &Cateto_1);

    //Obter o segundo cateto
    printf("Informe o segundo cateto: ");
    scanf("%lf", &Cateto_2);

    //Computar a hipotenusa
    Hipotenusa = sqrt(Cateto_1 * Cateto_1 + Cateto_2 * Cateto_2);
    printf("A hipotenusa é %lf\n", Hipotenusa);

    return 0;
}