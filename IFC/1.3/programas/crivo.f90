! Autor: Carlos Antunis Bonfim da Silva Santos
! Programa para obter os números primos entre 2 e 100 pelo crivo de Eratóstenes
PROGRAM Crivo_de_Eratostenes
	IMPLICIT NONE
	LOGICAL :: E_Primo(2:100) =.TRUE.
	integer :: I

	!Para todos os números entre 2 e 100 que são primos
	FORALL (I=2:100, E_Primo(i))
		!Eliminar seus múltiplos
		E_Primo(2*I:100:I) = .FALSE.
	ENDFORALL

	!Retornar todos os números entre 2 e 100 que são primos 
	DO I=2,100
		IF (E_Primo(i)) THEN
			PRINT*, i
		ENDIF
	ENDDO

END PROGRAM Crivo_de_Eratostenes
