Algoritmo punto3_3
	
	Definir input, output Como Caracter
	Escribir "Ingresar un n�mero"
	Leer input
	output = '' 
	Para i = Longitud(input)-1 Hasta 0 CON paso -1
		output = Concatenar(output,SubCadena(input,i,i))
	FinPara
	
	Escribir output
	
FinAlgoritmo
