!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar as raízes reais de equação de segundo grau a partir
!de seus coeficientes
program SegundoGrau
    implicit none
    double precision :: Termo_Independente, Coeficiente_Linear, Coeficiente_Quadratico
    double precision :: Solucao_1, Solucao_2, Descriminante
    
    !Obter os coeficientes
    PRINT*, "Informe o termo independente: "
    READ*, Termo_Independente
    PRINT*, "Informe o coeficiente linear: "
    READ*, Coeficiente_Linear
    PRINT*, "Informe o coeficiente quadrático: "
    READ*, Coeficiente_Quadratico
    
    !Computar o descriminante
    Descriminante = Coeficiente_Linear ** 2.0 &
                    - 4.0 * Coeficiente_Quadratico * Termo_Independente
    
    if (Descriminante > 0) then !há duas soluções reais dadas pela
                                !fórmula resolvente de segundo grau
        Solucao_1 = -(Coeficiente_Linear + sqrt(Descriminante)) &
                    / (2.0 * Coeficiente_Quadratico)
        Solucao_2 = -(Coeficiente_Linear - sqrt(Descriminante)) &
                    / (2.0 * Coeficiente_Quadratico)
        PRINT*, "há duas soluções reais: x1 = ", Solucao_1, " e x2 = ", Solucao_2
    else if (Descriminante == 0) then !há uma única solução real dadas pela
                                      !fórmula resolvente de segundo grau que
                                      !neste caso reduz-se para x = -b/2a
        Solucao_1 = -Coeficiente_Linear / (2.0 * Coeficiente_Quadratico)
        PRINT*, "há uma solução real: x = ",  Solucao_1
    else !não há soluções reais
        PRINT*, "não há soluções reais"
    endif

end program SegundoGrau
