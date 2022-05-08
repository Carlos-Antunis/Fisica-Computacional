# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../README.md)

## ***ESTRUTURA DE UM CÓDIGO-FONTE***

A estrutura base de um código fonte é

```c
/*Seção de bibliotecas
    Inserção de bibliotecas necessárias para a execução do programa
*/
int main() {        //inicialização do processo principal
    /*Seção de declaração de variáveis
        Declaração ou inicialização de variáveis necessárias para a execução do processo principal
    */
    /*Seção de comandos executáveis
        Implementação dos processos executados pelo processo principal
    */
    return 0;       //fim da execução do processo principal
}
```

Para se executar um código-fonte C utilizamos o compilador `gcc` para gerar um arquivo executável e depois executá-lo:

```bash
gcc codigo_fonte.c -o nome_do_executavel -lm
./nome_do_executavel
```

## ***VARIÁVEIS E OPERADORES***

### *VARIÁVEIS LÓGICAS*

Variáveis lógicas não são tipos de dados padrão, para usá-los inclui-se a biblioteca `stdbool.h` na seção de bibliotecas, podendo então ser armazenadas em variáveis do tipo `bool`

```c
bool Variavel_Logica;
```

Podemos atribuir valor a uma variável do tipo `bool` por meio do operador de atribuição

```c
dois_eh_primo = true; //pode assumir true ou false
```

Podemos operar variáveis do tipo `bool` por meio das operações lógicas

```c
nao_Logico1 = !Logico1 //operação de negação
Logico1_e_Logico2 = Logico1 && Logico2 //operação de conjunção
Logico1_ou_Logico2 = Logico1 || Logico2 //operação de disjunção
```

Podemos comparar variáveis do tipo `bool` por meio dos comparadores lógicos

```c
A_equivale_B = A == B //comparação de equivalência
A_nao_equivale_B = A != B //comparação de inequivalência
```

### *VARIÁVEIS NUMÉRICAS*

Números naturais podem ser armazenados em variáveis `unsigned`

```c
unsigned Natural;
```

Números inteiros podem ser armazenados em variáveis `int`

```c
int Inteiro;
```

Números reais podem ser armazenados em variáveis `float`, reais de precisão simples, ou `double`, reais de precisão dupla

```c
float Real_Simples;
double Real_Precisao2;
```

Números complexos não são tipos de dados padrão, para usá-los inclui-se a biblioteca `complex.h` na seção de bibliotecas, podendo então ser armazenados em variáveis do tipo `_Complex`, complexos de precisão simples, ou `double __Complex`, complexos de precisão dupla

```c
_Complex Complexo;
double _Complex Complexo_Precisao2;
```

Valores podem ser atribuidos a números por meio do operador de atribuição

```c
zero = 0;                       //Inteiro
pi = 3.14159265359;             //Real
unid_imaginaria = 0.0 + 1.0i;   //Complexo
```

> Números armazenados na memória do computador possuem precisão finita, assim possuem um intervalo de casas de precisão máxima.

Podemos operar aritméticamente sobre números por meio dos operadores aritméticos

```c
A_mais_B = A + B; //operação de soma
A_menos_B = A - B; //operação de subtração
A_vezes_B = A * B; //operação de multiplicação
A_dividido_por_B = A / B; //operação de divisão
resto_A_por_B = A % B; //resto de divisão entre inteiros
```

Podemos comparar variáveis numéricas por meio dos comparadores

```c
A_eh_igual_a_B = A == B; //comparação de igualdade
A_eh_diferente_de_B = A != B; //comparação de desiguadade

A_eh_maior_que_B = A > B; //comparação de superioridade
A_eh_menor_que_B = A < B; //comparação de inferioridade

A_eh_maior_igual_a_B = A >= B; //comparação de superioridade ou igualdade
A_eh_menor_igual_a_B = A <= B; //comparação de inferioridade ou igualdade
```

Podemos simplificar iterações sobre variáveis numéricas por meio dos operadores simplificados

```c
Numero += Numero_1; //Numero = Numero + Numero_1
Numero -= Numero_1; //Numero = Numero - Numero_1
Numero *= Numero_1; //Numero = Numero * Numero_1
Numero /= Numero_1; //Numero = Numero / Numero_1

Numero++; //Numero += 1
Numero--; //Numero -= 1
```

### *VARIÁVEIS ALFANUMÉRICAS*

Caracteres alfanuméricos podem ser armazenados em variáveis `char`

```c
char Caractere;
```

Valores podem ser atribuidos a variáveis do tipo `char` por meio do operador de atribuição

```c
Caractere = 'a';
```

Frases ou palavras podem ser armazenadas em cadeias de `char`

