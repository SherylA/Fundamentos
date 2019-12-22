Algoritmo ciclos
	
	Definir i,final como enteros
	Definir suma,a Como Real
	final = 5
	suma = 0
	
	//Pseint para es cerrador [0,5] pero lo normal [0,5)
	//El i puede comenzar desde otro punto siempre que sea menor que final
	//Se puede cambiar el paso 
	// inicio, final, paso  --> inicio --> final, i = inicio, inicio + paso,inicio+2*paso...,final
	Para i=0 hasta final Con Paso 2
		suma = suma + 0.1
		Escribir "Contador",i 
	FinPara
	
	Escribir suma
	
	//Mientras se usa N=?
	//Es importante asegurarse que en algún momento va a salir
	//¿cuantos pasos necesita? --> contador
	//Si hay una lista --> contador
	i = 0 // inicio
	a = 0
	Mientras a<5
		a = a + 0.1
		i = i + 1 //i + paso
	FinMientras
	
	//Función de pseint
	Definir cadena_grande,cadena_peq,una_sola_letra Como Caracter
	cadena_grande = "Una frase larga"
	// cadena_grande , inicio , final
	cadena_peq = Subcadena(cadena_grande,0,4) //De la letra 0 a la 4 cadena_grande[0:4] hasta 3
	una_sola_letra = Subcadena(cadena_peq,0,0) //La letra 0
	
	Escribir cadena_grande
	Escribir cadena_peq
	Escribir una_sola_letra
	
	//Función módulo 
	// N/M (N,M --> enteros) N / M = C + R/N --->  3 / 2 = 1 + 1/2 
	// R != 0 N y M no son divisibles  N MOD M = R
	
	

	
FinAlgoritmo
