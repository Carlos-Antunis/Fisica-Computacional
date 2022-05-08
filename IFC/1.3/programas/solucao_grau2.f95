!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para testar se um número é solução de uma
!* equação de segundo grau.
PROGRAM Solucao_de_segundo_grau
    IMPLICIT NONE
    DOUBLE PRECISION :: numero, coeficiente(0:2), resultado

    !Obter o número
    PRINT*, "Informe o número: "
    READ*, numero

    !Obter os coeficientes
    PRINT*, "Informe o termo independente: "
    READ*, coeficiente(0)
    PRINT*, "Informe o coeficiente linear: "
    READ*, coeficiente(1)
    PRINT*, "Informe o coeficiente quadrático: "
    READ*, coeficiente(2)

    !Computar o valor da equação para o número fornecido
    resultado = coeficiente(0) + &
                coeficiente(1) * numero + &
                coeficiente(2) * (numero ** 2.0)
    IF (resultado .EQ. 0.0) THEN
        PRINT*, numero, "é solução"
    ELSE
        PRINT*, numero, "não é solução"
    ENDIF

END PROGRAM Solucao_de_segundo_grau