program hello
    ! Importing a module
    use vector_math
    
    implicit none

    ! Variable Declaration
    double precision, dimension(6) :: vec
    double precision, allocatable, dimension(:) :: new_vec
    integer(1) :: i, n
    
    ! Hello, World!
    print *, "Hello, World!" 
    
    n = size(vec)
    ! Using a function from the module
    new_vec = vector_sin(vec)
    do i = 1, (n -1)
        print *, "Sin(", i, "*pi/", n, ") =", new_vec(i) 
    end do
    
end program hello
