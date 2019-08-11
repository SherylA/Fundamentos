Algoritmo p1_6
	//Una agencia de venta de autos paga a su personal de ventas un salario de $800,000 mas una
	//comisión de $170,000 por auto vendido más un 5% del valor de venta. Diseñar un algoritmo para
	//calcular el salario de un vendedor en un determinado mes, conociendo el no de automóviles vendidos
	//y el total del monto de ventas.
	Imprimir "Este programa realiza el cálculo del salario de un vendedor de autos"
	Imprimir "Por favor introduzca el valor monto de autos vendidos y el monto total de ventas en pesos:"
	Leer Nvendidos, Ventas
	//Primero debemos asegurarnos que el valor de ventas sea positivo, no tiene sentido un valor negativo
	//Además el número de autos debe ser entero
	Si Ventas<0 y Nvendidos-trunc(Nvendidos)!=0
		Imprimir "El valor de las ventas debe ser positvo y/0 el número de autos vendidos un entero"
	Sino
		SalarioT=800000+170000*Nvendidos+Ventas*0.05
		Imprimir "El salario base es de 800.000 pesos más ",170000*Nvendidos," pesos por autos vendidos"
		Imprimir "Más un %5 sobre el valor de la venta ",Ventas*0.05," pesos, para un total de: ",SalarioT," pesos"
	FinSi
	
	
FinAlgoritmo
