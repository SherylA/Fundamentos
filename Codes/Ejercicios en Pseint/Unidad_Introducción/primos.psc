Algoritmo primos
	//Escribir el pseudo-c�digo para determinar si un n�mero natural es primo o no
	//Entradas: un numero natural, num, le�do
	//Salida: Booleana falso,verdadero
	//Procedimiento �num mod i? [2,num-1] --> 0 no es primo
	
	Definir num,i Como Entero
	Definir esprimo Como Logico
	
	Leer num
	
	Si num<2
		esprimo=Falso
	Sino
		Si num==2
			esprimo=Verdadero
		Sino 
			i=2
			esprimo = Verdadero
			Mientras num mod i!=0 y i < num
				i = i+1
			FinMientras
			
			Si i!=num
				esprimo = Falso
			FinSi
		FinSi
		
	FinSi

	Escribir "El n�mero ",num," es primo: ",esprimo
	
	
	
FinAlgoritmo
