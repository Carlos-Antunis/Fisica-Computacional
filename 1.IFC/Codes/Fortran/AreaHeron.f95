!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar a área de um triângulo a partir da fórmula
!de Heron
program FormuladeHeron
    implicit none
    double precision :: Lado_1, Lado_2, Lado_3
    double precision :: Semiperimetro, Area_do_Triangulo

    !Obter o valor dos lado do triângulo
    PRINT*, "Informe o primeiro valor do lado do triângulo: "
    READ*, Lado_1
    PRINT*, "Informe o segundo valor do lado do triângulo: "
    READ*, Lado_2
    PRINT*, "Informe o terceiro valor do lado do triângulo: "
    READ*, Lado_3

    !Computar o semiperímetro
    Semiperimetro = (Lado_1 + Lado_2 + Lado_3) / 2.0;

    !Computar a área do triângulo
    Area_do_Triangulo = sqrt(Semiperimetro * &      !Declara continuação
                        (Semiperimetro - Lado_1) * &!na linha seguinte.
                        (Semiperimetro - Lado_2) * &
                        (Semiperimetro - Lado_3))
    PRINT*, "A área do triângulo é: ", Area_do_Triangulo

end program FormuladeHeron