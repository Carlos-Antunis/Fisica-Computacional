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

Para se armazenar uma lista de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Lista_de_Variaveis[Quantidade];
```

Podemos acessar o valor de uma lista por meio do operador **[]**

```c
//atribui valor ao i-ésimo elemento na lista
Lista[i] = valor;
```

### ***MATRIZES***

Para se armazenar uma matrizes de variáveis de um mesmo tipo, utilizamos: 

```c
tipo Matriz_de_Variaveis[Linhas][Colunas];
```

Podemos acessar o valor de uma matriz por meio do operador **[]**

```c
//atribui valor ao (i,j)-ésimo elemento na matriz
Matriz[i][j] = valor;
```

### ***CONSTRUTORES***

Podemos inicializar listas de forma simplificada utilizando os construtores

```c
tipo Lista[Quantidade] = {
    //inicializa o i-ésimo elemento como valor
    [i] valor,

    //inicializa do n-ésimo ao m-ésimo elemento como valor
    [n ... m] valor,
};
```
Podemos inicializar matrizes de forma simplificada utilizando os construtores

```c
tipo Matriz[Linhas][Colunas] = {
    //inicializa o elemento da i-ésima linha da j-ésima coluna como valor
    [i][j] valor,

    //inicializa os elementos da i-ésima linha da l-ésima à p-ésima coluna como valor
    [i][l ... p] valor,

    //inicializa os elementos da j-ésima coluna da n-ésima à m-ésima linha como valor
    [n ... m][j] valor,

    //inicializa os elementos da l-ésima à p-ésima coluna da n-ésima à m-ésima linha como valor
    [n ... m][l ... p] valor,
};
```