```c
char Frase[Quantidade] = "frase a ser armazenada";
```

## ***CONSTANTES***

Para se definir uma constante utilizamos o modificador `const`

```c
const tipo variavel = valor;
```

## ***LEITURA E ESCRITA DE DADOS***

Para quaisquer operações de leitura e escrita de dados, inclui-se primeiramente a biblioteca `stdio.h`

### *FORMATAÇÃO DE TEXTO*

Podemos formatar a leitura e escrita de dados por meio dos formatadores de tipo

<table align="center" width="75%">
    <thead>
        <th>Tipo da variável</th>
        <th>Formatador de tipo</th>
    </thead>
    <tbody>
        <tr>
            <td>char</td>
            <td><code>%c</code></td>
        </tr>
        <tr>
            <td>char[]</td>
            <td><code>%s</code></td>
        </tr>
        <tr>
            <td>unsigned</td>
            <td><code>%u</code></td>
        </tr>
        <tr>
            <td>int</td>
            <td><code>%d</code></td>
        </tr>
        <tr>
            <td>float</td>
            <td><code>%f</code></td>
        </tr>
        <tr>
            <td>double</td>
            <td><code>%lf</code></td>
        </tr>
    </tbody>
</table>

Além disso podemos formatar também comportamentos especiais de escrita pelas sequências de escape

<table align="center" width="75%">
    <thead>
        <th>ação</th>
        <th>sequência de escape</th>
    </thead>
    <tbody>
        <tr>
            <td>quebra de linha</td>
            <td><code>\n</code></td>
        </tr>
        <tr>
            <td>tabulação</td>
            <td><code>\t</code></td>
        </tr>
    </tbody>
</table>

### *TERMINAL*

Para escrever uma informação no terminal utilizamos o comando `printf`

```c
printf(informacao_formatada, lista_de_variaveis);
```

Para ler uma informação no terminal utilizamos o comando `scanf`

```c
scanf(informacao_formatada, &lista_de_variaveis);
```

>EXEMPLO 1. Implementação de um programa que lê o raio de um círculo e retorna seu perímetro.
>```c
>#include<stdio.h>
>int main()
>{
>    double Raio_do_Circulo, Perimetro_do_Circulo;
>    const double pi = 3.14159265359;
>
>    //Obter o raio do círculo
>    printf("Informe o raio do círculo: ");
>    scanf("%lf",&Raio_do_Circulo);
>
>    //Computar o perímetro
>    Perimetro_do_Circulo = 2.0 * pi * Raio_do_Circulo;
>    printf("O perímetro é: %lf\n", Perimetro_do_Circulo);
>
>    return 0;
>}
>```
>

>EXEMPLO 2. Implementação de um programa que lê um número e informa sua parte inteira e sua parte decimal
>```c
>#include<stdio.h>
>int main()
>{
>    int Parte_inteira = 0;
>    unsigned Parte_decimal = 0;
>
>    //Obter o número
>    printf("Informe o número: ");
>    scanf("%d.%u",&Parte_inteira, &Parte_decimal);
>
>    //Informar sua parte inteira e sua parte decimal
>    printf("Parte inteira: %d\n", Parte_inteira);
>    printf("Parte decimal: 0.%u\n", Parte_decimal);
>
>    return 0;
>}
>```
>

> EXERCÍCIO 1. Implemente um código capaz de computar o valor da área do círculo inscrito num quadrado a partir do valor do lado deste quadrado.
>
>[Resposta](./programas/circulo_inscrito.c)

### *ARQUIVOS*

Armazenamos arquivos em variáveis do tipo `FILE *`

```c
FILE *Arquivo;
```

Arquivos podem ser abertos para acesso com o comando `fopen`

```c
Arq_Escrita = fopen(nome,"w"); //sobreescreve o conteúdo
Arq_Concate = fopen(nome,"a"); //concatena ao fim do conteúdo
Arq_Leitura = fopen(nome,"r"); //não afeta o conteúdo
```

Arquivos podem ter seu acesso fechado com o comando `fclose`

```c
fclose(Arquivo);
```

Para escrever uma informação num arquivo utilizamos o comando `fprintf`

```c
fprintf(arquivo,informacao_formatada, lista_de_variaveis);
```

Para ler uma informação num arquivo utilizamos o comando `fscanf`

```c
fscanf(arquivo,informacao_formatada, &lista_de_variaveis);
```

## ***FUNÇÕES MATEMÁTICAS ELEMENTARES***

### *FUNÇÕES REAIS*

Para utilização de funções matemáticas elementares em números reais inclui-se a biblioteca `math.h`

- **`pow(a,b)`**: recebe como parâmetro duas variáveis do tipo `double` e retorna em tipo `double` o valor de a elevado a b.

