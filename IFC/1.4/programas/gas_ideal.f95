!* Autor: Carlos Antunis Bonfim da Silva Santos
!* Sobre:
!* Programa para obter o volume de um gás ideal a partir das demais
!* variáveis termodinâmicas.
PROGRAM gas_ideal
    IMPLICIT NONE
    DOUBLE PRECISION :: Pressao_do_Gas, Temperatura_do_Gas, Volume_do_Gas
    INTEGER :: N_mols

    !Obter as variáveis de estado
    PRINT*, "Informe o número de mols: "
    READ*, N_mols
    PRINT*, "Informe a pressão em atm: "
    READ*, Pressao_do_Gas
    PRINT*, "Informe a temperatura em kelvin: "
    READ*, Temperatura_do_Gas

    !Obter o volume ocupado pelo gás ideal
    Volume_do_Gas = Volume_gas_ideal(Pressao_do_Gas,Temperatura_do_Gas,N_mols)
    PRINT*, "O volume ocupado pelo gás é de ", Volume_do_Gas, " L."

    CONTAINS
    DOUBLE PRECISION FUNCTION Volume_gas_ideal(Pressao, Temperatura, N_mols) RESULT(Volume)
        DOUBLE PRECISION :: Pressao, Temperatura
        INTEGER :: N_mols
        DOUBLE PRECISION, PARAMETER :: R =  0.08205746

        Volume = N_mols*R*Temperatura/Pressao

        RETURN
    END FUNCTION Volume_gas_ideal

END PROGRAM gas_ideal