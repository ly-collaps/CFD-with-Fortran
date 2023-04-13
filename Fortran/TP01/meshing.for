	real X(50,50),Y(50,50),s1,s2 ,l 
	integer i, j , n ,m

	write (*,*) 'donner la valeur de n,m '
	read (*,*) n ,m
	write (*,*) 'donner la valeur de l '
	read (*,*) l 

	s1= l/(n-1)
	s2=l/(m-1)

      do j=1,m
	do i =1,n
	X(i,j)=(i-1)*s1

	Y(i,j)=	(j-1)*s2
	enddo
	enddo

	do j=1,m
 	do i =1,n
	write(*,*) X(i,j),Y(i,j)
	enddo
	enddo

	open( 1,file='sara.dat')
	write (1,*) 'variables = x , y '
	write(1,*) 'zone i= ',n , 'j=',m


	do j=1,m
	do i = 1,n
	write(1,*)
	enddo
	enddo


	stop
	end