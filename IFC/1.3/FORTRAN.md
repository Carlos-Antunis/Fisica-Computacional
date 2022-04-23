# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)
## **ESTRUTURAS CONDICIONAIS**

### ***CONSTRUTO*** *if*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos o construto `IF ... THEN`

```fortran
IF (expressão lógica) THEN
    !Bloco de processos
ENDIF
```

### ***CONSTRUTO*** *if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos do construto `IF ... THEN-ELSE`

```fortran
IF (expressão lógica) THEN
    !Bloco de processos caso VERDADEIRO
ELSE
    !Bloco de processos caso FALSO
ENDIF
```

### ***CONSTRUTO*** *if-else if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos o construto `IF ... THEN-ELSEIF ... THEN-ELSE`

```fortran
IF (expressão lógica) THEN
    !Bloco de processos caso if
ELSEIF (expressão lógica 2) THEN
    !Bloco de processos caso else if
ELSE
    !Bloco de processos caso else
ENDIF
```

> **EXERCÍCIO 1.** Implemente um Código-fonte FORTRAN para computar, caso hajam, as raízes de uma equação de segundo grau sabendo seus coeficientes.
>
>[Resposta](./programas/equacao_2grau.f90)

## **ESTRUTURAS DE REPETIÇÃO**

### ***CONSTRUTO*** *do*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto DO.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos o construto `DO`

```fortran
DO var = inicial, final, inc
    !Bloco de processos
ENDDO
```

### ***CONSTRUTO*** *do while*

<div style = "display: flex-box;width: 300">
  <img style = "width: 400px; margin-right: 2.5rem;" align = "left" src="./images/Construto DO-WHILE.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `DO WHILE`

```fortran
DO WHILE (expressão lógica)
    !Bloco de processos
ENDDO
```

> **EXERCÍCIO 2.** Implemente um Código-fonte FORTRAN para computar o gráfico de bifurcações do mapa logístico.
>
>[Resposta](./programas/mapa_logistico.f90)


### ***COMANDO*** *exit*

Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `EXIT`

### ***COMANDO*** *cycle*

Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `CYCLE`

## **ARRAYS**

### ***LISTAS***

Para se armazenar uma lista de variáveis de um mesmo tipo, utilizamos: 

```fortran
TIPO :: Lista_de_Variaveis(Quantidade)
```
```fortran
TIPO, dimension(Quantidade) :: Lista_de_Variaveis
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

### ***MATRIZES***

Para se armazenar uma matrizes de variáveis de um mesmo tipo, utilizamos: 

```fortran
TIPO :: Matriz_de_Variaveis(Linhas,Colunas)
```
```fortran
TIPO, dimension(Linhas,Colunas) :: Matriz_de_Variaveis
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

### ***OPERAÇÕES***

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

### **SUBARRAYS**

Podemos acessar sublistas de uma lista

```fortran
!atribui à lista de elementos entre o n-ésimo e o m-ésimo elemento
!como Lista_1
Lista(n:m) = Lista_1
```

Podemos acessar submatrizes de uma matriz

```fortran
!atribui à lista de elementos da i-ésima linha entre a l-ésima e a
!p-ésima coluna como Lista_1
Matriz(i)(l:p) = Lista_1

!atribui à lista de elementos da j-ésima coluna entre a n-ésima e
!a m-ésima linha como Lista_1
Matriz(n:m)(j) = Lista_1

!atribui à matriz de elementos entre a n-ésima e a n-ésima linha e
!entre a l-ésima e a p-ésima coluna como Matriz_1
Matriz(n:m)(l:p) = Matriz_1
```

### **CONSTRUTORES**

Podemos simplificar a construção de arrays por meio dos construtores

```fortran
!constroi a lista segundo a expressão para cada valor de I
Array = (/(expressao, I=i_Min,i_Max)/)
```
```fortran
!constroi a matriz segundo a expressão para cada valor de I e J
Array = (/((expressao, I=i_Min,i_Max)J=j_Min,j_Max)/)
```

## **ESTRUTURAS MATRICIAIS**

### ***CONSTRUTO*** *forall*

Para se executar um bloco de operações sobre arrays para todas as possíveis combinações de certos índices, satisfazendo uma condição, utilizamos do construto `FORALL`

```fortran
FORALL (I=i_Min:i_Max, condição)
    !Bloco de operações
ENDFORALL
```
```fortran
FORALL (I=i_Min:i_Max, J=j_Min:j_Max, condição)
    !Bloco de operações
ENDFORALL
```

### ***CONSTRUTO*** *where*

Para se executar um bloco de operações sobre arrays para todas os elementos que satisfazem uma dada condição utilizamos o construto `WHERE`

```fortran
WHERE (condição)
    !Bloco de operações
ENDWHERE
```

Podemos especificar, assim como em `IF ... THEN-ELSE` as operações a serem feitas caso contrário

```fortran
WHERE (condição)
    !Bloco de operações 1
ELSEWHERE
    !Bloco de operações 1
ENDWHERE
```

> **EXERCÍCIO 3.** Implemente um Código-fonte FORTRAN para computar os números primos entre 2 e 100 pelo crivo de Eratóstenes.
>
>[Resposta](./programas/crivo.f90)
