Algoritmo punto_lista
	
	//Definir edad1,edad2,edad3 Como Entero
	//Leer edad1,edad2,edad3
	
	Definir edades,N,i Como Entero
	//Edades sólo tiene un valor
	Leer N
	
	Si N>0
		Dimension edades[N]
	FinSi
	
	Para i=0 hasta N-1
		Leer edades[i]
	FinPara
	
	Para i=0 hasta N-1
		Escribir edades[i]*2
	FinPara
	
	
	
FinAlgoritmo
