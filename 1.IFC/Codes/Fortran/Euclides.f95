!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o MDC de dois números pelo
!Algoritmo de euclides
program MDC_Euclides
    implicit none
    integer :: numero_1,numero_2

    !Obter os números
    PRINT*, "Informe o primeiro número: "
    READ*, numero_1
    PRINT*, "Informe o segundo número: "
    READ*, numero_2

    !Compute o MDC destes
    PRINT*, "o MDC entre ", numero_1, " e ", numero_2, " é: ", MDC(numero_1,numero_2)

    CONTAINS

    RECURSIVE integer FUNCTION MDC(a,b) RESULT(G)
        integer :: a, b
        IF (b .EQ. 0) THEN
            G = a
            RETURN
        ELSE
            G = MDC(b,mod(a,b))
        ENDIF
    END FUNCTION MDC

end program MDC_Euclides