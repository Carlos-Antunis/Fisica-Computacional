# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../README.md)

## ***ESTRUTURA DE UM CÓDIGO-FONTE***

A estrutura base de um código-fonte é

```fortran
PROGRAM nome_do_programa        !inicialização do processo principal

    IMPLICIT NONE               !não há variáveis implicitas
    !Seção de declaração de variáveis
    !   Declaração ou inicialização de variáveis necessárias para a
    !   execução do processo principal
    !Seção de comandos executáveis
    !   Implementação dos processos executados pelo processo principal

END PROGRAM nome_do_programa    !fim da execução do processo principal
```

Para se executar um código-fonte FORTRAN utilizamos o compilador `gfortran` para gerar um arquivo executável e depois executá-lo:

```bash
gfortran codigo_fonte.f95 -o nome_do_executavel -lm
./nome_do_executavel
```

## ***VARIÁVEIS E OPERADORES***

### *VARIÁVEIS LÓGICAS*

Variáveis lógicas podem ser armazenadas por variáveis do tipo `LOGICAL`

```fortran
LOGICAL :: Variavel_Logica
```

Podemos atribuir valor a uma variável do tipo `LOGICAL` por meio do operador de atribuição

```fortran
dois_eh_primo = .TRUE. !pode assumir .TRUE. ou .FALSE.
```

Podemos operar variáveis do tipo `LOGICAL` por meio das operações lógicas

```fortran
nao_Logico1 = .NOT.Logico1 !operação de negação
Logico1_e_Logico2 = Logico1 .AND. Logico2 !operação de conjunção
Logico1_ou_Logico2 = Logico1 .OR. Logico2 !operação de disjunção
```

Podemos comparar variáveis do tipo `LOGICAL` por meio dos comparadores lógicos

```fortran
A_equivale_B = A .EQV. B !comparação de equivalência
A_nao_equivale_B = A .NEQV. B !comparação de inequivalência
```

### *VARIÁVEIS NUMÉRICAS*

Números inteiros podem ser armazenados em variáveis `INTEGER`

```fortran
INTEGER :: Inteiro
```

Números reais podem ser armazenados em variáveis `REAL`, reais de precisão simples, ou `DOUBLE PRECISION`, reais de precisão dupla

```fortran
REAL :: Real_Simples
DOUBLE PRECISION :: Real_Precisao2
```

Números complexos podem ser armazenados em variáveis do tipo `COMPLEX`

```fortran
COMPLEX :: Complexo
```

Valores podem ser atribuidos a números por meio do operador de atribuição

```fortran
zero = 0 !INTEGER
pi = 3.14159265359 !DOUBLE PRECISION
unidade_imaginaria = (0.0,1.0) !COMPLEX
```

> Números armazenados na memória do computador possuem precisão finita, assim possuem um intervalo de casas de precisão máxima.

Podemos operar aritméticamente sobre números por meio dos operadores aritméticos

```fortran
A_mais_B = A + B !operação de soma
A_menos_B = A - B !operação de subtração
A_vezes_B = A * B !operação de multiplicação
A_dividido_por_B = A / B !operação de divisão
A_elevado_a_B = A ** B !operação de potencia
```

Podemos comparar variáveis numéricas por meio dos comparadores

```fortran
A_eh_igual_a_B = A .EQ. B !comparação de igualdade
A_eh_diferente_de_B = A .NE. B !comparação de desiguadade

A_eh_maior_que_B = A .GT. B !comparação de superioridade
A_eh_menor_que_B = A .LT. B !comparação de inferioridade

A_eh_maior_ou_igual_a_B = A .GE. B !comparação de superioridade ou igualdade
A_eh_menor_ou_igual_a_B = A .LE. B !comparação de inferioridade ou igualdade
```

### *VARIÁVEIS ALFANUMÉRICAS*

Caracteres alfanuméricos podem ser armazenados em variáveis `CHARACTER`

```fortran
CHARACTER :: Caractere
```

Valores podem ser atribuidos a variáveis do tipo `CHARACTER` por meio do operador de atribuição

```fortran
Caractere = 'a';
```

Frases ou palavras podem ser armazenadas em cadeias de `CHARACTER`

```fortran
CHARACTER (LEN=Quantidade) :: Frase = "frase a ser armazenada"
```

## ***CONSTANTES***

Para se definir uma constante utilizamos o modificador `PARAMETER`

```fortran
TIPO, PARAMETER :: variavel = valor
```

## ***LEITURA E ESCRITA DE DADOS***

### *TERMINAL*

Para escrever uma informação no terminal utilizamos o comando `PRINT`

```fortran
PRINT*, informacao
```

Para ler uma informação no terminal utilizamos o comando `READ`

```fortran
READ*, informacao
```

>EXEMPLO 1. Implementação de um programa que lê o raio de um círculo e retorna seu perímetro.
>```fortran
>PROGRAM Calcular_Perimetro
>    IMPLICIT NONE
>    DOUBLE PRECISION :: Raio_do_Circulo, Perimetro_do_Circulo
>    DOUBLE PRECISION, PARAMETER :: pi = 3.14159265359
>
>    !Obter o raio do círculo
>    PRINT*, "Informe o raio do círculo: "
>    READ*, Raio_do_Circulo
>
>    !Computar o perímetro
>    Perimetro_do_Circulo = 2.0 * pi * Raio_do_Circulo
>    PRINT*, "O perímetro é: ", Perimetro_do_Circulo
>
>END PROGRAM Calcular_Perimetro
>```
>

> EXERCÍCIO 1. Implemente um código capaz de computar o valor da área do círculo inscrito num quadrado a partir do valor do lado deste quadrado.
>
>[Resposta](./programas/circulo_inscrito.f95)

