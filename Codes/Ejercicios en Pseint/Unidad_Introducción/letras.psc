Algoritmo letras
	Definir entrada Como Caracter
	Definir i,contador Como Entero
	Escribir "Ingrese un valor"
	Leer entrada
	
	contador = 0
	Para i=0 hasta Longitud(entrada)-1
		Si SubCadena(entrada,i,i)>="0" y SubCadena(entrada,i,i)<="9"
			contador = contador +1
		FinSi
	FinPara
	
	Si contador!=Longitud(entrada)
		Escribir "La entrada: ",entrada," no es un número"
	FinSi
	
FinAlgoritmo

