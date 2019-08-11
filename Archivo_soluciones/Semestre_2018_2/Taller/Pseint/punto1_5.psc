Algoritmo punto1_5
	
	Definir year Como Real
	Escribir "Escribir el año"
	Leer year
	
	Si year>0 Entonces
		year = trunc(year)
		Si year/4==trunc(year/4) Entonces
			Si year/100==trunc(year/100) Entonces
				Si  year/400==trunc(year/400) Entonces
					Escribir "Es bisiesto"
				SiNo
					Escribir "No es bisiesto"
				FinSi
			Sino
				Escribir "No es bisiesto"
			FinSi
		SiNo
			Escribir "No es bisiesto"
		FinSi
	SiNo
		Escribir "Error"
	FinSi
	
FinAlgoritmo
