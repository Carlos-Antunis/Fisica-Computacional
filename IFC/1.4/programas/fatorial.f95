!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para obter o fatorial de um número natural
PROGRAM Fatorial_de_um_Numero
    IMPLICIT NONE
    INTEGER :: numero

    !Obter o número
    PRINT*, "Informe o número: "
    READ*, numero

    !Compute o fatorial deste
    PRINT*, numero, " ! = ", fatorial(numero)

    CONTAINS

    RECURSIVE INTEGER FUNCTION fatorial(n) result(Fat_n)
        INTEGER :: n
        IF (n .EQ. 0) THEN
            Fat_n = 1
            RETURN
        ELSE
            Fat_n = n * fatorial(n-1)
        ENDIF
    END FUNCTION fatorial

END PROGRAM Fatorial_de_um_Numero