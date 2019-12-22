Algoritmo mcd
	Definir num_1, num_2, residuo, temp Como Entero
	
	Escribir "Ingrese dos números"
	Leer num_1, num_2
	
	//Intercambio de valores 
	Si num_1 < num_2
		
		temp = num_1
		num_1 = num_2
		num_2 = temp
		
	FinSi
	
	//num_1 es el mayor y num_2 es el menor
	residuo = num_1 mod num_2
	
	Mientras residuo!=0
		num_1 = num_2
		num_2 = residuo 
		residuo = num_1 mod num_2
	FinMientras
	Escribir "El MCD es igual a", num_2
FinAlgoritmo
