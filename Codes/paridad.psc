Algoritmo paridad
	Definir N Como Real
	Escribir "Ingrese un n�mero para saber si es par o impar"
	Leer N
	Si N==trunc(N) Entonces
		Si N/2==trunc(N/2) Entonces
			Escribir "El n�mero ", N," es un entenro par"
		SiNo
			Escribir  "El n�mero ", N," es un entero impar"
		FinSi
	SiNo
		Escribir "El n�mero ", N," no es entero por lo tanto no es par o impar"
	FinSi
FinAlgoritmo
