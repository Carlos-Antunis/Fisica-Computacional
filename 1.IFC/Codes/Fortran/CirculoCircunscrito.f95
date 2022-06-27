!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar área de um polígono regular inscrito numa 
!circunferência
program CirculoCircunscrito
    implicit none
    double precision :: Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono
    integer :: Numero_de_Lados_do_Poligono
    double precision, PARAMETER :: pi = 3.14159265359
    
    !Obter o raio do círculo
    PRINT*, "Insira o valor do raio do círculo: "
    READ*, Raio_do_Circulo
    
    !Obter a quantidade de lados do polígono inscrito
    PRINT*, "nsira o número de lados do polígono inscrito: "
    READ*, Numero_de_Lados_do_Poligono
    
    !Calcular o ângulo entre o raio e a apotema
    Angulo = pi/Numero_de_Lados_do_Poligono
    
    !Calcular o lado do polígono
    Lado_do_Poligono = 2.0 * Raio_do_Circulo * sin(Angulo)
    
    !Calcular a apotema do polígono
    Apotema = Raio_do_Circulo * cos(Angulo)
    
    !Calcular o perímetro do polígono
    Perimetro = Numero_de_Lados_do_Poligono * Lado_do_Poligono
    
    !Calcular a área do polígono
    Area_do_Poligono = Perimetro * Apotema / 2.0
    PRINT*, "A área do polígono vale: ", Area_do_Poligono

end program CirculoCircunscrito
