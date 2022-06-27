!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar a área de um círculo a partir do lado de um
!quadrado que o circunscreve
program CirculoInscrito
    implicit none
    double precision :: Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo
    double precision, PARAMETER :: pi = 3.14159265359

    !Obter o valor do lado do quadrado
    PRINT*, "Informe o valor do lado do quadrado: "
    READ*, Lado_do_Quadrado

    !Computar o raio do círculo
    Raio_do_Circulo = Lado_do_Quadrado / 2.0

    !Computar a área do círculo
    Area_do_Circulo = pi * Raio_do_Circulo * Raio_do_Circulo
    PRINT*, "A área do círculo vale: ", Area_do_Circulo

end program CirculoInscrito