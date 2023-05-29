
!___________________Michael Oppong______________________
!____________________8676921____________________________




program mahashala
!A FORTRAN script that reads Temperature values (in degrees Celsius) from the file ‘Air-Temperature.csv’, and convert them into Kelvin temperature values.

  	implicit none  
  	! enforce explicit variable declarations


  ! Declare arrays to store temperature, energy, and wavelength data
  Real, dimension(100) :: temperature 

  ! Declare loop counter variable
  integer :: m

  ! Open the file 'Air-Temperature.csv' for reading
  	open(unit=50, file='Air-Teemperature.csv', status='old')

  ! Print a header line for the table
  print "('Temperature (K)')"
  
  ! Loop over each line in the file, reading in the temperature data
    do m = 1, 30
   	 read(50, *) temperature(m)

   	 ! Convert the temperature from Celsius to Kelvin
    	temperature(m) = 273.15 + temperature(m)

  	  
    
  	! Print the temperature to the console using a loop
    write(*, '( F6.2, "    K")') temperature(m)
    
  end do

  ! Close the file 'Air-Temperature.csv'
  close(50)


end program mahashala

 
