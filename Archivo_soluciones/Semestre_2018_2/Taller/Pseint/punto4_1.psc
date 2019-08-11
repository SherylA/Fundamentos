Algoritmo punto4_1
	
	Definir esPrimo Como Logico
	esPrimo = Verdadero
	
	Definir N,div Como Real
	Definir i Como Entero
	
	Escribir  "Ingrese un número"
	Leer N
	i=2
	
	Si N==trunc(N) Entonces
		
		Si N==0
			esPrimo=Falso
		Sino
			Mientras esPrimo y i<N
				div = N/i
				Si div==trunc(div)
					esPrimo=Falso
				FinSi
				i = i+1
			FinMientras
		FinSi
			
		Escribir "El número primo? ",esPrimo
		
	SiNo
		Escribir "No es primo pues no es entero"
	FinSi
	
FinAlgoritmo
