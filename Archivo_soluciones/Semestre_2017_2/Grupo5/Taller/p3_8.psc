Funcion prod=factorial(n)
	Si n-trunc(n)!=0
		Imprimir "Error. El argumento debe ser entero"
	Sino
		prod=1
		Si n>0
			prod=1
			Para i desde 1 Hasta n Hacer
				prod=prod*i
			FinPara
		FinSi
	FinSi
FinFuncion

Algoritmo  p3_8
	//Elaborar un algoritmo que nos arroje el número de todas las posibles combinaciones y
	//permutaciones que puede tener un número N de dados.
	Imprimir "Este programa calcula la permutaciones (importando orden) y combinaciones (sin importar el orden) que puede tener N dados" 
	Imprimir "Introduzca el número de dados"
	Leer N
	Imprimir "Introduzca el número de lados de los dados"
	Leer d
	//Debemos asegurarnos que se los datos sean correctos
	Si N<0 o N -trunc(N)!=0 o d<0 o d-trunc(d)!=0
		Imprimir "Error en número de dados o lados de los dados. Volver a ejecutar el programa"
	Sino
		perm1=d^N
		comb1=factorial(d+N-1)/(factorial(N)*factorial(d-1))
		Escribir "Las permutaciones que se pueden repetir para ",N," dados de ",d,", lados son ",perm1
		Escribir "Las combinaciones que se pueden repetir para ",N," dados de ",d,", lados son ",comb1
		Si N<=d
			perm2=factorial(d)/factorial(d-N)
			comb2=perm2/factorial(N)
			Escribir "Las permutaciones que NO se pueden repetir para ",N," dados de ",d,", lados son ",perm2
			Escribir "Las combinaciones que NO se pueden repetir para ",N," dados de ",d,", lados son ",comb2
		Sino
			Escribir "No hay permutaciones que NO se pueden repetir para ",N," dados de ",d,", lados"
			Escribir "No hay combinaciones que NO se pueden repetir para ",N," dados de ",d,", lados"
		FinSi
	
		
	FinSi
	
FinAlgoritmo

