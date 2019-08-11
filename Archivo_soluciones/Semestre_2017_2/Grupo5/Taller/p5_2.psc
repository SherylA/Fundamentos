Funcion ang=atan2(x1,y1)
	//Corregimos la tangente por cuadrantes
	Si x1>0.0 y y1>=0.0
		ang=atan(y1/x1)
	Sino
		Si x1==0.0 y y1>0.0
			ang=pi*0.5
		Sino
			Si x<0.0
				ang=atan(y1/x1)+pi
			Sino
				Si x1==0.0 y y1<0.0
					ang=pi*1.5
				Sino
					Si x1>0.0 y y1<0.0
						ang=atan(y1/x1)+2*pi
					Sino
						ang=0.0
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion


Algoritmo p5_2
	//Realice el algoritmo que convierta un vector en coordenadas cartesianas a coordenadas cilíndricas
	//y esféricas.
	
	Imprimir "Este programa pasa un verctor en coordenadas cartesianas a coordenadas cilíndricas y esféricas" 
	Imprimir "El vector en R3 es de la forma (x,y,z) es en cilindricas es (rho,phi,z) y en esfericas (r,phi,theta)"
	Imprimir "Los ángulos serán expresados en grados"
	
	//Primero leemos la coordenadas (x,y,z) del vector
	Imprimir "Ingrese la coordenada x del vector"
	Leer x1
	Imprimir "Ingrese la coordenada y del vector"
	Leer y1
	Imprimir "Ingrese la coordenada z del vector"
	Leer z1
	
	//Las coordenas cilindricas y esfericas son por formulas:
	rho=raiz(x1*x1+y1*y1)
	phi=atan2(x1,y1)*180/pi
	r=raiz(rho^2+z1^2)
	theta=atan2(z1,rho)*180/pi
	
	Imprimir "El vector (",x1,",",y1,",",z1,") en cilindricas es (",rho,",",phi,",",z1,")"
	Imprimir "El vector (",x1,",",y1,",",z1,") en esfericas es (",r,",",phi,",",theta,")"
	
	
FinAlgoritmo
