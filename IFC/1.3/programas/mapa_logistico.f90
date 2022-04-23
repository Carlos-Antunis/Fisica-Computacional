! Autor: Carlos Antunis Bonfim da Silva Santos
! Programa para obter o gráfico de bifurcações do mapa logístico
PROGRAM bifurcacoes_mapa_logistico
	IMPLICIT NONE
	DOUBLE PRECISION, parameter :: dr = 0.0001
	DOUBLE PRECISION, parameter :: dx = 0.01
	DOUBLE PRECISION :: X_mapa

	DOUBLE PRECISION :: r, X_0
	INTEGER :: Iteracao

	OPEN(10, file="Bifurcacoes.dat")

	!Para cada parametro possível
	r = 3.0
	DO WHILE (r .le. 4.0)
		!Para cada possível condição inicial
		X_0 = 0.1
		DO WHILE (X_0 .le. 1.0)

			!Definir o valor da condição inicial
			X_mapa = X_0

			!Obter o comportamento assintótico do mapa
			DO Iteracao=0,15000
				X_mapa = r*X_mapa*(1.0 - X_mapa)
			ENDDO

			!Retornar o valor da iteração do mapa
			WRITE(10,*) r, X_mapa

		X_0 = X_0 + dx
		ENDDO
	r = r + dr
	ENDDO

	CLOSE(10)
END PROGRAM bifurcacoes_mapa_logistico