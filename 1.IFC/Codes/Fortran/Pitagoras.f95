!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o valor da hipotenusa de um triângulo retângulo
!com catetos informados pelo usuário
program Pitagoras
    implicit none
    double precision :: Cateto_1, Cateto_2, Hipotenusa

    !Obter o primeiro cateto
    PRINT*, "Informe o primeiro cateto: "
    READ*, Cateto_1

    !Obter o segundo cateto
    PRINT*, "Informe o segundo cateto: "
    READ*, Cateto_2

    !Computar a hipotenusa
    Hipotenusa = sqrt(Cateto_1 ** 2.0 + Cateto_2 ** 2.0)
    PRINT*, "A hipotenusa é",  Hipotenusa

end program Pitagoras