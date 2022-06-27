!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o comprimento de uma circunferência com raio
!informado pelo usuário
program MapaLogistico
    implicit none
    double precision, PARAMETER :: dr = 0.0001, dx = 0.01
    double precision :: r, X_0, X_mapa
    integer, PARAMETER :: Grafico_das_Bifurcacoes = 10
    integer :: Iteracao

    !Abrir o arquivo de dados
    open(unit = Grafico_das_Bifurcacoes, file = "Bifurcacoes.dat")

    !Para cada parametro possível
    r = 3.0
    do while (r .lt. 4.0)
        !Para cada condição inicial
        X_0 = 0.1
        do while(X_0 .lt. 1.0)
            X_mapa = X_0
            do Iteracao = 0, 15000
                X_mapa = r * X_mapa * (1.0 - X_mapa)
            end do

            !Escrever o valor do mapa do mapa
            WRITE (Grafico_das_Bifurcacoes,*) r, X_mapa

            X_0 = X_0 + dx
        enddo
        r = r + dr
    enddo

    !Fechar o arquivo de dados
    close(Grafico_das_Bifurcacoes)

end program MapaLogistico