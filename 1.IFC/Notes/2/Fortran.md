# **ELEMENTOS DE PROGRAMAÇÃO**

[Voltar ao sumário](../../../README.md)

# Iniciando em programação

## Estrutura base de um código-fonte

A estrutura base de um código-fonte em Fortran 95 é

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

## Compilando e executando

Para se executar um código-fonte FORTRAN utilizamos o compilador `gfortran` para gerar um arquivo executável e depois executá-lo

```bash
gfortran codigo_fonte.f95 -o nome_do_executavel -lm
./nome_do_executavel
```

> Para facilitar a manipulação de arquivos executáveis, é comum dar uma extensão a estes, a qual é geralmente `.out`

## Lendo e escrevendo dados no terminal

- Para escrever dados utilizamos o comando `PRINT`.

- Para ler dados utilizamos o comando `READ`.

> **EXEMPLO.** Implementação de um código que escreve "Olá Mundo!" na tela do terminal.
>```fortran
>program OlaMundo
>    !Escrever "Olá Mundo!" no terminal
>    PRINT*, "Olá Mundo!"
>
>end program OlaMundo
>```

# Tipos elementares de dados

## Constantes

Para se definir uma constante utilizamos o modificador `PARAMETER`

```fortran
TIPO, PARAMETER :: variavel = valor
```

## Variáveis alfanuméricas

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
CHARACTER*Quantidade_de_Caracteres :: Frase = "frase a ser armazenada"
```

## Variáveis lógicas

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

## Variáveis numéricas

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
COMPLEX :: Complexo_Simples
DOUBLE COMPLEX :: Complexo_Precisao2
```

Valores podem ser atribuidos a números por meio do operador de atribuição

```fortran
zero = 0 !INTEGER
pi = 3.14159265359 !DOUBLE PRECISION
unidade_imaginaria = (0.0,1.0) !DOUBLE COMPLEX
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

>**EXEMPLO.** Implementação de um código que lê o raio de um círculo e retorna o comprimento da sua circunferência
>```fortran
>program CalcularCircunferencia
>    implicit none
>    double precision :: Raio_do_Circulo, Comprimento_da_Circunferencia
>    double precision, PARAMETER :: pi = 3.14159265359
>
>    !Obter o raio do círculo
>    PRINT*, "Informe o raio do círculo: "
>    READ*, Raio_do_Circulo!Lendo um valor double e armazenando-o
>                          !na variável de nome Raio_do_Circulo
>
>    !Computar o comprimento da circunferencia
>    Comprimento_da_Circunferencia = 2.0 * pi * Raio_do_Circulo
>    PRINT*, "O perímetro é ", Comprimento_da_Circunferencia
>
>end program CalcularCircunferencia
>```

> **EXERCÍCIO 1.** Implemente um código capaz de computar o valor da área do círculo inscrito num quadrado a partir do valor do lado deste quadrado.
>
>[Resposta](../../Codes/Fortran/CirculoInscrito.f95)

Podemos comparar variáveis numéricas por meio dos comparadores

```fortran
A_eh_igual_a_B = A .EQ. B !comparação de igualdade
A_eh_diferente_de_B = A .NE. B !comparação de desiguadade

A_eh_maior_que_B = A .GT. B !comparação de superioridade
A_eh_menor_que_B = A .LT. B !comparação de inferioridade

A_eh_maior_ou_igual_a_B = A .GE. B !comparação de superioridade ou igualdade
A_eh_menor_ou_igual_a_B = A .LE. B !comparação de inferioridade ou igualdade
```

# Funções matemáticas elementares

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

>**EXEMPLO.** Implementação de um código que computa a área de um polígono regular inscrito numa circunferência lendo seu raio.
>```fortran
>program CirculoCircunscrito
>    implicit none
>    double precision :: Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono
>    integer :: Numero_de_Lados_do_Poligono
>    double precision, PARAMETER :: pi = 3.14159265359
>    
>    !Obter o raio do círculo
>    PRINT*, "Insira o valor do raio do círculo: "
>    READ*, Raio_do_Circulo
>    
>    !Obter a quantidade de lados do polígono inscrito
>    PRINT*, "nsira o número de lados do polígono inscrito: "
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
>end program CirculoCircunscrito
>```

>**EXERCíCIO 2.** Implemente um código capaz de computar o valor da área de um triângulo a partir dos valores dos seus lados utilizando a fórmula de Heron.
>
>[Resposta](../../Codes/Fortran/AreaHeron.f95)