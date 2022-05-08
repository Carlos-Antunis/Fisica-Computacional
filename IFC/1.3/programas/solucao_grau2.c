/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para testar se um número é solução de uma
* equação de segundo grau.
*/
#include<stdio.h>
#include<math.h>
int main()
{
    double numero, coeficiente[3], resultado;

    // Obter o número
    printf("Informe o número: ");
    scanf("%lf", &numero);

    // Obter os coeficientes
    printf("Informe o termo independente: ");
    scanf("%lf", &coeficiente[0]);
    printf("Informe o coeficiente linear: ");
    scanf("%lf", &coeficiente[1]);
    printf("Informe o coeficiente quadrático: ");
    scanf("%lf", &coeficiente[2]);

    //Computar o valor da equação para o número fornecido
    resultado = coeficiente[0] +
                coeficiente[1] * numero +
                coeficiente[2] * pow(numero, 2.0);
    if (resultado == 0.0) {
        printf("%lf é solução\n", numero);
    } else {
        printf("%lf não é solução\n", numero);
    }

    return 0;
}