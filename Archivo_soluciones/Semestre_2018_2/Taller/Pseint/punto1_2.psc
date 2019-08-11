Algoritmo punto1_2
	Definir N, i Como Entero
	Definir num Como Real
	Definir suma, prod Como Entero
	
	suma = 0
	prod = 1
	
	Escribir "Ingrese la cantidad a evaluar"
	Leer N
	
	Si N > 0 Entonces
		Para i=1 hasta N Hacer
			Escribir "Ingrese el número"
			Leer num
			Si num == trunc(num) Entonces
				Si num/2 == trunc(num/2) Entonces
					suma = suma + num
				SiNo
					prod = prod*num
				FinSi
			FinSi
		FinPara
		Escribir "La suma de los pares es: ",suma
		Escribir "La mul de los impares es: ",prod
	SiNo
		Escribir "La cantidad debe se mayor que 0"
	FinSi
FinAlgoritmo
