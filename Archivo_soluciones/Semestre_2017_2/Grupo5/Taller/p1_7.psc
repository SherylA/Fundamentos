Algoritmo p1_8
	//La secretaria de salud requiere un algoritmo que permita determinar qu� tipo de vacuna (A, B o C)
	//debe aplicar a una persona, considerando que si es mayor de 70 a�os, sin importar el sexo, se le
	//aplica la tipo C; si tiene entre 16 y 69 a�os, y es mujer, se le aplica la B, y si es hombre, la A; si es
	//menor de 16 a�os, se le aplica la tipo A, sin importar el sexo.
	Imprimir "Este programa determina qu� tipo de vacuna se debe aplicar a una persona seg�n cierto datos"
	Imprimir "Por favor introduzca el sexo de la persona, Femenino (F) o Masculino (M):"
	Leer sexo
	Imprimir "Por favor introduzca la edad de la persona:"
	Leer edad
	//Debemos asegurarnos que se los datos sean correctos
	Si (sexo!="F" y sexo!="M") o edad<0
		Imprimir "Datos no validos. Volver a ejecutar el programa"
	Sino
		Si edad>=70 
			Imprimir "Aplicar vacuna tipo C"
		Sino
			Si edad>=16 y edad<=69
				Si sexo="F"
					Imprimir "Aplicar vacuna tipo B"
				Sino
					Imprimir "Aplicar vacuna tipo A"
				FinSi
			Sino
				Imprimir "Aplicar vacina tipo A"
			FinSi
		FinSi
		
	FinSi
	
FinAlgoritmo
