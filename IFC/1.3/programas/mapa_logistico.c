/*
Autor: Carlos Antunis Bonfim da Silva Santos
Programa para obter o gráfico de bifurcações do mapa logístico
*/
#include <stdio.h>
int main()
{
	double const dr = 0.0001;
	double const dx = 0.01;
	double X_mapa;

	FILE *Grafico_das_Bifurcacoes = fopen("Bifurcacoes.dat","w");

	//Para cada parametro possível
	for (double r = 3.0; r <= 4.0; r += dr)
	{
		//Para cada possível condição inicial
		for (double X_0 = 0.1; X_0 <= 1.0; X_0 += dx)
		{
			//Definir o valor da condição inicial
			X_mapa = X_0;

			//Obter o comportamento assitótico do mapa
			for(int Iteracao = 0; Iteracao < 15000; Iteracao++) X_mapa = r*X_mapa*(1.0 - X_mapa);

			//Retornar o valor da iteração do mapa
			fprintf(Grafico_das_Bifurcacoes, "%lf %lf\n", r, X_mapa);
		}
	}

	fclose(Grafico_das_Bifurcacoes);
	return 0;
}