/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para obter o volume de um gás ideal a partir das demais
* variáveis termodinâmicas.
*/
#include<stdio.h>
double Volume_gas_ideal(double, double, unsigned);
int main()
{
    double Pressao_do_Gas, Temperatura_do_Gas, Volume_do_Gas;
    unsigned N_mols;

    //Obter as variáveis de estado
    printf("Informe o número de mols: ");
    scanf("%u",&N_mols);
    printf("Informe a pressão em atm: ");
    scanf("%lf",&Pressao_do_Gas);
    printf("Informe a temperatura em kelvin: ");
    scanf("%lf",&Temperatura_do_Gas);

    //Obter o volume ocupado pelo gás ideal
    Volume_do_Gas = Volume_gas_ideal(Pressao_do_Gas,Temperatura_do_Gas,N_mols);
    printf("O volume ocupado pelo gás é de %lf L.\n", Volume_do_Gas);

    return 0;
}
double Volume_gas_ideal(double Pressao, double Temperatura, unsigned N_mols)
{
    const double R = 0.08205746;
    return N_mols*R*Temperatura/Pressao;
}