!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o comprimento de uma circunferência com raio
!informado pelo usuário
program CalcularCircunferencia
    implicit none
    double precision :: Raio_do_Circulo, Comprimento_da_Circunferencia
    double precision, PARAMETER :: pi = 3.14159265359

    !Obter o raio do círculo
    PRINT*, "Informe o raio do círculo: "
    READ*, Raio_do_Circulo!Lendo um valor double e armazenando-o
                          !na variável de nome Raio_do_Circulo

    !Computar o comprimento da circunferencia
    Comprimento_da_Circunferencia = 2.0 * pi * Raio_do_Circulo
    PRINT*, "O perímetro é ", Comprimento_da_Circunferencia

end program CalcularCircunferencia