program FactorialCalculator
    implicit none
    
    integer :: number
    integer(kind=8) :: factorial
    integer :: i
    character(len=1) :: response
    
    do
        ! Ask the user to enter a number
        print *, "Enter a number:"
        read(*,*) number
        
        ! Check if the input number is negative
        if (number < 0) then
            print *, "Factorial is not defined for negative numbers."
            cycle  ! Continue to the next iteration of the loop
        endif
        
        ! Initialize factorial to 1
        factorial = 1
        
        ! Calculate factorial
        do i = 1, number
            factorial = factorial * i
        end do
        
        ! Output the factorial
        print *, "The factorial of ", number, " is ", factorial
        
        ! Ask the user if they want to calculate another factorial
        print *, "Do you want to calculate the factorial of another number? (y/n)"
        read(*,*) response
        
        ! Check if the user wants to exit
        if (response /= 'y' .and. response /= 'Y') then
            exit  ! Exit the loop if the response is not 'y' or 'Y'
        endif
    end do
end
