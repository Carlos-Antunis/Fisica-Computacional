# **CONTROLE DE FLUXO**

[Voltar ao sumário](../../README.md)

## **ESTRUTURAS CONDICIONAIS**

### ***CONSTRUTO*** *if*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF.svg">
</div>

Para se executar um bloco de comandos apenas caso se satisfaça uma dada condição utilizamos o construto `if`

```c
if (/*expressão lógica*/) {
//    Bloco de processos
}
```

### ***CONSTRUTO*** *if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto IF-ELSE.svg">
</div>

Para se executar blocos de comandos distintos caso uma dada condição se satisfaça ou não utilizamos do construto `if-else`

```c
if (/*expressão lógica*/) {
//    Bloco de processos caso VERDADEIRO
} else {
//    Bloco de processos caso FALSO
}
```

### ***CONSTRUTO*** *if-else if-else*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-right: 2.5rem;" align = "left" src="./images/Construto IF-ELSEIF-ELSE.svg">
</div>

Para se executar blocos de comando para um caso dentre vários possíveis utilizamos o construto `if-else if-else`

```c
if (/*expressão lógica*/) {
//    Bloco de processos caso if
} else if (/*expressão lógica 2*/) {
//    Bloco de processos caso else if
} else {
//    Bloco de processos caso else
}
```

> **EXERCÍCIO 1.** Implemente um Código-fonte C para computar, caso hajam, as raízes de uma equação de segundo grau sabendo seus coeficientes.
>
>[Resposta](./programas/equacao_2grau.c)

## **ESTRUTURAS DE REPETIÇÃO**

### ***CONSTRUTO*** *for*

<div style = "display: flex-box;width: 300">
  <img style = "width: 450px; margin-left: 2.5rem;" align = "right" src="./images/Construto FOR.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva uma dada quantidade de vezes utilizamos o construto `for`

```c
for (/*condição inicial*/;/*condição final*/;/*incremento*/) {
//Bloco de processos
}
```

### ***CONSTRUTO*** *while*

<div style = "display: flex-box;width: 300">
  <img style = "width: 400px; margin-right: 2.5rem;" align = "left" src="./images/Construto DO-WHILE.svg">
</div>

Para se executar um bloco de comandos de forma repetitiva enquanto uma dada condição for satisfeita utilizamos do construto `while`

```c
while (/*expressão lógica*/) {
//    Bloco de processos
}
```

> **EXERCÍCIO 2.** Implemente um Código-fonte C para computar o gráfico de bifurcações do mapa logístico.
>
>[Resposta](./programas/mapa_logistico.c)

### ***COMANDO*** *break*

Para se encerrar uma estrutura de repetição de imediato, utilizamos o comando `break`

### ***COMANDO*** *continue*

Para se encerrar a atual repetição e seguir à próxima, utilizamos o comando `continue`

## **ARRAYS**

### ***LISTAS***

### ***MATRIZES***

### ***CONSTRUTORES***
