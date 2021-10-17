module vector_math
    implicit none
    ! Constants
    double precision, parameter :: pi = 3.141592653589793

contains

    function vector_sin(vec) result(result_sin)
        implicit none
        ! Input
        double precision, dimension (:), intent(in) :: vec
        ! Output
        double precision, allocatable, dimension (:) :: result_sin
        ! Internal
        integer :: n, i

        ! Statements Execution
        n = size( vec )
        allocate( result_sin(n) ) 
        do i = 1, n
            result_sin(i) = sin(i * pi/n)
        end do

    end function vector_sin

end module vector_math