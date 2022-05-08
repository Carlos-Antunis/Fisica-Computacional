# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)

## ***ESTRUTURAS CONDICIONAIS***

### *CONSTRUTO IF*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos o construto `if`

```c
if (/*expressão lógica*/) {
//    Bloco de processos
}
```

### *CONSTRUTO IF-ELSE*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos do construto `if-else`

```c
if (/*expressão lógica*/) {
//    Bloco de processos caso VERDADEIRO
} else {
//    Bloco de processos caso FALSO
}
```

### *CONSTRUTO IF-ELSEIF-ELSE*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos o construto `if-else if-else`

```c
if (/*expressão lógica*/) {
//    Bloco de processos caso if
} else if (/*expressão lógica 2*/) {
//    Bloco de processos caso else if
} else {
//    Bloco de processos caso else
}
```

>EXEMPLO 1. Implementação de um programa que lê os coeficientes de uma equação de segundo grau e retorna suas raízes caso estas sejam reais.
>```c
>#include<stdio.h>
>#include<math.h>
>int main()
>{
>    double coeficiente[3], solucao[2], descriminante;
>
>    //Obter os coeficientes
>    printf("Informe o termo independente: ");
>    scanf("%lf",&coeficiente[0]);
>    printf("Informe o coeficiente linear: ");
>    scanf("%lf",&coeficiente[1]);
>    printf("Informe o coeficiente quadrático: ");
>    scanf("%lf",&coeficiente[2]);
>
>    //Computar o descriminante
>    descriminante = pow(coeficiente[1],2.0) - 4.0*coeficiente[2]*coeficiente[0];
>
>    if(descriminante > 0) {  /*há duas soluções reais dadas pela
>                             * fórmula resolvente de segundo grau*/
>        solucao[0] = -(coeficiente[1] + sqrt(descriminante))/(2.0*coeficiente[2]);
>        solucao[1] = -(coeficiente[1] - sqrt(descriminante))/(2.0*coeficiente[2]);
>        printf("há duas soluções reais: x1 = %lf e x2 = %lf\n",solucao[0],solucao[1]);
>    } else if(descriminante == 0) {  /*há uma única solução real dadas pela  
>                                    * fórmula resolvente de segundo grau que
>                                    * neste caso reduz-se a x = -b/2a*/
>        solucao[0] = -coeficiente[1]/(2.0*coeficiente[2]);
>        printf("há uma solução real: x = %lf\n",solucao[0]);
>    } else { //não há soluções reais
>        printf("não há soluções reais\n");
>    }
>
>    return 0;
>}
>```

>EXERCÍCIO 1. Implemente um código capaz de, lendo um número e os três coeficientes de uma equação de segundo grau, testar se este é solução desta equação.
>
>[Solução](./programas/solucao_grau2.c)

## **ESTRUTURAS DE REPETIÇÃO**

### ***CONSTRUTO*** *for*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto FOR.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos o construto `for`

```c
for (/*condição inicial*/;/*condição final*/;/*incremento*/) {
//Bloco de processos
}
```

### ***CONSTRUTO*** *while*

<div style = "display: flex-box;width: 300">
  <img style = "width: 400px; margin-right: 2.5rem;" align = "left" src="./images/Construto DO-WHILE.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `while`

```c
while (/*expressão lógica*/) {
//    Bloco de processos
}
```

>EXEMPLO 2. Implementação de um programa que computa o gráfico de bifurcações do mapa logístico.
>```c
>#include <stdio.h>
>int main()
>{
>   double const dr = 0.0001;
>   double const dx = 0.01;
>   double X_mapa;
>
>   FILE *Grafico_das_Bifurcacoes = fopen("Bifurcacoes.dat","w");
>
>   //Para cada parametro possível
>   for (double r = 3.0; r <= 4.0; r += dr) {
>       //Para cada possível condição inicial
>       for (double X_0 = 0.1; X_0 <= 1.0; X_0 += dx) {
>           //Definir o valor da condição inicial
>           X_mapa = X_0;
>
>           //Obter o comportamento assitótico do mapa
>           for(int Iteracao = 0; Iteracao < 15000; Iteracao++)
>               X_mapa = r*X_mapa*(1.0 - X_mapa);
>
>       	//Retornar o valor da iteração do mapa
>       	fprintf(Grafico_das_Bifurcacoes, "%lf %lf\n", r, X_mapa);
>       }
>   }
>
>   fclose(Grafico_das_Bifurcacoes);
>   return 0;
>}
>```

>EXERCÍCIO 2. Implemente um código capaz de, lendo um número averiguar se este é um número perfeito.
>
>[Solução](./programas/perfeito.c)

### ***COMANDO*** *break*

Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `break`

### ***COMANDO*** *continue*

Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `continue`
