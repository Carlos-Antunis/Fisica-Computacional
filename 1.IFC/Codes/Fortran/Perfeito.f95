!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar se um número é perfeito
program NumeroPerfeito
    implicit none
    integer :: Numero, Soma_dos_Fatores, fator

    !Obter o número
    PRINT*, "Informe o número a ser testado: "
    READ*, Numero

    !Somar todos os fatores do Número
    Soma_dos_Fatores = 0;
    do fator = 1, Numero, 1
        if (mod(Numero, fator) .EQ. 0) then
            Soma_dos_Fatores = Soma_dos_Fatores + fator
        endif
    enddo

    if (Numero .EQ. Soma_dos_Fatores) then !Se o número for
                                           !a soma dos fatores
                                           !ele é perfeito
        PRINT*, Numero, "é perfeito"
    else
        PRINT*, Numero, "não é perfeito"
    endif

end program NumeroPerfeito