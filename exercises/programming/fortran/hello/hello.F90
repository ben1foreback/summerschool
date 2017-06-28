program hello
  implicit none
  
  integer :: days_per_year, months_per_year
  real :: average_days_per_month
  write (*,*) 'Hello world from Fortran!'
  
  days_per_year = 365
  months_per_year = 12

  write(*,'(A27,I3)') 'Number of days per year is ', days_per_year 

  ! Calculate the average number of days in eaah month.
  average_days_per_month = real(days_per_year)/real(months_per_year)

  write(*,'(A36,G0)') 'Average number of days per month is ', average_days_per_month
  
end program hello
