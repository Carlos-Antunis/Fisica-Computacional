/*
Autor: Carlos Antunis Bonfim da Silva Santos
Objetivo:
Computar o fatorial de um número
*/
#include <stdio.h>

unsigned fatorial(unsigned);

int main() {
    unsigned numero;

    // Obter o número
    printf("Informe o número: ");
    scanf("%u", &numero);

    // Compute o fatorial deste
    printf("%u! = %u\n", numero, fatorial(numero));
}

unsigned fatorial(unsigned n) {
    if (n == 0)
        return 1;
    else
        return n * fatorial(n - 1);
}