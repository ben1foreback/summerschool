program arrays
  implicit none
  integer :: nx, ny
  integer :: i, j, alloc_stat
  ! TODO: define allocatable array A

  real, allocatable :: A(:,:)

  write (*,*) 'Give number of rows and columns for matrix A:'
  read (*,*) nx, ny

  if (nx < 0) then
    write (*,*) 'You cannot supply a negative number.'
    stop
  end if

  ! TODO allocate A now that we know nx and ny
  allocate (A(nx,ny), stat=alloc_stat)
  if (alloc_stat /= 0) write(*,*) 'ERROR allocating the array A'

  ! TODO Use array syntax to initialize the array

  do j=1,ny
    do i=1, nx
      A(i,j) = i+j
    end do
  end do


  !--------------------------------------------------
  ! Print out the array
  do i = 1, nx
    write(*,'(*(F6.1))') A(i,:)
  end do


end program arrays
