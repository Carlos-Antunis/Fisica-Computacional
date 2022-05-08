!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para obter a área de um círculo a partir
!* do lado de um quadrado que o circunscreve.
PROGRAM circulo_inscrito
    IMPLICIT NONE
    DOUBLE PRECISION :: Lado_do_Quadrado, Raio_do_Circulo, Area_do_Circulo
    DOUBLE PRECISION :: pi = 3.14159265359

    !Obter o valor do lado do quadrado
    PRINT*, "Informe o valor do lado do quadrado: "
    READ*, Lado_do_Quadrado

    !Computar o raio do círculo
    Raio_do_Circulo = Lado_do_Quadrado / 2.0

    !Computar a área do círculo
    Area_do_Circulo = pi * Raio_do_Circulo ** 2.0
    PRINT*, "A área do círculo vale: ", Area_do_Circulo

END PROGRAM circulo_inscrito