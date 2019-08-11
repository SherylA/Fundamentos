Algoritmo p4_3
	//Elaborar un algoritmo el cual reciba un número de tres cifras y lo invierta.
	Imprimir "Este programa invierte un número de 3 cifras" 
	Imprimir "Por favor introduzca el número natural de 3 cifras"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<0 o N-trunc(N)!=0 o N<99 o N>1000
		Imprimir "El número debe ser natural y de tres cifras. Volver a ejecutar el programa"
	Sino
		//Ahora debemos identificar la centesimas, decimas y unidades
		c=trunc(N/100)
		d=trunc((N-c*100)/10)
		u=N-c*100-d*10
		Imprimir u,d,c
	FinSi
FinAlgoritmo
