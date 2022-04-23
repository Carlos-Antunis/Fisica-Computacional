# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)

## **ESTRUTURAS CONDICIONAIS**

### ***ESTRUTURA*** *if*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto condicional - IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos a estrutura `if`

```c
if (/*expressão lógica*/)
{
/*
    Bloco de processos
*/
}
```

### ***ESTRUTURA*** *if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-left: 2.5rem;" align = "right" src="./images/construto condicional - IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos da estrutura `if-else`

```c
if (/*expressão lógica*/) {
/*
    Bloco de processos caso VERDADEIRO
*/
} else {
/*
    Bloco de processos caso FALSO
*/
}
```

### ***ESTRUTURA*** *if-else if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 550px; margin-right: 2.5rem;" align = "left" src="./images/construto condicional - IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos a estrutura `if-else if-else`

```c
if (/*expressão lógica*/) {
/*
    Bloco de processos caso if
*/
} else if (/*expressão lógica 2*/) {
/*
    Bloco de processos caso else if
*/
} else {
/*
    Bloco de processos caso else
*/
}
```

> **EXERCÍCIO 1.** Implemente um Código-fonte C para computar, caso hajam, as raízes de uma equação de segundo grau sabendo seus coeficientes.
>
>[Resposta](./programas/equacao_2grau.c)

## **ESTRUTURAS DE REPETIÇÃO**

### ***ESTRUTURA*** *for*

### ***ESTRUTURA*** *while*

### ***COMANDO*** *break*

### ***COMANDO*** *continue*

## **ARRAYS**

### ***LISTAS***

### ***MATRIZES***

### ***CONSTRUTORES***
