Algoritmo p3_2
	//Diseñar un algoritmo que calcule uno de los lados de un triángulo rectángulo dado los otros dos
	//lados, teniendo en cuenta que pueden ser dos catetos o un cateto y una hipotenusa.
	Imprimir "Este programa determina el lado de un tríangulo rectángulo dado dos catetos o un cateto y la hipotenusa"
	Imprimir "Por favor introducir según la opción"
	Imprimir "1. Introducir dos catetos"
	Imprimir "2. Introducir un cateto y la hipotenusa"
	Leer op
	//Debemos asegurarnos que los datos sean correctos
	Si op==1
		Imprimir "Introduza los catetos en metros"
		Leer L1,L2
		//Debemos asegurarnos que los datos sean correctos
		Si L1<=0 o L2<=0
			Imprimir "Valores incorrectos. Volver a ejecutar el programa"
		Sino
			L3=(L1^2+L2^2)^(1.0/2.0)
			Imprimir "El tecer lado es de ",L3," metros"
		FinSi
	Sino
		Si op==2
			Imprimir "Introduza la hipotenusa y el cateto en metros"
			Leer L1,L2
			//Debemos asegurarnos que los datos sean correctos
			Si L1<=L2
				Imprimir "La hipotenusa debe ser mayor que el cateto"
			Sino
				L3=(L1^2-L2^2)^(1.0/2.0)
				Imprimir "El tercer lado es de ",L3," metros"
			FinSi
		SiNo
			Imprimir "Opción incorrecta. Volver a ejecutar el programa"
		FinSi
	FinSi
FinAlgoritmo
