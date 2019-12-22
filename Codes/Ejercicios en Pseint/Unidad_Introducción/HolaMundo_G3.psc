Algoritmo HolaMundo
	Escribir "¡Hola Mundo!"
	Imprimir "¡Hola de nuevo!"
	//Es posible hacer operaciones del tipo:
	Escribir "9/6 = ",9/6,"  5^2 =",5^2
	Escribir "No p(Verdadero) --> ", NO Verdadero
	Escribir "¿9 = 15? ", 9==15
	Escribir "sqrt(4) = ",rc(4)
	Escribir "truncar(4.6) = ",trunc(4.6)," redondear(4.5) = ",redon(4.5)
	Escribir "Subcadena(¡Hola Mundo!) --> ",Subcadena('¡Hola Mundo!',0,3) 
	Escribir "Pi = ", PI
	Escribir "euler = ", exp(1)
	
	//Definir
	Definir var_entera Como Entero
	//Inicialización
	var_entera = 5
	
	Definir var_real Como Real
	var_real = 3.554
	
	//Esta línea me va a dar un error por que MOD solo opera entre enteros
	//Escribir "La función modulo -->", var_entera MOD var_real
	
	Definir var_caracter1, var_caracter2 Como Caracter
	var_caracter1 = "Hola"
	var_caracter2 = "Mundo"
	
	Escribir var_caracter1 + var_caracter2
	
	//Esta línea me va a dar un error porque no sabe si + representa sumar o concatenar
	//Escribir var_caracter1 + var_entera
	
	Definir var_booleana Como Logico
	var_booleana = Falso
FinAlgoritmo