### *ARQUIVOS*

Arquivos podem ser abertos para acesso com o comando `OPEN`

```fortran
OPEN(UNIT=Unidade,FILE=nome)
```

Arquivos podem ter seu acesso fechado com o comando `CLOSE`

```fortran
CLOSE(Unidade)
```

Para escrever uma informação num arquivo utilizamos o comando `WRITE`

```fortran
WRITE(Unidade,*) informacao
```

Para ler uma informação num arquivo utilizamos o comando `READ`

```fortran
READ(Unidade,*) informacao
```

## ***FUNÇÕES MATEMÁTICAS ELEMENTARES***

- **`mod(a,b)`**: recebe como parâmetro dois números do tipo `integer` e retorna o valor do resto da divisão de a por b.

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

>EXEMPLO 2. Implementação de um programa que computa a área de um polígono regular inscrito numa circunferência lendo seu raio.
>```fortran
>PROGRAM area_do_poligono_inscrito
>    IMPLICIT NONE
>    DOUBLE PRECISION, parameter :: pi = 3.14159265359
>    DOUBLE PRECISION :: Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono
>    INTEGER :: Numero_de_Lados_do_Poligono
>
>    !Obter o valor do raio do círculo
>    PRINT*, "Insira o valor do raio do círculo: "
>    READ*, Raio_do_Circulo
>
>    !Obter a quantidade de lados do polígono inscrito
>    PRINT*, "Insira o número de lados do polígono inscrito: "
>    READ*, Numero_de_Lados_do_Poligono
>
>    !Calcular o ângulo entre o raio e a apotema
>    Angulo = pi/Numero_de_Lados_do_Poligono
>
>    !Calcular o lado do polígono
>    Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo)
>
>    !Calcular a apotema do polígono
>    Apotema = Raio_do_Circulo * cos(Angulo)
>
>    !Calcular o perímetro do polígono
>    Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono
>
>    !Calcular a área do polígono
>    Area_do_Poligono = Perimetro * Apotema / 2.0
>    PRINT*, "A área do polígono vale: ", Area_do_Poligono
>
>END PROGRAM area_do_poligono_inscrito
>``` 

>EXERCíCIO 2.Implemente um código capaz de computar o valor da área de um triângulo a partir dos valores dos seus lados utilizando a fórmula de Heron.
>
>[Resposta](./programas/heron.f95)

## ***ARRAYS***

### *LISTAS*

Para se armazenar uma lista de variáveis de um mesmo tipo, utilizamos: 

```fortran
TIPO :: Lista_de_Variaveis(Quantidade)
```
```fortran
TIPO, DIMENSION(Quantidade) :: Lista_de_Variaveis
```

Podemos definir listas com índices num intervalo específico por

```fortran
TIPO :: Lista_de_Variaveis(i_Minimo : i_Maximo)
```

Podemos acessar o valor de uma lista por meio do operador **()**

```fortran
!atribui valor ao i-ésimo elemento na lista
Lista(i) = valor
```

### *MATRIZES*

Para se armazenar uma matrizes de variáveis de um mesmo tipo, utilizamos: 

```fortran
TIPO :: Matriz_de_Variaveis(Linhas,Colunas)
```
```fortran
TIPO, DIMENSION(Linhas,Colunas) :: Matriz_de_Variaveis
```

Podemos definir matrizes com índices num intervalo específico por

```fortran
TIPO :: Matriz_de_Variaveis(i_Minimo : i_Maximo, j_Minimo : j_Maximo)
```

Podemos acessar o valor de uma matriz por meio do operador **()**

```fortran
!atribui valor ao (i,j)-ésimo elemento na matriz
Matriz(i,j) = valor
```

### *OPERAÇÕES*

Podemos atribuir valores a um array por meio do operador **=**

```fortran
Array = Array_1                     !atribuição
```

Podemos operar aritmeticamente sobre arrays

```fortran
Array = Array_1 + Array_2           !operação de soma
Array = Array_1 - Array_2           !operação de subtração
Array = Numero * Array_1            !operação de multiplicação
Array = Array_1 / Numero            !operação de divisão
```

### *SUBARRAYS*

Podemos acessar sublistas de uma lista

```fortran
!atribui à lista de elementos entre o n-ésimo e o m-ésimo elemento
!de i em i como Lista_1
Lista(n:m:i) = Lista_1
```

Podemos acessar submatrizes de uma matriz

```fortran
Matriz(i)(l:p:j) = Lista_1      !atribui à lista de elementos da
                                !i-ésima linha entre a l-ésima e a
                                !p-ésima de j em j coluna como
                                !Lista_1

Matriz(n:m:i)(j) = Lista_1      !atribui à lista de elementos da 
                                !j-ésima coluna entre a n-ésima e
                                !a m-ésima de i em i linha como
                                !Lista_1

Matriz(n:m:i)(l:p:j) = Matriz_1 !atribui à matriz de elementos entre
                                !a n-ésima e a n-ésima linha de i em 
                                !i e entre a l-ésima e a p-ésima
                                !coluna de j em j como Matriz_1
```

### *CONSTRUTORES*

Podemos simplificar a construção de arrays por meio dos construtores

```fortran
!constroi a lista segundo a expressão para cada valor de I (inicia a 
!alteração no primeiro elemento de Array)
Array = (/(expressao, I=i_Min,i_Max)/)
```
```fortran
!constroi a matriz segundo a expressão para cada valor de I e J (inicia
!a alteração no primeiro elemento de Array)
Array = (/((expressao, I=i_Min,i_Max)J=j_Min,j_Max)/)
```
