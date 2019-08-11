Algoritmo p3_3
	//Hacer un algoritmo que permita hallar el lado de un triangulo conociendo los otros 2 lados y el
	//angulo que forman entre ellos.
	Imprimir "Este programa determina el lado de un tríangulo rectángulo dado dos lados y el ángulo entre ellos"
	Imprimir "Por favor introducir los lados en metros y el ángulo entre ellos en grados"
	Leer L1,L2,ang
	//Debemos asegurarnos que los datos sean correctos
	Si L1<=0 o L2<=0 o ang>180 o ang<=0
		Imprimir "Valores incorrectos. Volver a ejecutar el programa"
	Sino
		H=L1^2+L2^2
		C=2*L1*L2*cos(ang*pi/180)
		//Debemos asegurarnos que los datos sean correctos
		Si H<C
			Imprimir "Error en lo datos. Volver a ejecutar el programa"
		Sino
			L3=rc(H-C)
			Imprimir "El tercer lado es igual a ",L3," metros"
		FinSi
	FinSi
FinAlgoritmo
