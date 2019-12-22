Algoritmo DiagramaF
	Definir cantidad,i como Entero
	Definir var, acumulador como Real
	Leer cantidad
	Si cantidad>1 Entonces
		acumulador = 0
		Para i<-1 Hasta cantidad Hacer
			Leer var
			acumulador = acumulador + var
		FinPara
		Escribir acumulador
	SiNo
		Escribir "El valor debe ser mayor que 1"
	FinSi
FinAlgoritmo

