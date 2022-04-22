! Autor: Carlos Antunis Bonfim da Silva Santos
! Programa para obter a área de um círculo inscrito num quadrado de
! lado L
PROGRAM area_do_circulo_inscrito
    IMPLICIT NONE
    DOUBLE PRECISION, parameter :: pi = 3.14159265359
    DOUBLE PRECISION :: Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo

    !Obter o valor do lado do quadrado
    PRINT*, "Insira o valor do lado do quadrado: "
    READ*, Lado_do_Quadrado

    !Calcular o raio do circulo
    Raio_do_Circulo = Lado_do_Quadrado/2.0

    !Calcular a área do circulo
    Area_do_Circulo = pi * Raio_do_Circulo ** 2.0

    !Retornar o valor da área
    PRINT*, "A area do circulo vale: ", Area_do_Circulo

END PROGRAM area_do_circulo_inscrito