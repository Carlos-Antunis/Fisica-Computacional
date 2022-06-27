# **SUBPROCESSOS E CONTROLE DE FLUXO**

[Voltar ao sumário](../../../README.md)

# Controle de fluxo

## Controle condicional

### Construto `if`

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos o construto `if`

```c
if (/*expressão lógica*/) {
//    Bloco de processos
}
```

### Construto `if-else`

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos do construto `if-else`

```c
if (/*expressão lógica*/) {
//    Bloco de processos caso VERDADEIRO
} else {
//    Bloco de processos caso FALSO
}
```

### Construto `if-elseif-else`

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos o construto `if-else if-else`

```c
if (/*expressão lógica 1*/) {
//    Bloco de processos caso if
} else if (/*expressão lógica 2*/) {
//    Bloco de processos caso else if
} else {
//    Bloco de processos caso else
}
```

>**EXEMPLO.** Implementação de um código que lê os coeficientes de uma equação de segundo grau e retorna suas raízes reais.
>```c
>#include <stdio.h>
>#include <math.h>
>
>int main() {
>    double Termo_Independente, Coeficiente_Linear, Coeficiente_Quadratico;
>    double Solucao_1, Solucao_2, Descriminante;
>
>    //Obter os coeficientes
>    printf("Informe o termo independente: ");
>    scanf("%lf", &Termo_Independente);
>    printf("Informe o coeficiente linear: ");
>    scanf("%lf", &Coeficiente_Linear);
>    printf("Informe o coeficiente quadrático: ");
>    scanf("%lf", &Coeficiente_Quadratico);
>
>    //Computar o descriminante
>    Descriminante = Coeficiente_Linear * Coeficiente_Linear 
>                    - 4.0 * Coeficiente_Quadratico * Termo_Independente;
>
>    if (Descriminante > 0) { //há duas soluções reais dadas pela
>                             //fórmula resolvente de segundo grau
>        Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante))
>                    / (2.0 * Coeficiente_Quadratico);
>        Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante))
>                    / (2.0 * Coeficiente_Quadratico);
>        printf("há duas soluções reais: x1 = %lf e x2 = %lf\n", Solucao_1, Solucao_2);
>    } else if (Descriminante == 0) { //há uma única solução real dadas pela
>                                     //fórmula resolvente de segundo grau que
>                                     //neste caso reduz-se para x = -b/2a
>        Solucao_1 = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico);
>        printf("há uma solução real: x = %lf\n", Solucao_1);
>    } else { //não há soluções reais
>        printf("não há soluções reais\n");
>    }
>
>    return 0;
>}
>```

## Controle de repetição

### Construto `for`

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos o construto `for`

```c
for (/*condição inicial*/;/*condição final*/;/*incremento*/) {
//Bloco de processos
}
```

>**EXEMPLO.** implementação de um código que lê um número e testa se ele é perfeito
>```c
>#include <stdio.h>
>
>int main() {
>    unsigned Numero, Soma_dos_Fatores;
>
>    //Obter o número
>    printf("Informe o número a ser testado: ");
>    scanf("%u", &Numero);
>
>    //Somar todos os fatores do Número
>    Soma_dos_Fatores = 0;
>    for (int fator = 1; fator < Numero; fator++)
>        if (Numero % fator == 0)
>            Soma_dos_Fatores += fator;
>
>    if (Numero == Soma_dos_Fatores) {//Se o número for
>                                     //a soma dos fatores
>                                     //ele é perfeito
>        printf("%u é perfeito\n", Numero);
>    } else {
>        printf("%u não é perfeito\n", Numero);
>    }
>
>    return 0;
>}
>```

### Construto `while`

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `while`

```c
while (/*expressão lógica*/) {
//    Bloco de processos
}
```

### Instruções `break` e `continue`

- Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `break`

- Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `continue`

## Lendo e escrevendo dados em arquivos

Para se ler e escrever dados num arquivo, em C, utilizamos a biblioteca `stdio.h`.

- Para abrir um arquivo utilizamos o comando `fopen`

- Para escrever dados utilizamos o comando `fprintf`

- Para ler dados utilizamos o comando `fscanf`

- Para abrir um arquivo utilizamos o comando `fclose`

