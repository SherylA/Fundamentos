Algoritmo edades
	// Escribir el  pseudo-código para obtener la edad 
	// de una persona desde el año en que nacieron.
	// Entradas: Año de nacimiento, entero positivo, leído
	// Año actual, entero positivo, leído
	// Salidas: Edad de la persona al finalizar el año
	// Procedimiento: edad_actual = anio_actual - anio_nacimiento 
	
	//**Definiciones**/
	Definir anio_nacimiento, anio_actual, edad_actual Como Entero
	
	//**Entradas (lectura)**//
	Escribir "Ingrese el año de nacimiento"
	Leer anio_nacimiento
	Escribir "Ingrese el año actual"
	Leer anio_actual
	
	//**Verificación**//
	Si anio_actual>=0 y anio_nacimiento>=0 y anio_actual>=anio_nacimiento
		//**Procedimiento**/
		edad_actual = anio_actual - anio_nacimiento
		Escribir "La edad al finalizar el año es de ",edad_actual," años"
	SiNo
		//**Procedimiento por errores**//
		Escribir "Error!"
	FinSi
	
	
FinAlgoritmo
