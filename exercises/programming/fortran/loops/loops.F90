program loops
  implicit none
  ! TODO define parameters nx and ny
  integer, parameter :: nx = 10, ny = 10
  ! TODO: define real-valued array A
  real, dimension(0:nx+1,0:ny+1) :: A
  integer :: i, j

  ! Initialize array A, first with values of 65
  A = 65

  ! Now initialize boundaries, outside the normal bounds.
  
  do i=0, nx+1
    A(i,0) = 20
  end do

  do i=0, nx+1
    A(i,ny+1) = 70
  end do

  do j=0, ny+1
    A(0,j) = 85
  end do

  do j=0, ny+1
    A(nx+1, j) = 5
  end do


  !--------------------------------------------------
  ! Print out the array
  ! the ':' syntax means the whole row, see the Fortran arrays lecture
  do i = 0, nx+1
     write(*, '(12F6.1)') A(i,:)
  end do

end program loops
