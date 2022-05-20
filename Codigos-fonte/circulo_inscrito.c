/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para obter a área de um círculo a partir
* do lado de um quadrado que o circunscreve.
*/
#include<stdio.h>
int main()
{
    double Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo;
    const double pi = 3.14159265359;

    //Obter o valor do lado do quadrado
    printf("Informe o valor do lado do quadrado: ");
    scanf("%lf", &Lado_do_Quadrado);

    //Computar o raio do círculo
    Raio_do_Circulo = Lado_do_Quadrado / 2.0;

    //Computar a área do círculo
    Area_do_Circulo = pi * Raio_do_Circulo * Raio_do_Circulo;
    printf("A área do círculo vale: %lf\n", Area_do_Circulo);

    return 0;
}
