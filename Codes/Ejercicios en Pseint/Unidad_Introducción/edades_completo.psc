Algoritmo edades
	
	Definir N, i,j,k Como Entero
	Escribir "Ingrese cuantas el #grupo"
	Leer N
	
	Definir nombres Como Caracter
	Definir edadesp,min Como Entero
	DEfinir repetidos Como Logico
	
	Dimension nombres[N]
	Dimension edadesp[N]
	Dimension repetidos[N]
	
	Si N<=5
		min = 2000
		Para i=0 hasta N-1
			Leer nombres[i]
			Leer edadesp[i]
			Si edadesp[i]<min
				min = edadesp[i]
			FinSi
		FinPara
			
		Para i=0 hasta N-1
			Si edadesp[i]==min
				repetidos[i] = Verdadero
			SiNo
				repetidos[i] = Falso
			FinSi
		FinPara
		
		Escribir "La edad mínima es ",min
		Para i=0 hasta N-1
			Si repetidos[i]
				Escribir nombres[i]
			FinSi
			//Escribir p2[i]
		FinPara
	SiNo
		Escribir "Error"
	FinSi
FinAlgoritmo
