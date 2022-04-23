/*
Autor: Carlos Antunis Bonfim da Silva Santos
Programa para obter a solução de uma equação de segundo grau
*/
#include <stdio.h>
#include <math.h>
int main()
{
	double A,B,C;
	double Descriminante;
	double Solucao_1, Solucao_2;

	//Obter os coeficientes
	printf("Insira o coeficiente quadratico: ");
	scanf("%lf",&A);
	printf("Insira o coeficiente linear: ");
	scanf("%lf",&B);
	printf("Insira o termo independente: ");
	scanf("%lf",&C);

	//Calcular o descriminante
	Descriminante = B*B - 4.0*A*C;

	if (Descriminante > 0.0) {
		//Caso o descriminante seja nulo há duas soluções
		Descriminante = sqrt(Descriminante);
		Solucao_1 = (-B - Descriminante)/(2.0*A);
		Solucao_2 = (-B + Descriminante)/(2.0*A);

		//Retornar a solução
		printf("as solucoes sao x = %lf e x = %lf\n", Solucao_1, Solucao_2);
	} else if (Descriminante == 0.0) {
		//Caso o descriminante seja nulo há apenas uma solução
		Solucao_1 = -B/(2.0*A);

		//Retornar a solução
		printf("ha apenas como solucao x = %lf\n", Solucao_1);
	} else {
		//Caso o descriminante seja negativo não há soluções reais
		printf("nao ha raizes reais\n");
	}

	return 0;
}
