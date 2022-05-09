/*
* Autor: Carlos Antunis Bonfim da Silva Santos
* Sobre:
* Programa para obter o n-ésimo termo da sequência de
* Fibonacci
*/
#include<stdio.h>
unsigned fibonacci(unsigned);
int main()
{
   unsigned numero;

   //Obter o número
   printf("Informe um número: ");
   scanf("%u",&numero);

   //Compute o n-ésimo termo da sequência de Fibonacci
   printf("o %uº termo da sequência de Fibonacci é %u\n", numero,fibonacci(numero));
}
unsigned fibonacci(unsigned n)
{
    if (n == 0) return 0;
    else if (n == 1) return 1;
    else return fibonacci(n-1) + fibonacci(n-2);
}