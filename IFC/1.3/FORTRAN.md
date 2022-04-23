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
  <img style = "width: 400px; margin-right: 2.5rem;" align = "left" src="./images/Construto WHILE.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `DO WHILE`

```fortran
DO WHILE (expressão lógica)

    !Bloco de processos

ENDDO
```

### ***COMANDO*** *exit*

Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `EXIT`

### ***COMANDO*** *cycle*

Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `CYCLE`

## **ARRAYS**

### ***LISTAS***

### ***MATRIZES***

### ***CONSTRUTORES***
