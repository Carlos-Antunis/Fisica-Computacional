!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o fatorial de um número
program FatorialdeumNumero
    implicit none
    integer :: numero

    !Obter o número
    PRINT*, "Informe o número: "
    READ*, numero

    !Compute o fatorial deste
    PRINT*, numero, " ! = ", fatorial(numero)

    CONTAINS

    RECURSIVE integer FUNCTION fatorial(n) result(Fat_n)
        integer :: n
        IF (n .EQ. 0) THEN
            Fat_n = 1
            RETURN
        ELSE
            Fat_n = n * fatorial(n-1)
        ENDIF
    END FUNCTION fatorial

end program FatorialdeumNumero