>EXEMPLO 2. Implementação de um código que computa o gráfico de bifurcações do mapa logístico.
>```c
>#include <stdio.h>
>
>int main() {
>    const double dr = 0.0001, dx = 0.01;
>    double X_mapa;
>    //Arquivo dos dados
>    FILE *Grafico_das_Bifurcacoes = fopen("Bifurcacoes.dat", "w");
>
>    //Para cada parametro possível
>    for (double r = 3.0; r < 4.0 ; r+=dr) {
>        //Para cada condição inicial
>        for (double X_0 = 0.1; X_0 < 1.0; X_0+=dx) {
>            X_mapa = X_0;
>            //Obter o comportamento assintótico do mapa
>            for (int Iteracao = 0; Iteracao < 15000; Iteracao++)
>                X_mapa = r * X_mapa * (1.0 - X_mapa);
>
>            //Escrever o valor do mapa do mapa
>            fprintf(Grafico_das_Bifurcacoes, "%lf %lf\n", r, X_mapa);
>        }
>    }
>
>    //Fechar o arquivo de dados
>    fclose(Grafico_das_Bifurcacoes);
>
>    return 0;
>}
>```


## Estruturas matriciais de dados

### Vetores

Para se armazenar uma lista de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Lista_de_Variaveis[Quantidade];
```

Podemos acessar o valor de uma lista por acessar seu elemento

```c
//atribui valor ao i-ésimo elemento na lista
Lista[i] = valor;
```

### Matrizes

Para se armazenar uma matrizes de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Matriz_de_Variaveis[Linhas][Colunas];
```

Podemos acessar o valor de uma matriz por acessar seu elemento

```c
//atribui valor ao (i,j)-ésimo elemento na matriz
Matriz[i][j] = valor;
```

### Construtores

Podemos inicializar listas de forma simplificada utilizando os construtores

```c
tipo Lista[Quantidade] = {
    [i] valor,                  /*inicializa o i-ésimo elemento como valor*/

    [n ... m] valor,            /*inicializa do n-ésimo ao m-ésimo elemento
                                * como valor*/
};
```
Podemos inicializar matrizes de forma simplificada utilizando os construtores

```c
tipo Matriz[Linhas][Colunas] = {
    [i][j] valor,               /*inicializa o elemento da i-ésima linha da 
                                * j-ésima coluna como valor*/

    [i][l ... p] valor,         /*inicializa os elementos da i-ésima linha
                                * da l-ésima à p-ésima coluna como
                                * valor*/

    [n ... m][j] valor,         /*inicializa os elementos da j-ésima coluna
                                * da n-ésima à m-ésima linha como valor*/

    [n ... m][l ... p] valor,   /*inicializa os elementos da l-ésima à
                                * p-ésima coluna da n-ésima à m-ésima
                                * linha como valor*/
};
```

# Subprocessos

## Subrotinas

Subprocessos podem ser declarados como `void`

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

## Funções

Funções podem ser criadas como subrotinas que retornam valor de um tipo

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

>**EXEMPLO.** Implementação de um código para computar o gráfico da função de Bessel Bessel(0.5,x).
>```c
>#include <stdio.h>
>#include <math.h>
>
>double Bessel_0p5(double); //Função de Bessel recebe um real
>
>int main() {
>    const double dx = 0.05;
>    double y;
>    FILE *Grafico_de_Bessel_0p5 = fopen("Bessel0p5.dat", "w");
>
>    for (double x = 0.1; x <= 20.0; x += dx){ //Para cada valor de x
>                                              // escreva x e sua aplicação
>        y = Bessel_0p5(x);
>        fprintf(Grafico_de_Bessel_0p5, "%lf %lf\n", x, y);
>    }
>
>    fclose(Grafico_de_Bessel_0p5);
>
>    return 0;
>}
>
>double Bessel_0p5(double x)
>{
>    const double pi = M_PI;
>    double Bessel0p5_de_x = sqrt(2.0 / (pi * x)) * sin(x);
>    return Bessel0p5_de_x;
>}
>```

>**EXEMPLO.** Implementação do código que obtém o MDC de dois números pelo Algoritmo de Euclides
>```c
>#include <stdio.h>
>
>unsigned MDC(unsigned, unsigned);
>
>int main() {
>    unsigned numero_1, numero_2;
>
>    // Obter os números
>    printf("Informe o primeiro número: ");
>    scanf("%u", &numero_1);
>    printf("Informe o segundo número: ");
>    scanf("%u", &numero_2);
>
>    // Compute o MDC destes
>    printf("o MDC entre %u e %u é: %u\n", numero_1, numero_2, MDC(numero_1, numero_2));
>
>    return 0;
>}
>
>unsigned MDC(unsigned a, unsigned b) {
>    if (b == 0)
>        return a; // condição de quebra
>    else
>        return MDC(b, a % b); // condição de recursão
>}
>```

>**EXERCÍCIO 1.** Implemente um código capaz de computar o fatorial de um número
>
>[Resposta](../../Codes/C/Fatorial.c)

>**EXERCÍCIO 2.** Implemente um código para computar o n-ésimo número da sequênia de Fibonacci.
>
>[Resposta](../../Codes/C/Fibonacci.c)