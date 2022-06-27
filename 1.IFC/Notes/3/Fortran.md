# **SUBPROCESSOS E CONTROLE DE FLUXO**

[Voltar ao sumário](../../../README.md)

# Controle de fluxo

## Controle condicional

### Construto `if`

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos o construto `if ... then`

```fortran
if (expressão lógica) then
    !Bloco de processos
endif
```

### Construto `if-else`

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos do construto `if ... then-else`

```fortran
if (expressão lógica) then
    !Bloco de processos caso VERDADEIRO
else
    !Bloco de processos caso FALSO
endif
```

### Construto `if-elseif-else`

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos o construto `if ... then-elseif ... then-else`

```fortran
if (expressão lógica 1) then
    !Bloco de processos caso if
else if (expressão lógica 2) then
    !Bloco de processos caso else if
else
    !Bloco de processos caso else
endif
```

>**EXEMPLO.** Implementação de um código que lê os coeficientes de uma equação de segundo grau e retorna suas raízes reais.
>```fortran
>program SegundoGrau
>    implicit none
>    double precision :: Termo_Independente, Coeficiente_Linear, Coeficiente_Quadratico
>    double precision :: Solucao_1, Solucao_2, Descriminante
>    
>    !Obter os coeficientes
>    PRINT*, "Informe o termo independente: "
>    READ*, Termo_Independente
>    PRINT*, "Informe o coeficiente linear: "
>    READ*, Coeficiente_Linear
>    PRINT*, "Informe o coeficiente quadrático: "
>    READ*, Coeficiente_Quadratico
>    
>    !Computar o descriminante
>    Descriminante = Coeficiente_Linear ** 2.0 &
>                    - 4.0 * Coeficiente_Quadratico * Termo_Independente
>    
>    if (Descriminante > 0) then !há duas soluções reais dadas pela
>                                !fórmula resolvente de segundo grau
>        Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante)) &
>                    / (2.0 * Coeficiente_Quadratico)
>        Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante)) &
>                    / (2.0 * Coeficiente_Quadratico)
>        PRINT*, "há duas soluções reais: x1 = ", Solucao_1, " e x2 = ", Solucao_2
>    else if (Descriminante == 0) then !há uma única solução real dadas pela
>                                      !fórmula resolvente de segundo grau que
>                                      !neste caso reduz-se para x = -b/2a
>        Solucao_1 = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico)
>        PRINT*, "há uma solução real: x = ",  Solucao_1
>    else !não há soluções reais
>        PRINT*, "não há soluções reais"
>    endif
>
>end program SegundoGrau
>```

## Controle de repetição

### Construto `do`

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos o construto `do`

```fortran
do variavel = inicio, fim, incremento
    !Bloco de processos
enddo
```

>**EXEMPLO.** implementação de um código que lê um número e testa se ele é perfeito
>```fortran
>program NumeroPerfeito
>    implicit none
>    integer :: Numero, Soma_dos_Fatores, fator
>
>    !Obter o número
>    PRINT*, "Informe o número a ser testado: "
>    READ*, Numero
>
>    !Somar todos os fatores do Número
>    Soma_dos_Fatores = 0;
>    do fator = 1, Numero, 1
>        if (mod(Numero, fator) .EQ. 0) then
>            Soma_dos_Fatores = Soma_dos_Fatores + fator
>        endif
>    enddo
>
>    if (Numero .EQ. Soma_dos_Fatores) then !Se o número for
>                                           !a soma dos fatores
>                                           !ele é perfeito
>        PRINT*, Numero, "é perfeito"
>    else
>        PRINT*, Numero, "não é perfeito"
>    endif
>
>end program NumeroPerfeito
>```

### Construto `do while`

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `do while`

```fortran
do while (expressão lógica)
    !Bloco de processos
enddo
```

### Instruções `exit` e `cycle`

- Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `exit`

- Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `cycle`

## Lendo e escrevendo dados em arquivos

- Para abrir um arquivo utilizamos o comando `OPEN`

- Para escrever dados num arquivo utilizamos o comando `WRITE`

- Para ler dados num arquivo utilizamos o comando `READ`

- Para abrir um arquivo utilizamos o comando `CLOSE`

>EXEMPLO 2. Implementação de um código que computa o gráfico de bifurcações do mapa logístico.
>```fortran
>program MapaLogistico
>    implicit none
>    double precision, PARAMETER :: dr = 0.0001, dx = 0.01
>    double precision :: r, X_0, X_mapa
>    integer, PARAMETER :: Grafico_das_Bifurcacoes = 10
>    integer :: Iteracao
>
>    !Abrir o arquivo de dados
>    open(unit = Grafico_das_Bifurcacoes, file = "Bifurcacoes.dat")
>
>    !Para cada parametro possível
>    r = 3.0
>    do while (r .lt. 4.0)
>        !Para cada condição inicial
>        X_0 = 0.1
>        do while(X_0 .lt. 1.0)
>            X_mapa = X_0
>            do Iteracao = 0, 15000
>                X_mapa = r * X_mapa * (1.0 - X_mapa)
>            end do
>
>            !Escrever o valor do mapa do mapa
>            WRITE (Grafico_das_Bifurcacoes,*) r, X_mapa
>
>            X_0 = X_0 + dx
>        enddo
>        r = r + dr
>    enddo
>
>    !Fechar o arquivo de dados
>    close(Grafico_das_Bifurcacoes)
>
>end program MapaLogistico
>```


