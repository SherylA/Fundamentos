Algoritmo punto2_5
	
	Definir input Como Caracter
	Escribir "Ingrese un caracter"
	Leer input
	
	Si Longitud(input)!=1
		Escribir "Error"
	SiNo
		Si input>='a' y input<='z' Entonces
			Escribir "Es una minúscula"
		SiNo
			Si input>='A' y input<='Z' Entonces
				Escribir "Es una mayúscula"
			SiNo
				Si input>='0' y input<='9' Entonces
					Escribir "Es un digito"
				SiNo
					Escribir "Es un simbolo"
				FinSi
			FinSi
			
		FinSi
		
	FinSi
	
FinAlgoritmo
