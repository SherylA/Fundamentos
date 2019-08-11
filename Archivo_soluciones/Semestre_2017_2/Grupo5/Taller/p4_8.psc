Funcion med=media(list,N)
	suma=0
	para i desde 1 hasta N
		suma=suma+list[i]
	FinPara
	med=suma/N
FinFuncion

Funcion var=varianza(list,N)
	suma=0
	med=media(list,N)
	para i desde 1 hasta N
		suma=suma+(list[i]-med)^2
	FinPara
	var=suma/N
FinFuncion

Funcion des=desviacion(list,N)
	var=varianza(list,N)
	des=rc(var)
FinFuncion

Algoritmo p4_8
	//Escribe un algoritmo que arroje los valores de la distribución normal de un conjunto de N
	//números
	Imprimir "Este programa calcula la distribución normal de un conjunto de datos N" 
	Imprimir "Por favor introduzca el valor del conjunto de datos"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=1 o N -trunc(N)!=0
		Imprimir "Error en número de dados. Volver a ejecutar el programa"
	Sino
		Dimension list[N]
		Imprimir "Introduzca los valores: "
		Para i desde 1 hasta N
			Leer list[i]
		FinPara
		med=media(list,N)
		des=desviacion(list,N)
		Imprimir "Los datos obedecen a una distribución normal de la forma: "
		Imprimir (1.0/(des*2.0*pi)),"exp(",(-0.5/(des*des)),"(x-",med,")^2)"
	FinSi
	
FinAlgoritmo