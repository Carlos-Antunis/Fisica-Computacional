!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para obter a área de um triângulo a partir
!* da fórmula de Heron.
PROGRAM formula_de_heron
    IMPLICIT NONE
    DOUBLE PRECISION :: Lado_1,Lado_2,Lado_3
    DOUBLE PRECISION :: Semiperimetro, Area_do_Triangulo

    !Obter o valor dos lados do triângulo
    PRINT*, "Informe o primeiro valor do lado do triângulo: "
    READ*, Lado_1
    PRINT*, "Informe o segundo valor do lado do triângulo: "
    READ*, Lado_2
    PRINT*, "Informe o terceiro valor do lado do triângulo: "
    READ*, Lado_3

    !Computar o semiperímetro
    Semiperimetro = (Lado_1 + Lado_2 + Lado_3) / 2.0

    !Computar a área do triângulo
    Area_do_Triangulo = sqrt(Semiperimetro * &
        (Semiperimetro - Lado_1) * &
        (Semiperimetro - Lado_2) * &
        (Semiperimetro - Lado_3))
    PRINT*, "A área do triângulo é: ", Area_do_Triangulo

END PROGRAM formula_de_heron