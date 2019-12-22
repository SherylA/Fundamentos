Algoritmo diassemanas
	// Hacer el diagrama de flujo para obtener el día
	// de la semana cuando se ingresa un número [1-7]
	// Entradas: número de 1 a 7, entero, leída
	// Salida: día de la seman, carácter
	// Procedimiento: relacionar un día con un número
	Definir num_dia Como Entero
	Escribir 'Ingrese un número de 1 a 7'
	Leer num_dia
	Segun num_dia  Hacer
		1:
			Escribir 'Lunes'
		2:
			Escribir 'Martes'
		3:
			Escribir 'Miércoles'
		4:
			Escribir 'Jueves'
		5:
			Escribir 'Viernes'
		6:
			Escribir 'Sábado'
		7:
			Escribir 'Domingo'
		De Otro Modo:
			Escribir 'Error!'
	FinSegun
FinAlgoritmo

