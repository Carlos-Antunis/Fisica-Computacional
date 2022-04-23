# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)
## **ESTRUTURAS CONDICIONAIS**

### ***ESTRUTURA*** *if*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos a estrutura `IF ... THEN`

```fortran
IF (expressão lógica) THEN

    !Bloco de processos

ENDIF
```

### ***ESTRUTURA*** *if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-left: 2.5rem;" align = "right" src="./images/construto IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos da estrutura `IF ... THEN-ELSE`

```fortran
IF (expressão lógica) THEN

    !Bloco de processos caso VERDADEIRO

ELSE

    !Bloco de processos caso FALSO

ENDIF
```

### ***ESTRUTURA*** *if-else if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos a estrutura `IF ... THEN-ELSEIF ... THEN-ELSE`

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

### ***ESTRUTURA*** *do*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto DO.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos a estrutura `DO`

```fortran
DO var = inicial, final, inc

    !Bloco de processos

ENDDO
```

### ***ESTRUTURA*** *do while*

### ***COMANDO*** *exit*

### ***COMANDO*** *cycle*

## **ARRAYS**

### ***LISTAS***

### ***MATRIZES***

### ***CONSTRUTORES***
