Algoritmo exponencial
	
	Definir num,mi_resultado,resultado Como Real
	Definir i,j,orden,factorial Como Entero
	Leer num
	orden=10
	mi_resultado=0
	Para i=0 hasta orden
		factorial = 1
		Si i!=0
			Para j=1 hasta i
				factorial = factorial*j
			FinPara
		Fin si
		mi_resultado = mi_resultado + num^i/factorial
	FinPara
	
	resultado = exp(num)
	
	Escribir "Mi resultado: ",mi_resultado
	Escribir "PseInt: ",resultado
	
FinAlgoritmo
