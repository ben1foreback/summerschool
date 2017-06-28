program intrinsics
  implicit none
  integer :: nx, ny
  integer :: i, alloc_stat, my_count
  real, dimension(:,:), allocatable :: A

  write (*,*) 'Give number of rows and columns for matrix A:'
  read (*,*) nx, ny

  allocate(A(nx,ny), stat = alloc_stat)
  if (alloc_stat /= 0) call abort()

  ! Initializing array
  A(:,:)  = 65.0 ! middle
  A(:,1)  = 20.0 ! left
  A(:,ny) = 70.0 ! right
  A(1,:)  = 85.0 ! top
  A(nx,:) = 5.0  ! bottom

  write (*,*) '-----------------------------------------'

  !--------------------------------------------------
  ! Print out the array
  write (*,*) 'Array A ='
  do i = 1, nx
    write(*,'(*(F6.1))') A(i,:)
  end do
  write (*,*) '-----------------------------------------'

  !--------------------------------------------------
  ! TODO: use array intrinsics to probe elements of A
  
  
  write (*,*) 'Sum across dimension 2 is '
  write (*,'(F6.1)') sum(A,2)

  write(*,*) 'Location of the maximum value is '
  write(*,*) maxloc(A)

  write(*,*) 'Absolute Minimum is '
  write(*,*) minval(abs(A))

  ! Are all elements of A greater or equal to zero?
  if (minval(A) >= 0) then
    write(*,*) 'All elements are greater than zero.'
  else
    write(*,*) 'NOT all elements are greater than zero.'
  end if

  write (*,*) 'Number of elements greater or equal to 0.5 is '
  write(*,*) count(A >= 0.5)
  

end program intrinsics
