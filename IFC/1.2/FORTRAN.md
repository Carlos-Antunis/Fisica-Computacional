# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../README.md)

## **ESTRUTURA DE UM CÓDIGO-FONTE**

A estrutura base de um código-fonte em linguagem FORTRAN é:

```fortran
PROGRAM nome_do_programa        !declaração do programa principal

    IMPLICIT NONE               !não há variáveis implicitas
    !Seção de declaração de variáveis
    !   Declaração ou inicialização de variáveis necessárias para a
    !   execução do programa principal

    !Seção de comandos executáveis
    !   Implementação dos processos executados pelo processo principal

END PROGRAM nome_do_programa    !fim da execução do programa principal
```

Para se executar um programa em FORTRAN, por meio do Terminal Linux, utilizamos do compilador `gfortran` para criar um arquivo executável:

```bash
gfortran codigo_fonte.f90 -o nome_do_executavel
```

em seguida executamos o arquivo executável criado:

```bash
./nome_do_executavel
```

## **VARIÁVEIS E OPERADORES**

### ***LÓGICOS***

Expressões lógicas podem ser armazenadas por variáveis do tipo `LOGICAL`:

```fortran
LOGICAL :: Valor_Logico
```

Podemos atribuir valores lógicos a uma variável do tipo `LOGICAL` por meio do operador **=**

```fortran
LOGICAL :: Valor_Logico = .TRUE.    !inicialização
Valor_Logico = .FALSE.              !atribuição
```

Podemos operar em variáveis do tipo `LOGICAL` por meio dos operadores lógicos

```fortran
Logico = .not. Logico_1             !operação de negação
Logico = Logico_1 .and. Logico_2    !operação de conjunção
Logico = Logico_1 .or. Logico_2     !operação de disjunção
```

Podemos comparar variáveis do tipo `LOGICAL` por meio dos operadores relacionais lógicos

```fortran
Logico = Logico_1 .eqv. Logico_2    !comparação de equivalência
Logico = Logico_1 .neqv. Logico_2   !comparação de inequivalência
```

### ***NÚMEROS***

Números inteiros podem ser armazendos por variáveis do tipo `INTEGER`:

```fortran
INTEGER :: Numero_Inteiro
```

Números reais podem ser armazendos por variáveis do tipo `REAL` ou `DOUBLE PRECISION`:

```fortran
REAL :: Numero_Real
DOUBLE PRECISION :: Numero_Real_precisao2
```

Números complexos podem ser armazendos por variáveis do tipo `COMPLEX`:

```fortran
COMPLEX :: Numero_Complexo
```

Podemos atribuir valores a uma variável numérica por meio do operador **=**

```fortran
INTEGER :: numero = 0
numero = 1
```
```fortran
REAL :: numero = -1.5
numero = 1.5
```
```fortran
COMPLEX :: numero = (0.5,0.5);
numero = (-0.5,-0.5);
```

Podemos operar aritmeticamente em variáveis numéricas por meio dos operadores aritméticos

```fortran
Numero = Numero_1 + Numero_2        !operação de soma
Numero = Numero_1 - Numero_2        !operação de subtração
Numero = Numero_1 * Numero_2        !operação de multiplicação
Numero = Numero_1 / Numero_2        !operação de divisão
Numero = Numero_1 ** Numero_2       !operação de exponenciação
```

Podemos comparar variáveis numéricas por meio dos operadores relacionais

```fortran
Numero_1 .eq. Numero_2              !comparação de igualdade
Numero_1 .ne. Numero_2              !comparação de desigualdade
Numero_1 .gt. Numero_2              !comparação de menor que
Numero_1 .lt. Numero_2              !comparação de maior que
Numero_1 .ge. Numero_2              !comparação de maior ou igual a
Numero_1 .le. Numero_2              !comparação de menor ou igual a
```

### ***CARACTERES ALFANUMÉRICOS***

Caracteres alfanuméricos podem ser armazenados por variáveis do tipo `CHARACTER`:

```fortran
CHARACTER :: Caractere
```

Podemos atribuir um caractere alfanumérico a uma variável do tipo `CHARACTER` por meio do operador **=**

```fortran
CHARACTER :: Caractere = "a"
Caractere = "b"
```
### **CONSTANTES**

Podemos definir constantes por meio do modificador `parameter`

```fortran
TIPO, parameter :: variavel = Valor_Inicial
```

## **ENTRADA E SAÍDA DE DADOS**

### **TERMINAL**

Podemos escrever no terminal utilizando o comando `PRINT`

```fortran
PRINT*, lista de variaveis e textos
```

Podemos ler valores de variáveis pelo terminal utilizando o comando `READ`

```fortran
READ*, lista de variaveis
```

> **EXERCÍCIO 1.** Implemente um Código-fonte FORTRAN para computar o valor da área do círculo inscrito num quadrado.
>
>[Resposta](./programas/circulo.f90)

### **ARQUIVOS**

Podemos abrir um arquivo utilizando o comando `OPEN`

```fortran
open(UNIDADE, file = "nome do arquivo")
```

Podemos fechar arquivos utilizando o comando `CLOSE`

```fortran
close(UNIDADE)
```

Podemos escrever num arquivo utilizando o comando `WRITE`.

```fortran
write(UNIDADE,*), lista de variaveis e textos
```

Podemos ler o valor de uma variável de um arquivo utilizando o comando `READ`.

```fortran
read(UNIDADE,*), lista de variaveis
```

## **FUNÇÕES MATEMÁTICAS**


Podemos, em FORTRAN utilizar as seguintes funções matemáticas:

- **`floor(x)`**: recebe como parâmetro um número real de qualquer tipo e retorna  o valor do tipo `integer` do maior inteiro que não supera x.

- **`ceiling(x)`**: recebe como parâmetro um número real de qualquer tipo e retorna  o valor do tipo `integer` do menor inteiro que não é superado por x.

- **`abs(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor absoluto de x.

- **`sqrt(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor da raíz quadrada de x.

- **`exp(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor da exponencial de x.

- **`log(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do logarítmo natural de x.

- **`log10(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do logarítmo na base 10 de x.

- **`cos(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do cosseno de x.

- **`cosh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do cosseno hiperbólico de x.

- **`sin(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do seno de x.

- **`sinh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do seno hiperbólico de x.

- **`tan(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor da tangente de x.

- **`tanh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor da tangente hiperbólica de x.

- **`acos(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do arco cujo cosseno é x.

- **`acosh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do número cujo cosseno hiperbólico é x.

- **`asin(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do arco cujo seno é x.

- **`asinh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do número cujo seno hiperbólico é x.

- **`atan(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do arco cuja tangente é x.

- **`atan2(x,y)`**: recebe como parâmetro duas variáveis do tipo `double precision` e retorna em tipo `double precision` o valor do arco cuja tangente é x/y no quadrante apropriado.

- **`atanh(x)`**: recebe como parâmetro um número de qualquer tipo e retorna  o valor do número cuja tangente hiperbólica é x.