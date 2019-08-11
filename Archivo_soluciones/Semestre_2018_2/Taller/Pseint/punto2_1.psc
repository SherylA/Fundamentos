Algoritmo punto2_1
	Definir opAng, opSI Como Entero
	Definir medidaSI, medidaAng Como Real
	Definir unidad Como Caracter
	
	Escribir "Ang--> 1. Pies, 2.Pulgadas, 3.Yardas, 4. Millas"
	Leer opAng
	
	Escribir "SI--> 1. Milímetros, 2. Metros, Kilómetros"
	Leer opSI
	
	Escribir "Ingresar el valor"
	Leer medidaAng
	
	Segun opAng Hacer
		1:
			medidaSI = 0.3048*medidaAng //metros
		2:	
			medidaSI = 0.0254*medidaAng //metros
		3:
			medidaSI = 0.9144*medidaAng //metros
		4:
			medidaSI = 1609.347*medidaAng //metros
		De Otro Modo:
			medidaSI = 0
			Escribir "Error"
	FinSegun
	
	Segun opSI Hacer
		1: 
			medidaSI = medidaSI*1000
			unidad = "Milímetros"
		2:
			medidaSI = medidaSI
			unidad = "Metros"
		3:
			medidaSI = medidaSI*0.001
			unidad = "Kilómetros"
		De Otro Modo:
			Escribir "Error"
	FinSegun
	
	Escribir "El valor tranformado es: ", medidaSI," ",unidad
	
FinAlgoritmo

