# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../README.md)

## **ESTRUTURA DE UM CÓDIGO-FONTE**

A estrutura base de um código-fonte em linguagem C é:

```c
/*
Seção de bibliotecas
    Inserção de bibliotecas necessárias para a execução do programa
*/
int main() {        //declaração do processo principal
    /*
    Seção de declaração de variáveis
        Declaração ou inicialização de variáveis necessárias para a execução do processo principal
    */
    /*
    Seção de comandos executáveis
        Implementação dos processos executados pelo processo principal
    */
    return 0;       //fim da execução do processo principal
}
```

Para se executar um programa em C, por meio do Terminal Linux, utilizamos do compilador `gcc` para criar um arquivo executável:

```bash
gcc codigo_fonte.c -o nome_do_executavel -lm
```

em seguida executamos o arquivo executável criado:

```bash
./nome_do_executavel
```

## **VARIÁVEIS E OPERADORES**

### ***LÓGICOS***

Expressões lógicas podem ser armazendas, inserindo `#include<stdbool.h>` na seção de biliotecas, por variáveis do tipo `bool`:

```c
bool Valor_Logico;
```

Podemos atribuir valores lógicos a uma variável do tipo `bool` por meio do operador **=**

```c
bool Valor_Logico = true;           //inicialização
Valor_Logico = false;               //atribuição
```

Podemos operar em variáveis do tipo `bool` ou expressões lógicas quaisquer por meio dos operadores lógicos

```c
Logico = !Logico_1                  //operação de negação
Logico = Logico_1 && Logico_2       //operação de conjunção
Logico = Logico_1 || Logico_2       //operação de disjunção
```

### ***NÚMEROS***

Números naturais podem ser armazendos por variáveis do tipo `unsigned` e suas variações:

```c
unsigned Numero_Natural;
```

Números inteiros podem ser armazendos por variáveis do tipo `int` e suas variações:

```c
int Numero_Inteiro;
```

Números reais podem ser armazendos por variáveis do tipo `float` ou `double`:

```c
float Numero_Real;
double Numero_Real_precisao2;
```

Números complexos podem ser armazendos, inserindo `#include<complex.h>` na seção de biliotecas, por variáveis do tipo `_Complex` ou `double _Complex`:

```c
_Complex Numero_Complexo;
double _Complex Numero_Complexo_precisao2;
```

Podemos atribuir valores a uma variável numérica por meio do operador **=**

```c
unsigned numero = 0;
numero = 1;
```
```c
int numero = -1;
numero = 1;
```
```c
float numero = -1.5;
numero = 1.5;
```
```c
_Complex numero = 0.5f + 0.5i;
numero = -0.5f - 0.5i;
```

Podemos operar aritmeticamente em variáveis numéricas por meio dos operadores aritméticos

```c
Numero = Numero_1 + Numero_2;       //operação de soma
Numero = Numero_1 - Numero_2;       //operação de subtração
Numero = Numero_1 * Numero_2;       //operação de multiplicação
Numero = Numero_1 / Numero_2;       //operação de divisão
```

Podemos simplificar operações iterativas de uma variável numérica por meio dos operadores de iteração

```c
Numero += Numero_1;                 //Numero = Numero + Numero_1
Numero -= Numero_1;                 //Numero = Numero - Numero_1
Numero *= Numero_1;                 //Numero = Numero * Numero_1
Numero /= Numero_1;                 //Numero = Numero / Numero_1
```

Podemos iterar unitáriamente unitáriamente uma variável por meio dos operadores de incremento e decremento

```c
Numero++;                           //Numero += 1
Numero--;                           //Numero -= 1
```

Podemos comparar variáveis numéricas por meio dos operadores relacionais

```c
Numero_1 == Numero_2                //comparação de igualdade
Numero_1 != Numero_2                //comparação de desigualdade
Numero_1 > Numero_2                 //comparação de menor que
Numero_1 < Numero_2                 //comparação de maior que
Numero_1 >= Numero_2                //comparação de maior ou igual a
Numero_1 <= Numero_2                //comparação de menor ou igual a
```

