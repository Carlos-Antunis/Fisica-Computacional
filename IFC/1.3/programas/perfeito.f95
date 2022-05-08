!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para testar se um número é perfeito.
PROGRAM numero_perfeito
    IMPLICIT NONE
    INTEGER :: numero, soma_dos_fatores=0, fator

    !Obter o número
    PRINT*, "Informe o número: "
    READ*, numero

    DO fator = 1, numero-1
        IF (mod(numero, fator) .EQ. 0) THEN !Se um fator inteiro divide o número
                                            !então some na soma dos divisores
            soma_dos_fatores = soma_dos_fatores + fator
        ENDIF
    ENDDO

    IF (soma_dos_fatores .EQ. numero) THEN  !Se a soma dos divisores for exatamente
                                            !o número, ele é um número perfeito
        PRINT*, numero, "é perfeito"
    ELSE !Caso contrário ele não é perfeito
        PRINT*, numero, "não é perfeito"
    ENDIF

END PROGRAM numero_perfeito