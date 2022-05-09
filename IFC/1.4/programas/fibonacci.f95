!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para obter o n-ésimo termo da sequência de
!* Fibonacci
PROGRAM Numero_de_Fibonacci
    IMPLICIT NONE
    INTEGER :: numero

    !Obter o número
    PRINT*, "Informe um número: "
    READ*, numero

    !Compute o n-ésimo termo da sequência de Fibonacci
    PRINT*, "o ", numero, " º termo da sequência de Fibonacci é ", fibonacci(numero)

    CONTAINS

    RECURSIVE INTEGER FUNCTION fibonacci(n) result(Fib_n)
        INTEGER :: n
        IF (n .EQ. 0) THEN
            Fib_n = 0
            RETURN
        ELSEIF (n .EQ. 1) THEN
            Fib_n = 1
            RETURN
        ELSE
            Fib_n = fibonacci(n-1) + fibonacci(n-2)
        ENDIF
    END FUNCTION fibonacci

END PROGRAM Numero_de_Fibonacci