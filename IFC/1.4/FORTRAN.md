# **SUBPROCESSOS E FUNÇÕES**

[Voltar ao sumário](../../README.md)

## ***FUNÇÕES***

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

>EXEMPLO 1. Implementação de um programa que computa o gráfico da função de Bessel para m = 0.5.
>```fortran
>PROGRAM bessel_de_0p5
>    IMPLICIT NONE
>    DOUBLE PRECISION, PARAMETER :: dx = 0.05
>    DOUBLE PRECISION :: x, y
>
>    OPEN(10, file = "Bessel0p5.dat")
>
>    x = 0.1
>    DO WHILE(x .LE. 20.0)   !Para cada valor de x
>                            !escreva x e sua aplicação
>        y = Bessel_0p5(x)
>        WRITE(10,*) x, y
>    x = x + dx
>    ENDDO
>
>    CLOSE(10)
>
>    CONTAINS
>
>    DOUBLE PRECISION FUNCTION Bessel_0p5(x) RESULT(Bessel0p5_de_x)
>        DOUBLE PRECISION :: x
>        DOUBLE PRECISION, PARAMETER :: pi = 3.14159265359
>
>        Bessel0p5_de_x = sqrt(2.0/(pi*x))*sin(x)
>    
>        RETURN
>    END FUNCTION Bessel_0p5
>
>END PROGRAM bessel_de_0p5
>```

> EXERCÍCIO 1. Implemente um código capaz de computar o volume (em Litros) de um gás ideal a partir de sua pressão (em atm), temperatura (em Kelvin) e número de mols.
>
>[Resposta](./programas/gas_ideal.f95)

## ***SUBROTINAS***

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

>EXEMPLO 3. Implementação de um programa com um subprocesso que computa a posição de uma partícula em movimento retilíneo uniformemente variado em função do tempo dada sua configuração inicial.
>```fortran
>PROGRAM MRUV
>    IMPLICIT NONE
>    DOUBLE PRECISION :: posicao_inicial, velocidade_inicial, aceleracao
>
>    !Obter a configuração do sistema
>    PRINT*, "Informe a posição inicial: "
>    READ*, posicao_inicial
>    PRINT*, "Informe a velocidade inicial: "
>    READ*, velocidade_inicial
>    PRINT*, "Informe a aceleração: "
>    READ*, aceleracao
>
>    !Executar o subprocesso
>    CALL escrever_grafico_MRUV(posicao_inicial, velocidade_inicial, aceleracao);
>
>    CONTAINS
>
>    SUBROUTINE escrever_grafico_MRUV(x_0, v_0, a)
>        DOUBLE PRECISION :: x_0, v_0, a
>        DOUBLE PRECISION :: tempo, x
>        DOUBLE PRECISION, PARAMETER :: Tempo_Maximo = 100.0, dt = 0.5
>
>        OPEN(10, file = "GraficoMRUV.dat")
>
>        tempo = 0.0
>        DO WHILE(tempo .lt. Tempo_Maximo)
>            x = x_0 + v_0 * tempo + a/2.0 * tempo ** 2.0
>            WRITE(10,*) tempo, x
>
>        tempo = tempo + dt
>        ENDDO
>
>        CLOSE(10)
>    END SUBROUTINE 
>
>END PROGRAM MRUV
>```

## ***RECURSÃO***

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

>EXEMPLO 2. Implementação de um programa que computa o mínimo divisor comum de dois naturais pelo algoritmo de Euclides.
>```fortran
>PROGRAM MDC_Euclides
>    IMPLICIT NONE
>    INTEGER :: numero_1,numero_2
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
>    RECURSIVE INTEGER FUNCTION MDC(a,b) RESULT(G)
>        INTEGER :: a, b
>        IF (b .EQ. 0) THEN
>            G = a
>            RETURN
>        ELSE
>            G = MDC(b,mod(a,b))
>        ENDIF
>    END FUNCTION MDC
>
>END PROGRAM MDC_Euclides
>```

> EXERCÍCIO 2. Implemente um código capaz de computar o valor do fatorial de um natural.
>
>[Resposta](./programas/fatorial.f95)