### ***CARACTERES ALFANUMÉRICOS***

Caracteres alfanuméricos podem ser armazenados por variáveis do tipo `char`:

```c
char Caractere;
```

Podemos atribuir um caractere alfanumérico a uma variável do tipo `char` por meio do operador **=**

```c
char Caractere = "a";
Caractere = "b";
```

### **CONSTANTES**

Podemos definir constantes por meio do modificador `const`

```c
tipo const variavel = Valor_Inicial;
```

## **ENTRADA E SAÍDA DE DADOS**

Processos de leitura e escrita podem ser utilizados inserindo `#include<stdio.h>` na seção de bibliotecas.

### ***FORMATAÇÃO DE TEXTO***

Para se escrever uma variável formatamos em qual parte do texto esta aparecerá pelo formatador associado ao seu tipo

<table align="center" width="50%">
<thead>
  <tr>
    <th>tipo da variável</th>
    <th>formatador</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>char</td>
    <td>%c</td>
  </tr>
  <tr>
    <td>int</td>
    <td>%i</td>
  </tr>
  <tr>
    <td>unsigned</td>
    <td>%u</td>
  </tr>
  <tr>
    <td>float</td>
    <td>%f</td>
  </tr>
  <tr>
    <td>double</td>
    <td>%lf</td>
  </tr>
</tbody>
</table>

Podemos formatar também certos comportamentos especiais utilizando as sequências de escape

<table align="center" width="50%">
<thead>
  <tr>
    <th>ação</th>
    <th>sequência de escape</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>quebra de linha</td>
    <td>\n</td>
  </tr>
  <tr>
    <td>tabulação horizontal</td>
    <td>\t</td>
  </tr>
  <tr>
    <td>tabulação vertical</td>
    <td>\v</td>
  </tr>
</tbody>
</table>

### ***TERMINAL***

Podemos escrever no terminal utilizando o comando `printf`

```c
printf("texto formatado",lista de variaveis);
```

Podemos ler os valores de variáveis pelo terminal utilizando o comando `scanf`

```c
scanf("formatador da variavel",&nome_da_variavel);
```

> **EXERCÍCIO 1.** Implemente um Código-fonte C para computar o valor da área do círculo inscrito num quadrado.
>
>[Resposta](./programas/circulo.c)

### ***ARQUIVOS***

Podemos utilizar variáveis do tipo `FILE *` para armazenar arquivos. Para abrir um arquivo utilizamos o comando `fopen`

```c
FILE *arquivo = fopen("nome do arquivo.ext",tipo de acesso);
```

<table align="center" width="50%">
<thead>
  <tr>
    <th>tipo de ação</th>
    <th>tipo de acesso</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>escrita</td>
    <td>"a"</td>
  </tr>
  <tr>
    <td>sobreescrita</td>
    <td>"w"</td>
  </tr>
  <tr>
    <td>leitura</td>
    <td>"r"</td>
  </tr>
</tbody>
</table>

Podemos fechar arquivos utilizando o comando `fclose`

```c
fclose(arquivo);
```

Podemos escrever num arquivo utilizando o comando `fprintf`.

```c
fprintf(arquivo,"texto formatado",lista de variaveis);
```

Podemos ler o valor de uma variável de um arquivo utilizando o comando `fscanf`.

```c
fscanf(arquivo,"formatadores da variavel",&variavel1, &variavel2, ...);
```

## **FUNÇÕES MATEMÁTICAS**


Para a utilização de funções matemáticas na linguagem C utilizamos a biblioteca `math.h` inserindo, na seção de bibliotecas, a diretiva:

```c
#include<math.h>
```

onde estão definidas as seguintes funções:

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

Para a utilização de funções matemáticas prototipadas para variáveis complexas na linguagem C utilizamos a biblioteca `complex.h` inserindo, na seção de bibliotecas, a diretiva:

```c
#include<complex.h>
```

onde estão definidas as seguintes funções:

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

> **EXERCÍCIO 2.** Implemente um Código-fonte C para computar o valor da área de um polígono regular inscrito num circulo.
>
>[Resposta](./programas/poligono.c)
