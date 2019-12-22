Algoritmo edades
	// Escribir el  pseudo-c�digo para obtener la edad 
	// de una persona desde el a�o en que nacieron.
	// Entradas: A�o de nacimiento, entero positivo, le�do
	// A�o actual, entero positivo, le�do
	// Salidas: Edad de la persona al finalizar el a�o
	// Procedimiento: edad_actual = anio_actual - anio_nacimiento 
	
	//**Definiciones**/
	Definir anio_nacimiento, anio_actual, edad_actual Como Entero
	
	//**Entradas (lectura)**//
	Escribir "Ingrese el a�o de nacimiento"
	Leer anio_nacimiento
	Escribir "Ingrese el a�o actual"
	Leer anio_actual
	
	//**Verificaci�n**//
	Si anio_actual>=0 y anio_nacimiento>=0 y anio_actual>=anio_nacimiento
		//**Procedimiento**/
		edad_actual = anio_actual - anio_nacimiento
		Escribir "La edad al finalizar el a�o es de ",edad_actual," a�os"
	SiNo
		//**Procedimiento por errores**//
		Escribir "Error!"
	FinSi
	
	
FinAlgoritmo
