Algoritmo vectores_2d
	
	//Recibe magnitud (real positivo)
	//Recibe ang --> [0,360] Grados
	//Obtiene x,y y recalcular magnitud,ang
	
	Definir magnitud, ang, ang_rad Como Real
	Definir componente_x, componente_y Como Real
	Definir magnitud_2, ang_2 Como Real
	
	//Escribir "Ingrese la magnitud del vector"
	//Leer magnitud
	
	//Escribir "Ingrese la direccióndel vector"
	//Leer ang
	
	//ang_rad = ang*pi/180
	
	Leer componente_x,componente_y
	
	Si magnitud>=0 y ang_rad>=0 y ang_rad<=2*pi
	
		//componente_x = magnitud*cos(ang_rad)
		//componente_y = magnitud*sen(ang_rad)

		//Escribir "El vector es (A,alpha) = ",magnitud,",",ang
		//Escribir "Sus componentes son (Ax,Ay)=",componente_x,",",componente_y

		//Regresamos
		magnitud_2 = rc(componente_x^2 + componente_y^2)
		Si componente_x==0 y componente_y==0
			ang_2 = 0
		FinSi
		
		Si componente_x==0 y componente_y>0
			ang_2 = pi*0.5
		FinSi
		
		Si componente_x==0 y componente_y<0
			ang_2=3*pi*0.5
		FinSi
		
		Si componente_y==0 y componente_x>0
			ang_2 = 0
		FinSi
		
		Si componente_y==0 y componente_x<0
			ang_2 = pi
		FinSi
		
		Si componente_x>0 y componente_y>0
			ang_2 = atan(componente_y/componente_x)
		FinSi
		
		Si componente_x<0 y componente_y>0
			ang_2 = atan(componente_y/componente_x) + pi
		FinSi
		
		Si componente_x<0 y componente_y<0
			ang_2 = atan(componente_y/componente_x) + pi
		FinSi
		
		Si componente_x>0 y componente_y<0
			ang_2 = atan(componente_y/componente_x) + 2*pi
		FinSi
		
		Escribir "El vector (re) es (A,alpha) = ",magnitud_2,",",ang_2*180/pi
	FinSi	
FinAlgoritmo
