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

>EXEMPLO 1. Implementação de um programa que lê os coeficientes de uma equação de segundo grau e retorna suas raízes caso estas sejam reais.
>```fortran
>PROGRAM Segundo_Grau
>    IMPLICIT NONE
>    DOUBLE PRECISION :: coeficiente(0:2), solucao(2), descriminante
>
>    !Obter os coeficientes
>    PRINT*, "Informe o termo independente: "
>    READ*, coeficiente(0)
>    PRINT*, "Informe o coeficiente linear: "
>    READ*, coeficiente(1)
>    PRINT*, "Informe o coeficiente quadrático: "
>    READ*, coeficiente(2)
>
>    !Computar o descriminante
>    descriminante = coeficiente(1)**2.0 - 4.0*coeficiente(2)*coeficiente(0)
>
>    IF (descriminante .GT. 0.0) THEN !há duas soluções reais 
>                                     !dadas pela fórmula 
>                                     !resolvente de segundo grau
>        solucao(1) = -(coeficiente(1) + sqrt(descriminante))/(2.0*coeficiente(2))
>        solucao(2) = -(coeficiente(1) - sqrt(descriminante))/(2.0*coeficiente(2))
>        PRINT*, "há duas soluções reais: x1 = ", solucao(1), " e x2 = ", solucao(2)
>    ELSEIF (descriminante .EQ. 0.0) THEN !há uma única solução real 
>                                         !dadas pela fórmula 
>                                         !resolvente de segundo grau
>                                         !que neste caso reduz-se a
>                                         !-b/2a
>        solucao(1) = -coeficiente(1)/(2.0*coeficiente(2))
>        PRINT*, "há uma solução real: x1 = ", solucao(1)
>    ELSE !não há soluções reais
>        PRINT*, "não há soluções reais"
>    ENDIF
>
>END PROGRAM Segundo_Grau
>```

>EXERCÍCIO 1. Implemente um código capaz de, lendo um número e os três coeficientes de uma equação de segundo grau, testar se este é solução desta equação.
>
>[Solução](./programas/solucao_grau2.f95)

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
    !Bloco de operações 2
ENDWHERE
```

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

>EXEMPLO 2. Implementação de um programa que computa o gráfico de bifurcações do mapa logístico.
>```fortran
>PROGRAM bifurcacoes_mapa_logistico
>	IMPLICIT NONE
>	DOUBLE PRECISION, parameter :: dr = 0.0001, dx = 0.01
>	DOUBLE PRECISION :: X_mapa, r, X_0
>	INTEGER :: Iteracao
>
>	OPEN(10, file="Bifurcacoes.dat")
>
>	!Para cada parametro possível
>	r = 3.0
>	DO WHILE (r .le. 4.0)
>		!Para cada possível condição inicial
>		X_0 = 0.1
>		DO WHILE (X_0 .le. 1.0)
>			!Definir o valor da condição inicial
>			X_mapa = X_0
>
>			!Obter o comportamento assintótico do mapa
>			DO Iteracao=0,15000
>				X_mapa = r*X_mapa*(1.0 - X_mapa)
>			ENDDO
>
>			!Retornar o valor da iteração do mapa
>			WRITE(10,*) r, X_mapa
>
>		X_0 = X_0 + dx
>		ENDDO
>	r = r + dr
>	ENDDO
>
>	CLOSE(10)
>END PROGRAM bifurcacoes_mapa_logistico
>```

>EXERCÍCIO 2. Implemente um código capaz de, lendo um número averiguar se este é um número perfeito.
>
>[Solução](./programas/perfeito.f95)

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

>EXEMPLO 3.Implementação de um programa capaz de computar os números primos entre 2 e 100.
>```fortran
>PROGRAM Crivo_de_Eratostenes
>	IMPLICIT NONE
>	LOGICAL :: E_Primo(2:100) =.TRUE.
>	INTEGER :: I
>
>	!Para todos os números entre 2 e 100 que são primos
>	FORALL (I=2:100, E_Primo(i))
>		!Eliminar seus múltiplos
>		E_Primo(2*I:100:I) = .FALSE.
>	ENDFORALL
>
>	!Retornar todos os números entre 2 e 100 que são primos 
>	DO I=2,100
>		IF (E_Primo(i)) THEN
>			PRINT*, i
>		ENDIF
>	ENDDO
>
>END PROGRAM Crivo_de_Eratostenes
>```

### ***COMANDO*** *exit*

Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `EXIT`

### ***COMANDO*** *cycle*

Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `CYCLE`