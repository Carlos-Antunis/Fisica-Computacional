/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para testar se um número é perfeito.
*/
#include<stdio.h>
int main()
{
    unsigned numero, soma_dos_fatores=0;

    // Obter o número
    printf("Informe o número: ");
    scanf("%u", &numero);

    for (unsigned fator = 1; fator < numero; fator++) {
        if (numero % fator == 0) {  /*Se um fator inteiro divide o número
                                    * então some na soma dos divisores*/
        printf("%u\n", fator);
            soma_dos_fatores += fator;
        }
    }

    if (soma_dos_fatores == numero) {   /*Se a soma dos divisores for exatamente
                                        * o número, ele é um número perfeito*/
        printf("%u é perfeito\n", numero);
    } else { //Caso contrário ele não é perfeito
        printf("%u não é perfeito\n", numero);
    }

    return 0;
}