## Estruturas matriciais de dados

### Vetores

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

### Matrizes

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

### Operações

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

### Subarrays

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

### Construtores

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


# Subprocessos

## Subrotinas

Subprocessos podem ser declarados como subrotinas

```fortran
PROGRAM nome_do_programa        !inicialização do processo principal

    IMPLICIT NONE               !não há variáveis implicitas
    !   Declaração ou inicialização de variáveis
    !   Implementação dos processos executados pelo processo principal

    CONTAINS

    SUBROUTINE nome_do_subprocesso(lista_de_parametros)
        !declaração de variáveis
        !Implementação de processos da subrotina
    END SUBROUTINE

END PROGRAM nome_do_programa    !fim da execução do processo principal
```

## Funções

Funções podem ser criadas por

```fortran
PROGRAM nome_do_programa        !inicialização do processo principal

    IMPLICIT NONE               !não há variáveis implicitas
    !   Declaração ou inicialização de variáveis
    !   Implementação dos processos executados pelo processo principal

    CONTAINS

    TIPO FUNCTION nome_da_funcao(lista_de_parametros) RESULT(resultado)
        !declaração de variáveis
        !Implementação de processos a fim de se obter o resultado
        RETURN
    END FUNCTION nome_da_funcao

END PROGRAM nome_do_programa    !fim da execução do processo principal
```


>**EXEMPLO.** Implementação de um código para computar o gráfico da função de Bessel Bessel(0.5,x).
>```fortran
>program bessel_de_0p5
>   IMPLICIT NONE
>   double precision, PARAMETER :: dx = 0.05
>   double precision :: x, y
>
>   OPEN(10, file = "Bessel0p5.dat")
>
>   x = 0.1
>   do while(x .LE. 20.0)   !Para cada valor de x
>                           !escreva x e sua aplicação
>       y = Bessel_0p5(x)
>       WRITE(10,*) x, y
>   x = x + dx
>   enddo
>
>   CLOSE(10)
>
>   CONTAINS
>
>   double precision FUNCTION Bessel_0p5(numero) RESULT(Bessel0p5_de_x)
>       double precision :: numero
>       double precision, PARAMETER :: pi = 3.14159265359
>
>       Bessel0p5_de_x = sqrt(2.0/(pi*numero))*sin(numero)
>   
>       RETURN
>    END FUNCTION Bessel_0p5
>
>end program bessel_de_0p5
>```

## Recursividade

Para declarar a recursividade de uma função ou subrotina incluimos a propriedade `RECURSIVE` na sua declaração


```fortran
RECURSIVE TIPO FUNCTION nome_da_funcao(lista_de_parametros) RESULT(resultado)
    !declaração de variáveis
    !Implementação de processos a fim de se obter o resultado
    RETURN
END FUNCTION nome_da_funcao
```

```fortran
RECURSIVE SUBROUTINE nome_do_subprocesso(lista_de_parametros)
    !declaração de variáveis
    !Implementação de processos da subrotina
END SUBROUTINE
```

>**EXEMPLO.** Implementação do código que obtém o MDC de dois números pelo Algoritmo de Euclides
>```fortran
>program MDC_Euclides
>    implicit none
>    integer :: numero_1,numero_2
>
>    !Obter os números
>    PRINT*, "Informe o primeiro número: "
>    READ*, numero_1
>    PRINT*, "Informe o segundo número: "
>    READ*, numero_2
>
>    !Compute o MDC destes
>    PRINT*, "o MDC entre ", numero_1, " e ", numero_2, " é: ", MDC(numero_1,numero_2)
>
>    CONTAINS
>
>    RECURSIVE integer FUNCTION MDC(a,b) RESULT(G)
>        integer :: a, b
>        IF (b .EQ. 0) THEN
>            G = a
>            RETURN
>        ELSE
>            G = MDC(b,mod(a,b))
>        ENDIF
>    END FUNCTION MDC
>
>end program MDC_Euclides
>```

>**EXERCÍCIO 1.** Implemente um código capaz de computar o fatorial de um número
>
>[Resposta](../../Codes/Fortran/Fatorial.f95)

>**EXEMPLO 2.** Implementação de um código para computar o n-ésimo número da sequênia de Fibonacci.
>
>[Resposta](../../Codes/Fortran/Fibonacci.f95)