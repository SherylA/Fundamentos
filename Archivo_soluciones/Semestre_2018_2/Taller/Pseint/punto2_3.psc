Algoritmo punto2_3
	
	Definir lado1, lado2 Como Real
	Definir op Como Entero
	
	Escribir "Los lados son 1. dos catetos o 2. un cateto y una hipotenusa"
	Leer op
	Escribir "Ingresar los lados en [ul]"
	Leer lado1, lado2
	
	Segun op Hacer
		1: Escribir "La hipotenusa es: ",raiz(lado1^2+lado2^2), " [ul]"
		2: 
			Si lado2 > lado1 Entonces
				Escribir "El otro cateto es es: ",raiz(lado2^2-lado1^2), " [ul]"
			Sino 
				Escribir "La hipotenusa debe ser mayor al catateto"
			FinSi
		De Otro Modo:
			Escribir "Error"
	FinSegun
	
	
	
FinAlgoritmo
