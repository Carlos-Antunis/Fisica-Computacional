!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o n-ésimo número da sequência de Fibonacci
program SequenciaFibonacci
    implicit none
    integer :: numero

    !Obter o número
    PRINT*, "Informe um número: "
    READ*, numero

    !Compute o n-ésimo termo da sequência de Fibonacci
    PRINT*, "o ", numero, " º termo da sequência de Fibonacci é ", fibonacci(numero)

    CONTAINS

    RECURSIVE integer FUNCTION fibonacci(n) result(Fib_n)
        integer :: n
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

end program SequenciaFibonacci