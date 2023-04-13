      real  X(100,100), Y(100,100),U(100,100), Up(100,100), eps
	integer i,j,n,m 
	write(*,*) 'Enter the value of n,m'
	read(*,*) n,m 

	write(*,*) 'Enter the value of the ratio r'
	read(*,*) r

	write(*,*) 'Enter the value of eps '
	read(*,*) eps

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

	
	Do i=1,n 
	U(i,1) =0
	enddo 

	Do j=1,m 
	U(1,j) = 0 
	enddo

	Do j=1,m 
	U(n,j) = 0 
	enddo

	Do i=1,n 
	U(m,i) =300
	enddo

	do i=2,n-1
	do j = 2,m-1
	U(i,j)=100
	enddo
	enddo 


	do i=2,n-1
	do j=2,m-1
3	Up(i,j)=(r*(U(i,j+1)+U(i,j-1)+U(i+1,j)+U(i-1,j)))+((1-4*r)*U(i,j))

	if (abs(U(i,j)-Up(i,j)).lt.eps)  then 
	goto  5
	else 
	U(i,j)= Up(i,j)
	goto 3
	endif
	
	enddo
	enddo
	
	open(1, file=' values.dat')
 	write(1,*) 'variables = x ,y, Up'
	write(1,*) 'zone i=',n,'Jj= ',m, 'Up=', Up


	do j=1,m
 	do i = 1,n
	write(1,*) X(i,j),Y(i,j), Up(i,j)
	enddo
	enddo 


5	stop
	end




