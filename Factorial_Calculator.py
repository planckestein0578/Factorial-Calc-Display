program FactorialCalculator
    implicit none
    
    integer :: number
    integer(kind=8) :: factorial
    integer :: i
    
    ! Ask the user to enter a number
    print *, "Enter a number:"
    read(*,*) number
    
    ! Check if the input number is negative
    if (number < 0) then
        print *, "Factorial is not defined for negative numbers."
        stop
    endif
    
    ! Initialize factorial to 1
    factorial = 1
    
    ! Calculate factorial
    do i = 1, number
        factorial = factorial * i
    end do
    
    ! Output the factorial
    print *, "The factorial of ", number, " is ", factorial
    
end program FactorialCalculator
