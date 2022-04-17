program circulo
  IMPLICIT NONE
  DOUBLE PRECISION :: pi = 3.14159265359
  DOUBLE PRECISION :: Lado_do_Quadrado
  DOUBLE PRECISION :: Raio_do_Circulo, Area_do_Circulo

  !obter o valor do lado do quadrado
  print*, "Insira o valor do lado do quadrado: "
  read*, Lado_do_Quadrado

  !obter o raio em função do lado
  Raio_do_Circulo = Lado_do_Quadrado / 2.0

  !obter a área do circulo
  Area_do_Circulo = pi * Raio_do_Circulo ** 2.0

  !retornar o valor da área
  print*, "A area do quadrado e:", Area_do_Circulo

end program circulo