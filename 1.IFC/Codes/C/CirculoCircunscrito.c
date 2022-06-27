/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar área de um polígono regular inscrito numa 
circunferência
*/
#include <stdio.h>
#include <math.h>

int main() {
    double Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono;
    unsigned Numero_de_Lados_do_Poligono;
    const double pi = M_PI;

    //Obter o raio do círculo
    printf("Insira o valor do raio do círculo: ");
    scanf("%lf", &Raio_do_Circulo);

    //Obter a quantidade de lados do polígono inscrito
    printf("nsira o número de lados do polígono inscrito: ");
    scanf("%u",&Numero_de_Lados_do_Poligono);

    //Calcular o ângulo entre o raio e a apotema
    Angulo = pi/Numero_de_Lados_do_Poligono;

    //Calcular o lado do polígono
    Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo);

    //Calcular a apotema do polígono
    Apotema = Raio_do_Circulo * cos(Angulo);

    //Calcular o perímetro do polígono
    Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono;

    //Calcular a área do polígono
    Area_do_Poligono = Perimetro * Apotema / 2.0;
    printf("A área do polígono vale: %lf\n", Area_do_Poligono);

    return 0;
}