- **`floor(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `int` o valor do maior inteiro que não supera x.

- **`ceil(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `int` o valor do menor inteiro que não é superado por x.

- **`fabs(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor absoluto de x.

- **`sqrt(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor da raíz quadrada de x$.

- **`exp(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor da exponencial de x na base e.

- **`log(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do logarítmo natural de x.

- **`log10(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do logarítmo de base 10 de x.

- **`cos(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do cosseno de x.

- **`cosh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do cosseno hiperbólico de x.
 
- **`sin(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do seno de x.

- **`sinh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do seno hiperbólico de x.

- **`tan(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor da tangente de x.

- **`tanh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor da tangente hiperbólica de x.

- **`acos(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do arco cujo cosseno é x.

- **`acosh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do número cujo cosseno hiperbólico é x.

- **`asin(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do arco cujo seno é x.

- **`asinh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do número cujo seno hiperbólico é x.

- **`atan(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do arco cuja tangente é x.

- **`atan2(x,y)`**: recebe como parâmetro duas variáveis do tipo `double` e retorna em tipo `double` o valor do arco cuja tangente é x/y no quadrante apropriado.

- **`atanh(x)`**: recebe como parâmetro uma variável do tipo `double` e retorna em tipo `double` o valor do número cuja tangente hiperbólica é x.

>EXEMPLO 3. Implementação de um programa que computa a área de um polígono regular inscrito numa circunferência lendo seu raio.
>```c
>#include<stdio.h>
>#include<math.h>
>int main()
>{
>    const double pi = 3.14159265359;
>    double Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono;
>    unsigned Numero_de_Lados_do_Poligono;
>
>    //Obter o raio do círculo
>    printf("Insira o valor do raio do círculo: ");
>    scanf("%lf",&Raio_do_Circulo);
>
>    //Obter a quantidade de lados do polígono inscrito
>    printf("nsira o número de lados do polígono inscrito: ");
>    scanf("%u",&Numero_de_Lados_do_Poligono);
>
>    //Calcular o ângulo entre o raio e a apotema
>    Angulo = pi/Numero_de_Lados_do_Poligono;
>
>    //Calcular o lado do polígono
>    Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo);
>
>    //Calcular a apotema do polígono
>    Apotema = Raio_do_Circulo * cos(Angulo);
>
>    //Calcular o perímetro do polígono
>    Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono;
>
>    //Calcular a área do polígono
>    Area_do_Poligono = Perimetro * Apotema / 2.0;
>    printf("A área do polígono vale: %lf\n", Area_do_Poligono);
>
>    return 0;
>}
>```

>EXERCíCIO 2.Implemente um código capaz de computar o valor da área de um triângulo a partir dos valores dos seus lados utilizando a fórmula de Heron.
>
>[Resposta](./programas/heron.c)


### *FUNÇÕES COMPLEXAS*

Para utilização de funções matemáticas elementares em números complexos inclui-se a biblioteca `complex.h`

- **`creal(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double` o valor da parte real de z.

- **`cimag(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double` o valor da parte imaginária de z.

- **`cabs(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double` o valor absoluto de z.

- **`carg(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double` o valor do argumento complexo de z.

- **`conj(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do conjugado de z.

- **`cexp(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor da exponencial de z.

- **`clog(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do logarítmo natural de z.

- **`ccos(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do cosseno de z.

- **`ccosh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do cosseno hiperbólico de z.

- **`csin(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do seno de z.

- **`csinh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do seno hiperbólico de z.

- **`ctan(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor da tangente de z.

- **`ctanh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor da tangente hiperbólica de z.

- **`cacos(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do arco cujo cosseno é z.

- **`cacosh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do número cujo cosseno hiperbólico é z.

- **`casin(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do arco cujo seno é z.

- **`casinh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do número cujo seno hiperbólico é z.

- **`catan(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do arco cuja tangente é x.

- **`catanh(z)`**: recebe como parâmetro uma variável do tipo `double _Complex` e retorna em tipo `double _Complex` o valor do número cuja tangente hiperbólica é z.

## ***ARRAYS***

### *LISTAS*

Para se armazenar uma lista de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Lista_de_Variaveis[Quantidade];
```

Podemos acessar o valor de uma lista por acessar seu elemento

```c
//atribui valor ao i-ésimo elemento na lista
Lista[i] = valor;
```

### *MATRIZES*

Para se armazenar uma matrizes de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Matriz_de_Variaveis[Linhas][Colunas];
```

Podemos acessar o valor de uma matriz por acessar seu elemento

```c
//atribui valor ao (i,j)-ésimo elemento na matriz
Matriz[i][j] = valor;
```

### *CONSTRUTORES*

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