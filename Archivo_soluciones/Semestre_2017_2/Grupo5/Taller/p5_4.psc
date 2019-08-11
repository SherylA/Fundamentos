Algoritmo p5_4
	//Realice un algoritmo que encuentre la interjección entre dos rectas ingresando los valores de dos
	//puntos si se da el caso.
	
	Imprimir "Este programa calcula la intercepción entre dos rectas recibiendo dos puntos por cada una"
	Imprimir "Ingrese el punto 1 de la recta A de la forma (x,y): "
	Leer x1A,y1A
	Imprimir "Ingrese el punto 2 de la recta A de la forma (x,y): "
	Leer x2A,y2A
	Imprimir "Ingrese el punto 1 de la recta B de la forma (x,y): "
	Leer x1B,y1B
	Imprimir "Ingrese el punto 2 de la recta B de la forma (x,y): "
	Leer x2B,y2B
	
	//Primero debemos hallar las pendientes de cada recta
	dxA=x2A-x1A
	dxB=x2B-x1B
	dyA=y2A-y1A
	dyB=y2B-y1B
	Si dxA!=0 y dxB!=0
		
		//Calculamos las pendientes
		mA=dyA/dxA
		mB=dyB/dxB
		//Y los puntos de corte
		bA=mA*x1A-y1A
		bB=mb*x1B-y1B
		
		Si mA==mB
			Imprimir "Las rectas son paralelas, no se interceptan"
		SiNo
			xp=(bB-bA)/(mA-mB)
			yp=mA*xp+bA
			Imprimir "El punto de intercepción es x=",xp," y=",yp
		FinSi
	SiNo
		Si dxA==0.0
			//Si la pendiente de la recta A es indeterminada pertenece a la familia de rectas x=cte
			mB=dyB/dxB
			bB=mb*x1B-y1B
			//Hallamos la recta de B y las dos rectas se cruzan en x=cte
			xp=x1A
			yp=mB*xp+bB
			Imprimir "El punto de intercepción es x=",xp," y=",yp
		SiNo
			Si dxB==0.0
				//El mismo caso anterior pero con la recta B
				mA=dyA/dxA
				bA=mA*x1A-y1A
				xp=x1B
				yp=mA*xp+bA
				Imprimir "El punto de intercepción es x=",xp," y=",yp
			FinSi
		FinSi
		
		
	FinSi
	
	
	
FinAlgoritmo