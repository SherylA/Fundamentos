Algoritmo diagramamcd
	Definir num_1,num_2,residuo,temp como enteros
	Definir numerador,denominador como entero
	Leer num_1,num_2
	numerador = num_1
	denominador = num_2
	Si num_1<num_2 Entonces
		// Intercambio de valores
		temp = num_1
		num_1 = num_2
		num_2 = temp
	FinSi
	residuo = num_1 mod num_2
	Mientras residuo!=0 Hacer
		num_1 = num_2
		num_2 = residuo
		residuo = num_1 mod num_2
	FinMientras
	Escribir "El MCD es: ", num_2
	Escribir "La reducción de ",numerador,"/",denominador
	numerador = numerador/num_2
	denominador = denominador/num_2
	Escribir numerador,"/",denominador
FinAlgoritmo

