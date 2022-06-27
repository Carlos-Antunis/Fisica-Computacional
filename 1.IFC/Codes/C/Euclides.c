/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o MDC de dois números pelo
Algoritmo de euclides
*/
#include <stdio.h>

unsigned MDC(unsigned, unsigned);

int main() {
    unsigned numero_1, numero_2;

    // Obter os números
    printf("Informe o primeiro número: ");
    scanf("%u", &numero_1);
    printf("Informe o segundo número: ");
    scanf("%u", &numero_2);

    // Compute o MDC destes
    printf("o MDC entre %u e %u é: %u\n", numero_1, numero_2, MDC(numero_1, numero_2));

    return 0;
}

unsigned MDC(unsigned a, unsigned b) {
    if (b == 0)
        return a; // condição de quebra
    else
        return MDC(b, a % b); // condição de recursão
}