Algoritmo p1_7
	//Suponiendo que una paella se puede cocinar exclusivamente con arroz y gambas, y que para cada
	//cuatro personas se utiliza medio kilo de arroz y un cuarto de kilo de gambas, escribir un algoritmo que
	//pida por pantalla el número de comensales para la paella, el precio por kilo de los ingredientes y
	//muestre las cantidades de los ingredientes necesarios y el coste de la misma.
	Imprimir "Este programa realiza el cálculo de las cantidades de arroz y gambas y el coste de una paella para un número de comensales"
	Imprimir "Por favor introduzca el número de comensales"
	Leer N
	Imprimir "Por favor introduzca el precio del kilo de arroz y de gambas en pesos"
	Leer Kiloarroz, Kilogambas
	//Debemos asegurarnos que el número de comensales sea entero y mayor que 0, además que los precios sean positivos
	Si N - trunc(N)!=0 o N<0 o Kiloarroz<0 o Kilogambas<0
		Imprimir "Datos no validos. Volver a ejecutar el programa"
	Sino
		Cantarroz =(N*0.5)/4.0
		Cantgambas=(N*0.25)/4.0
		Imprimir "Para una paella para ",N," personas se necesitan ",Cantarroz," kilos de arroz por un valor de ",Cantarroz*Kiloarroz," pesos"
		Imprimir "Además de ",Cantgambas," kilos de gambas por un valor de ",Cantgambas*Kilogambas," pesos"
		Imprimir "La paella costará un total de: ", Cantgambas*Kilogambas + Cantarroz*Kiloarroz," pesos"
	FinSi
	
FinAlgoritmo
