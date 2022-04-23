# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)
## **ESTRUTURAS CONDICIONAIS**

### ***ESTRUTURA*** *if*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto condicional - IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos a estrutura `IF`

```fortran
IF (expressão lógica) THEN

    !Bloco de processos

ENDIF
```

### ***ESTRUTURA*** *if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-left: 2.5rem;" align = "right" src="./images/construto condicional - IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos da estrutura `IF-ELSE`

```fortran
IF (expressão lógica) THEN

    !Bloco de processos caso VERDADEIRO

ELSE

    !Bloco de processos caso FALSO

ENDIF
```

### ***ESTRUTURA*** *if-else if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto condicional - IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos a estrutura `IF-ELSE IF-ELSE`

```fortran
IF (expressão lógica) THEN

    !Bloco de processos caso if

ELSE IF (expressão lógica 2) THEN

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

### ***ESTRUTURA*** *do while*

### ***COMANDO*** *exit*

### ***COMANDO*** *cycle*

## **ARRAYS**

### ***LISTAS***

### ***MATRIZES***

### ***CONSTRUTORES***
