Algoritmo vectores2d_2
	//Vector 2d 
	//Tiene componente x que es real
	//Tiene componente y que es real
	Definir magnitud, ang Como Real
	Definir componente_x,componente_y Como Real
	Leer componente_x
	Leer componente_y
	magnitud = rc(componente_x^2 + componente_y^2)
	
	//Limites de cuadrantes
	
	Si componente_x>=0 y componente_y==0
		ang = 0
	FinSi
	
	Si componente_x==0 y componente_y>0
		ang = pi*0.5
	FinSi
	
	Si componente_x==0 y componente_y<0
		ang = 3*pi*0.5
	FinSi
	
	Si componente_x<0 y componente_y==0
		ang = pi
	FinSi
		
	//Entre cuadrantes
	
	Si componente_x>0 y componente_y>0
		ang = atan(componente_y/componente_x)
	FinSi
	
	Si componente_x<0 y componente_y>0
		ang = atan(componente_y/componente_x) + pi
	FinSi
	
	Si componente_x<0 y componente_y<0
		ang = atan(componente_y/componente_x) + pi
	FinSi
	
	Si componente_x>0 y componente_y<0
		ang = atan(componente_y/componente_x) + 2*pi
	FinSi
	
	Escribir "El vector es m=",magnitud," y dir=",ang*180/pi
	
	
FinAlgoritmo
