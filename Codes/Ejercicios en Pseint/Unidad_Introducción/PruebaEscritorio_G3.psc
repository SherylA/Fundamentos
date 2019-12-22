Algoritmo parimpar
	//Determinar si un número real es par, impar o ninguno de los dos
	//Entrada: Un número realque llamar num
	//Salida: Va ser un mensaje
	// --> (1) "Es par", 
	// --> (2) "Es impar", 
	// --> (3) "No es entero, no es par ni impar"
	//Procedimiento num --> ¿entero o no?
	//Si no es entero msj 3
	//Si es entero, dividimos por 2 num/2 --> N
	// N es entero es par, sino es impar
	// Residuo es 0 es par, sino es impar
	
	Definir num Como Real
	Definir resultado Como Caracter
	Leer num
	
	Si num != trunc(num)
		resultado = "No es entero, no es par ni impar"
	SiNo
		Si num mod 2==0
			resultado = "Es par"
		SiNo
			resultado = "Es impar"
		FinSi
	FinSi
	
	Escribir resultado
	
FinAlgoritmo
