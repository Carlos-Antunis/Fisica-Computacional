! Autor: Carlos Antunis Bonfim da Silva Santos
! Programa para obter a solução de uma equação de segundo grau
PROGRAM Solucao_da_equacao_quadratica
	IMPLICIT NONE
	DOUBLE PRECISION :: A,B,C
	DOUBLE PRECISION :: Descriminante, Raiz_do_Descriminante
	DOUBLE PRECISION :: Solucao_1, Solucao_2

	!Obter os coeficientes
	PRINT*,"Insira o coeficiente quadratico: "
	READ*, A
	PRINT*,"Insira o coeficiente linear: "
	READ*, B
	PRINT*,"Insira o termo independente: "
	READ*, C

	!Calcular o descriminante
	Descriminante = B**2.0 - 4.0*A*C

	IF (Descriminante .gt. 0.0) THEN
		!Caso o descriminante seja nulo há duas soluções
		Raiz_do_Descriminante = sqrt(Descriminante)
		Solucao_1 = (-B - Raiz_do_Descriminante)/(2.0*A)
		Solucao_2 = (-B + Raiz_do_Descriminante)/(2.0*A)

		!Retornar a solução
		PRINT*, "as solucoes sao x =", Solucao_1, " e x =", Solucao_2
	ELSEIF (Descriminante .eq. 0.0) THEN
		!Caso o descriminante seja nulo há apenas uma solução
		Solucao_1 = -B/(2.0*A)

		!Retornar a solução
		PRINT*, "ha apenas como solucao x =", Solucao_1
	ELSE
		!Caso o descriminante seja negativo não há soluções reais
		PRINT*,"nao ha raizes reais"
	ENDIF

END PROGRAM Solucao_da_equacao_quadratica
