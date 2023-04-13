	real X(100,100,100), Y(100,100,100), Z(100,100,100) , r1,r2,l
	integer i,j,k, n,m,q

	write(*,*) 'donner valeur de n,m,q'
	read(*,*) n , m , q
	write(*,*)'donner valeur de r1 , r2 et l'
	read(*,*) r1 , r2 , l

	open(1, file ='circles.dat')
	write(1,*) 'variables = x , y ,z'
	write(1,*) 'zone i=',n,'j=',m,'k=',q

	pas = (r2-r1)/(n-1)
	angle = 2* acos(-1.)/ (m-1)
	dz = l/q

	do j=1,m
	do i = 1,n
	do k=1,q
      X(i,j,k)=(r1+ ((i-1)*pas))* cos((j+1)*angle)
	Y(i,j,k)=(r1+ ((i-1)*pas))* sin((j+1)*angle)
	Z(i,j,k) = dz/k
	write(1,*) 	 X(i,j,k), Y(i,j,k) ,Z(i,j,k)
	enddo
	enddo
	enddo

	stop
	end