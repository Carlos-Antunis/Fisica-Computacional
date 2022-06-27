# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../../README.md)

# Iniciando em programação

## Estrutura base de um código-fonte

A estrutura base de um código-fonte em Fortran 95 é

```c
/*Seção de bibliotecas
    Inclusão de bibliotecas necessárias para a execução do programa
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

## Compilando e executando

Para se executar um código-fonte C utilizamos o compilador `gcc` para gerar um arquivo executável e depois executá-lo

```bash
gcc codigo_fonte.c -o nome_do_executavel -lm
./nome_do_executavel
```

> Para facilitar a manipulação de arquivos executáveis, é comum dar uma extensão a estes, a qual é geralmente `.out`

## Lendo e escrevendo dados no terminal

Para se ler e escrever dados, em C, utilizamos a biblioteca `stdio.h`.

- Para escrever dados utilizamos o comando `printf`

- Para ler dados utilizamos o comando `scanf`, o qual será melhor abordado em exemplos futuros

> **EXEMPLO.** Implementação de um código que escreve "Olá Mundo!" na tela do terminal.
>```c
>#include <stdio.h> //Incluir a biblioteca para escrita
>
>int main() {
>    //Escrever "Olá Mundo!" no terminal
>    printf("Olá Mundo!");
>
>    //Encerrar a execução do programa
>    return 0;
>}
>```

# Tipos elementares de dados

## Constantes

Para se definir uma constante utilizamos o modificador `const`

```c
const tipo variavel = valor;
```

## Variáveis alfanuméricas

Caracteres alfanuméricos podem ser armazenados em variáveis `char` (formatadas para leitura e escrita por `%c`)

```c
char Caractere;
```

Valores podem ser atribuidos a variáveis do tipo `char` por meio do operador de atribuição

```c
Caractere = 'a';
```

Frases ou palavras podem ser armazenadas em cadeias de `char` (formatadas para leitura e escrita por `%s`)

```c
char Frase[Quantidade_de_Caracteres] = "frase a ser armazenada";
```

## Variáveis lógicas

Variáveis lógicas em C consistem em inteiros com valor `0 (false)` ou `1 (true)`, para facilitar seu uso, utilizamos a biblioteca `stdbool.h`.

Valores lógicos podem ser armazenados em variáveis `bool` (formatadas para leitura e escrita por `%d`)

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

## Variáveis numéricas

Números naturais podem ser armazenados em variáveis `unsigned`(Formatados para escrita e leitura por `%u`)

```c
unsigned Natural;
```

Números inteiros podem ser armazenados em variáveis `int`(Formatados para escrita e leitura por `%d`)

```c
int Inteiro;
```

Números reais podem ser armazenados em variáveis `float`(Formatados para escrita e leitura por `%f`), reais de precisão simples, ou `double`(Formatados para escrita e leitura por `%lf`), reais de precisão dupla

```c
float Real_Simples;
double Real_Precisao2;
```

Números complexos não são tipos de dados padrão, para usá-los, utilizamos a biblioteca `complex.h`.

Valores complexos podem ser armazenados em variáveis `_Complex`, complexos de precisão simples, ou `double __Complex`, complexos de precisão dupla (ambos não são formatáveis para leitura e escrita como os demais)

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

Podemos operar aritméticamente sobre números por meio dos operadores aritméticos

```c
A_mais_B = A + B; //operação de soma
A_menos_B = A - B; //operação de subtração
A_vezes_B = A * B; //operação de multiplicação
A_dividido_por_B = A / B; //operação de divisão
resto_A_por_B = A % B; //resto de divisão entre inteiros
```

>**EXEMPLO.** Implementação de um código que lê o raio de um círculo e retorna o comprimento da sua circunferência
>```c
>#include <stdio.h>
>#include <math.h>
>
>int main() {
>    double Raio_do_Circulo, Comprimento_da_Circunferencia;
>    const double pi = M_PI; //Valor de pi da
>
>    //Obter o raio do círculo
>    printf("Informe o raio do círculo: ");
>    scanf("%lf", &Raio_do_Circulo);/*Lendo um valor double e armazenando-o
>                                     na variável de nome Raio_do_Circulo*/
>
>    //Computar o comprimento da circunferencia
>    Comprimento_da_Circunferencia = 2.0 * pi * Raio_do_Circulo;
>    printf("O perímetro é %lf\n", Comprimento_da_Circunferencia);
>
>    return 0;
>}
>```

> **EXERCÍCIO 1.** Implemente um código capaz de computar o valor da área do círculo inscrito num quadrado a partir do valor do lado deste quadrado.
>
>[Resposta](../../Codes/C/CirculoInscrito.c)

Podemos comparar variáveis numéricas por meio dos comparadores

```c
A_eh_igual_a_B = A == B;        //comparação de igualdade
A_eh_diferente_de_B = A != B;   //comparação de desiguadade

A_eh_maior_que_B = A > B;       //comparação de superioridade
A_eh_menor_que_B = A < B;       //comparação de inferioridade

A_eh_maior_igual_a_B = A >= B;  //comparação de superioridade ou igualdade
A_eh_menor_igual_a_B = A <= B;  //comparação de inferioridade ou igualdade
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

# Funções matemáticas elementares

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

>**EXEMPLO.** Implementação de um código que computa a área de um polígono regular inscrito numa circunferência lendo seu raio.
>```c
>#include <stdio.h>
>#include <math.h>
>
>int main() {
>    double Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono;
>    unsigned Numero_de_Lados_do_Poligono;
>    const double pi = M_PI;
>
>    //Obter o raio do círculo
>    printf("Insira o valor do raio do círculo: ");
>    scanf("%lf", &Raio_do_Circulo);
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

>**EXERCíCIO 2.** Implemente um código capaz de computar o valor da área de um triângulo a partir dos valores dos seus lados utilizando a fórmula de Heron.
>
>[Resposta](../../Codes/C/AreaHeron.c)

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
