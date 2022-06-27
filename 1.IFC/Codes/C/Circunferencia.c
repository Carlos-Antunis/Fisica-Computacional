/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o comprimento de uma circunferência com raio
informado pelo usuário
*/
#include <stdio.h>
#include <math.h>

int main() {
    double Raio_do_Circulo, Comprimento_da_Circunferencia;
    const double pi = M_PI; //Valor de pi da math.h

    //Obter o raio do círculo
    printf("Informe o raio do círculo: ");
    scanf("%lf", &Raio_do_Circulo);/*Lendo um valor double e armazenando-o
                                     na variável de nome Raio_do_Circulo*/

    //Computar o comprimento da circunferencia
    Comprimento_da_Circunferencia = 2.0 * pi * Raio_do_Circulo;
    printf("O perímetro é %lf\n", Comprimento_da_Circunferencia);

    return 0;
}
