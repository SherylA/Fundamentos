Algoritmo alfabeto
	
	//Escribir el pseudo-código para asignar un número (desde 1) 
	//al ingresar una letra del alfabeto (en minúscula) y 0 si es otro carácter. 
	//Entradas: letra(minúscula),caracter, leída
	//Salidas: número de letra, num_letra, entero
	//Procedimiento: crear listas relacionadas
	
	Definir letra,abecedario Como Caracter
	Definir num_letra,i Como Entero
	
	abecedario='abcdegfhijklmnñopqrstuvwxyz'
	
	Escribir "Ingresar una letra del abecedario en minúscula (sin acentos): "
	Leer letra
	
	Si Longitud(letra)==1
		Si letra>="a" y letra<="z"
			Para i=1 hasta Longitud(abecedario)
				Si subcadena(abecedario,i-1,i-1)==letra
					Escribir "El número al que corresponde la letra es ",i
				FinSi
			FinPara
		SiNo
			Escribir "El número al que corresponde la letra es 0"
		FinSi
	SiNo
		Escribir "Debe ser un sólo carácter"
	FinSi
	
	
	
FinAlgoritmo
