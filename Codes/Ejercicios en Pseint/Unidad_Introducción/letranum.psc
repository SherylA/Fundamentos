Algoritmo alfabeto
	
	//Escribir el pseudo-c�digo para asignar un n�mero (desde 1) 
	//al ingresar una letra del alfabeto (en min�scula) y 0 si es otro car�cter. 
	//Entradas: letra(min�scula),caracter, le�da
	//Salidas: n�mero de letra, num_letra, entero
	//Procedimiento: crear listas relacionadas
	
	Definir letra,abecedario Como Caracter
	Definir num_letra,i Como Entero
	
	abecedario='abcdegfhijklmn�opqrstuvwxyz'
	
	Escribir "Ingresar una letra del abecedario en min�scula (sin acentos): "
	Leer letra
	
	Si Longitud(letra)==1
		Si letra>="a" y letra<="z"
			Para i=1 hasta Longitud(abecedario)
				Si subcadena(abecedario,i-1,i-1)==letra
					Escribir "El n�mero al que corresponde la letra es ",i
				FinSi
			FinPara
		SiNo
			Escribir "El n�mero al que corresponde la letra es 0"
		FinSi
	SiNo
		Escribir "Debe ser un s�lo car�cter"
	FinSi
	
	
	
FinAlgoritmo
