#include<stdio.h>
int main(void) {
  double pi = 3.14159265359;
  double Lado_do_Quadrado;
  double Raio_do_Circulo, Area_do_Circulo;

  //obter o valor do lado do quadrado
  printf("Insira o valor do lado do quadrado: ");
  scanf("%lf",&Lado_do_Quadrado);

  //obter o raio em função do lado
  Raio_do_Circulo = Lado_do_Quadrado / 2.0;

  //obter a área do circulo
  Area_do_Circulo = pi * Raio_do_Circulo * Raio_do_Circulo;

  //retornar o valor da área
  printf("A area do quadrado e: %lf\n", Area_do_Circulo);
  return 0;
}