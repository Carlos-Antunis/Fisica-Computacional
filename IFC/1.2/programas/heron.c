/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para obter a área de um triângulo a partir
* da fórmula de Heron.
*/
#include<stdio.h>
#include<math.h>
int main()
{
    double Lado_1, Lado_2, Lado_3;
    double Semiperimetro, Area_do_Triangulo;

    //Obter o valor dos lados do triângulo
    printf("Informe o primeiro valor do lado do triângulo: ");
    scanf("%lf", &Lado_1);
    printf("Informe o segundo valor do lado do triângulo: ");
    scanf("%lf", &Lado_2);
    printf("Informe o terceiro valor do lado do triângulo: ");
    scanf("%lf", &Lado_3);

    //Computar o semiperímetro
    Semiperimetro = (Lado_1 + Lado_2 + Lado_3) / 2.0;

    //Computar a área do triângulo
    Area_do_Triangulo = sqrt(Semiperimetro * 
        (Semiperimetro - Lado_1) * 
        (Semiperimetro - Lado_2) * 
        (Semiperimetro - Lado_3));
    printf("A área do triângulo é: %lf\n", Area_do_Triangulo);

    return 0;
}
