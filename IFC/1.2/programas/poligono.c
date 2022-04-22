/*
Autor: Carlos Antunis Bonfim da Silva Santos
Programa para obter a área de um polígono regular de N lados inscrito numa circunferencia de raio R
*/
#include <stdio.h>
#include <math.h>
int main(void)
{
	double const pi = 3.14159265359;
	double Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono;
	unsigned Numero_de_Lados_do_Poligono;

	//Obter o raio do circulo
	printf("Insira o valor do raio do circulo: ");
	scanf("%lf",&Raio_do_Circulo);

	//Obter a quantidade de lados do poligono inscrito
	printf("nsira o numero de lados do poligono inscrito: ");
	scanf("%u",&Numero_de_Lados_do_Poligono);


	//Calcular o ângulo entre o raio e a apotema
	Angulo = pi/Numero_de_Lados_do_Poligono;

	//Calcular o lado do polígono
	Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo);

	//Calcular a apotema do poligono
	Apotema = Raio_do_Circulo * cos(Angulo);

	//Calcular o perímetro do polígono
	Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono;

	//Calcular a área do polígono
	Area_do_Poligono = Perimetro * Apotema / 2.0;

	//Retornar a area do poligono
	printf("A area do poligono vale: %lf\n", Area_do_Poligono);

	return 0;
}
