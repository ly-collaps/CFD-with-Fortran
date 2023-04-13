	real X(50,50),Y(50,50),s1,s2 ,l 
	integer i, j , n ,m	,k ,p

	write (*,*) 'donner la valeur de n,m '
	read (*,*) n ,m
	write (*,*) 'donner la valeur de l '
	read (*,*) l
	open( 1,file='meduse4.dat')
	p = n*m
	k = (n-1)*(m-1)*2
   	write (1,*) 'variables = x , y '
	write(1,*) 'zone N=100,E=162, F= FEPOINT, ET= TRIANGLE' 
	
 

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
	write(1,*) X(i,j),Y(i,j)
	enddo
	enddo



	do j=1,m-1
	do i = 1,n-1
	write(1,*) ((j-1)*n)+i ,((j-1)*n)+(i+1),(j*n)+(i+1)
	write(1,*) ((j-1)*n)+i,(j*n)+(i+1), (j*n)+i
	enddo
	enddo


	stop
	end