module fortmodule
    use iso_c_binding
    implicit none
    
    integer(C_INT), bind(C), dimension(5) :: numbers
    
    contains
    
    subroutine fortransub() bind(C)
    
       print *, "Hello from Fortran!"
       numbers(1) = 1
       numbers(2) = 2
       numbers(3) = 3
       numbers(4) = 4
       numbers(5) = 5
    
    end subroutine
    
    end module