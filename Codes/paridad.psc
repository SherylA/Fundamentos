Algoritmo paridad
	Definir N Como Real
	Escribir "Ingrese un número para saber si es par o impar"
	Leer N
	Si N==trunc(N) Entonces
		Si N/2==trunc(N/2) Entonces
			Escribir "El número ", N," es un entenro par"
		SiNo
			Escribir  "El número ", N," es un entero impar"
		FinSi
	SiNo
		Escribir "El número ", N," no es entero por lo tanto no es par o impar"
	FinSi
FinAlgoritmo
