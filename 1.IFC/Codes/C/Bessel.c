/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o gráfico da função Bessel(0.5,x)
*/
#include <stdio.h>
#include <math.h>

double Bessel_0p5(double); //Função de Bessel recebe um real

int main() {
    const double dx = 0.05;
    double y;
    FILE *Grafico_de_Bessel_0p5 = fopen("Bessel0p5.dat", "w");

    for (double x = 0.1; x <= 20.0; x += dx){ //Para cada valor de x
                                              // escreva x e sua aplicação
        y = Bessel_0p5(x);
        fprintf(Grafico_de_Bessel_0p5, "%lf %lf\n", x, y);
    }

    fclose(Grafico_de_Bessel_0p5);

    return 0;
}

double Bessel_0p5(double x)
{
    const double pi = M_PI;
    double Bessel0p5_de_x = sqrt(2.0 / (pi * x)) * sin(x);
    return Bessel0p5_de_x;
}