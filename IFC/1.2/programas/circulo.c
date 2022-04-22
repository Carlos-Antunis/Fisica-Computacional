/*
Autor: Carlos Antunis Bonfim da Silva Santos
Programa para obter a área de um círculo inscrito num quadrado de lado L
*/
#include<stdio.h>
int main(void) {
    double const pi = 3.14159265359;
    double Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo;

    //Obter o valor do lado do quadrado
    printf("Insira o valor do lado do quadrado: ");
    scanf("%lf",&Lado_do_Quadrado);

    //Calcular o raio do circulo
    Raio_do_Circulo = Lado_do_Quadrado / 2.0;

    //Calcular a área do circulo
    Area_do_Circulo = pi * Raio_do_Circulo * Raio_do_Circulo;

    //Retornar o valor da área
    printf("A area do circulo vale: %lf\n", Area_do_Circulo);
    return 0;
}