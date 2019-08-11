Algoritmo p2_3
	//Un año es bisiesto si es múltiplo de 4, exceptuando los múltiplos de 100, que sólo son bisiestos
	//cuando son múltiplos además de 400, por ejemplo el año 1900 no fue bisiesto, pero el año 2000 si lo
	//fue. Hacer un algoritmo que dado un año A nos diga si es o no bisiesto.
	Imprimir "Este programa me indica si un año fue bisiesto o no" 
	Imprimir "Por favor introduzca el año"
	Leer N
	//Debemos asegurarnos de tomar los datos sean correctos, en este punto se puede asumir
	//que el año 1987.5 se refiere a una fecha, año 1987 mes abril, por lo tanto tomaremos su parte entera
	//Recordemos avisar al usuario cual año ingresó en la impresión de todas formas!!
	Si N<0 
		Imprimir "¡Tiempo negativo! Volver a ejecutar el programa"
	Sino
		N=trunc(N)
		//Ahora el año debe ser múltiplo de 4
		Si N MOD 4==0
			//Si el multiplo de 100 pero no de 400 no es bisiesto
			Si N MOD 100==0 y N MOD 400!=0
				Imprimir "El año ",N," no fue(será) bisiesto"
			Sino
				//Sino es multiplo de 100 no hay problema
				Imprimir "El año ",N," fue(será) bisiesto"
			FinSi
		sino 
			Imprimir "El año ",N," no fue(será) bisiesto"
		FinSi
	FinSi
FinAlgoritmo