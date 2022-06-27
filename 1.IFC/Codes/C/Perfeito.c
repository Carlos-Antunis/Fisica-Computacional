/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar se um número é perfeito
*/
#include <stdio.h>

int main() {
    unsigned Numero, Soma_dos_Fatores;

    //Obter o número
    printf("Informe o número a ser testado: ");
    scanf("%u", &Numero);

    //Somar todos os fatores do Número
    Soma_dos_Fatores = 0;
    for (int fator = 1; fator < Numero; fator++)
        if (Numero % fator == 0)
            Soma_dos_Fatores += fator;

    if (Numero == Soma_dos_Fatores) {//Se o número for
                                     //a soma dos fatores
                                     //ele é perfeito
        printf("%u é perfeito\n", Numero);
    } else {
        printf("%u não é perfeito\n", Numero);
    }

    return 0;
}