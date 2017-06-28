module laplacian_mod
  implicit none
  real, parameter :: dx = 0.01, dy = 0.01

  integer, public :: nx, ny

contains
  
  subroutine initialize(field0)
! subroutine that initializes the input array
  real, allocatable :: field0(:,:)
  integer i, j
  
  ! initialize prev array with varying boundaries
  field0(:,:)  = 65.0 ! middle
  field0(:,1)  = 20.0 ! left
  field0(:,ny) = 70.0 ! right
  field0(1,:)  = 85.0 ! top
  field0(nx,:) = 5.0  ! bottom  

  end subroutine initialize
   
  subroutine laplacian(curr, prev)
! TODO: insert a subroutine that computes a laplacian of the
! array "prev" and returns it as an array "curr"
! Evaluate it only at the inner points.
real, allocatable :: curr(:,:), prev(:,:)
integer i, j

  do j=2,ny-1
    do i=2,nx-1
      curr(i,j) = ( prev(i-1,j) - 2*prev(i,j) + prev(i+1,j) ) &
                 /              dx**2                         &
             +    ( prev(i,j-1) - 2*prev(i,j) + prev(i,j+1) ) &
                 /              dy**2
    end do
  end do


  end subroutine laplacian

  subroutine write_field(array)
! TODO: write a subroutine that prints "array" on screen

  real, allocatable :: array(:,:)
  integer i
  
  write(*,*) '--------------------------------------------------'
  do i = 2, nx-1
    write(*,'(*(G10.1))') array(i,2:ny-1)
  end do

  end subroutine write_field

end module laplacian_mod
