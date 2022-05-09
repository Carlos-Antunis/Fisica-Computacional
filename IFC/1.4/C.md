# **SUBPROCESSOS E FUNÇÕES**

[Voltar ao sumário](../../README.md)

## ***FUNÇÕES***

Funções podem ser criadas por

```c
tipo nome_da_funcao(/*parâmetros prototipados*/) //declaração da função
int main(){/*...*/} //processo princípal do programa
tipo nome_da_funcao(/*parâmetros*/)
{
    //declaração de variáveis
    //Implementação de processos a fim de se obter o resultado
    return (/*resultado*/);
}
```

>EXEMPLO 1. Implementação de um programa que computa o gráfico da função de Bessel para m = 0.5.
>```c
>#include<stdio.h>
>#include<math.h>
>double Bessel_0p5(double); //função de Bessel recebe um real
>int main()
>{
>   const double dx = 0.05;
>   double y;
>   FILE *Grafico_de_Bessel_0p5 = fopen("Bessel0p5.dat","w");
>
>   for(double x = 0.1; x <= 20.0; x+=dx) { /*Para cada valor de x
>                                           * escreva x e sua aplicação*/
>       y = Bessel_0p5(x);
>       fprintf(Grafico_de_Bessel_0p5,"%lf %lf\n", x, y);
>    }
>
>    fclose(Grafico_de_Bessel_0p5);
>
>    return 0;
>}
>double Bessel_0p5(double x)
>{
>    const double pi = 3.14159265359;
>    double Bessel0p5_de_x = sqrt(2.0/(pi*x))*sin(x);
>    return Bessel0p5_de_x;
>}
>```

>EXEMPLO 2. Implementação de um programa que computa o mínimo divisor comum de dois naturais pelo algoritmo de Euclides.
>```c
>#include<stdio.h>
>unsigned MDC(unsigned, unsigned);
>int main()
>{
>    unsigned numero_1, numero_2;
>
>    //Obter os números
>    printf("Informe o primeiro número: ");
>    scanf("%u",&numero_1);
>    printf("Informe o segundo número: ");
>    scanf("%u",&numero_2);
>
>    //Compute o MDC destes
>    printf("o MDC entre %u e %u é: %u\n", numero_1,numero_2,MDC(numero_1,numero_2));
>
>    return 0;
>}
>unsigned MDC(unsigned a, unsigned b)
>{
>    if(b == 0) return a; //condição de quebra
>    else return MDC(b,a % b); //condição de recursão
>}
>```

> EXERCÍCIO 1. Implemente um código capaz de computar o volume (em Litros) de um gás ideal a partir de sua pressão (em atm), temperatura (em Kelvin) e número de mols.
>
>[Resposta](./programas/gas_ideal.c)

> EXERCÍCIO 2. Implemente um código capaz de computar o valor do fatorial de um natural.
>
>[Resposta](./programas/fatorial.c)

> EXERCÍCIO 3. Implemente um código capaz de computar o n-ésimo termo da sequência de Fibonacci.
>
>[Resposta](./programas/fibonacci.c)

## ***SUBROTINAS***

Subprocessos podem ser declarados como funções que não retornam valor

```c
void nome_do_subprocesso(/*parâmetros prototipados*/) //declaração da subrotina
int main(){/*...*/} //processo princípal do programa
void nome_do_subprocesso(/*parâmetros*/)
{
    //declaração de variáveis
    //Implementação de processos executados no subprocesso
    return;
}
```

>EXEMPLO 3. Implementação de um programa com um subprocesso que computa a posição de uma partícula em movimento retilíneo uniformemente variado em função do tempo dada sua configuração inicial.
>```c
>#include<stdio.h>
>void escrever_grafico_MRUV(double,double, double);
>int main()
>{
>    double posicao_inicial, velocidade_inicial, aceleracao;
>
>   //Obter a configuração do sistema
>   printf("Informe a posição inicial: ");
>   scanf("%lf",&posicao_inicial);
>   printf("Informe a velocidade inicial: ");
>   scanf("%lf",&velocidade_inicial);
>   printf("Informe a aceleração: ");
>   scanf("%lf",&aceleracao);
>
>    //Executar o subprocesso
>    escrever_grafico_MRUV(posicao_inicial, velocidade_inicial, aceleracao);
>
>    return 0;
>}
>void escrever_grafico_MRUV(double x_0, double v_0, double a)
>{
>    const double Tempo_Maximo = 100.0, dt = 0.5;
>    double x;
>    FILE *Grafico_MRU = fopen("GraficoMRUV.dat","w");
>
>    for (double tempo = 0; tempo < Tempo_Maximo; tempo+=dt)
>    {
>        x = x_0 + v_0 * tempo + a/2.0 * tempo * tempo;
>        fprintf(Grafico_MRU,"%lf %lf\n", tempo, x);
>    }
>
>    fclose(Grafico_MRU);
>
>    return;
>}
>```
