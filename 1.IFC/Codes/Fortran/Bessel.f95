!Autor: Carlos Antunis Bonfim da Silva Santos
!Objetivo:
!Computar o gráfico da função Bessel(0.5,x)
program bessel_de_0p5
   IMPLICIT NONE
   double precision, PARAMETER :: dx = 0.05
   double precision :: x, y

   OPEN(10, file = "Bessel0p5.dat")

   x = 0.1
   do while(x .LE. 20.0)   !Para cada valor de x
                           !escreva x e sua aplicação
       y = Bessel_0p5(x)
       WRITE(10,*) x, y
   x = x + dx
   enddo

   CLOSE(10)

   CONTAINS

   double precision FUNCTION Bessel_0p5(numero) RESULT(Bessel0p5_de_x)
       double precision :: numero
       double precision, PARAMETER :: pi = 3.14159265359

       Bessel0p5_de_x = sqrt(2.0/(pi*numero))*sin(numero)
   
       RETURN
    END FUNCTION Bessel_0p5

end program bessel_de_0p5