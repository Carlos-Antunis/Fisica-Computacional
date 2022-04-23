! Autor: Carlos Antunis Bonfim da Silva Santos
! Programa para obter a área de um polígono regular de N lados
! inscrito numa circunferencia de raio R
PROGRAM area_do_poligono_inscrito
	IMPLICIT NONE
	DOUBLE PRECISION, parameter :: pi = 3.14159265359
	DOUBLE PRECISION :: Raio_do_Circulo, Apotema, Lado_do_Poligono, Angulo, Perimetro, Area_do_Poligono
	INTEGER :: Numero_de_Lados_do_Poligono

	!Obter o valor do raio do círculo
	PRINT*, "Insira o valor do raio do circulo: "
	READ*, Raio_do_Circulo

	!Obter a quantidade de lados do polígono inscrito
	PRINT*, "Insira o numero de lados do poligono inscrito: "
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

	!Retornar a área do polígono
	PRINT*, "A area do poligono vale: ", Area_do_Poligono

END PROGRAM area_do_poligono_inscrito
