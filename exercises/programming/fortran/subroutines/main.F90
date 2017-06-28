program subroutines

  use laplacian_mod
  implicit none

  real, allocatable :: previous(:,:), current(:,:)
  
  ! As the user for input on the number of rows and columns for the array to initialize.
  write (*,*) 'Give number of rows and columns for matrix A:'
  read (*,*) nx, ny
  
  ! Allocate the variables.
  allocate(previous(nx,ny), current(nx,ny))

  ! initialize the array
  call initialize(previous)

  call write_field(previous)

  ! compute the Laplacian
  call laplacian(current, previous)

  ! print the result array
  call write_field(current)
 
end program subroutines

