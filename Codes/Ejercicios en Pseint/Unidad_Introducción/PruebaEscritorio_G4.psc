Algoritmo numenteros
	Definir num, num_decimal Como Real
	Definir num_entero Como Entero
	Leer num
	
	//num = num_entera + num_decimal
	num_entero  = trunc(num)
	num_decimal = num - num_entero
	
	Definir resultado Como Caracter
	Si num_decimal==0
		resultado = "Entero"
		Escribir "El número ingresado es entero"
	SiNo
		resultado = "No entero"
		Escribir "El número ingresado no es entero"
	FinSi
	
FinAlgoritmo
