Algoritmo estacionamiento
	// Hacer el diagrama de flujo para determinar el cobro de un estacionamiento que 
	// cobra las primeras 2 horas a 10000 c/u, las siguientes 3 a 8000 c/u, 
	// las siguientes 5 a 6000 c/u y después de 10 horas el costo es de 4000 c/u. 
	// Entradas: Tiempo de cobro en horas, entero mayor que 0 leído
	// Salidas: Cobro total, real positivo
	// Procedimiento: identificar el valor del cobro según los intervarlos de horas
	Definir tiempo como entero
	Definir cobro_hora,cobro_total como real
	Escribir "Ingrese el tiempo total para el cobro"
	Leer tiempo
	Si tiempo>0 Entonces
		Si tiempo>2 Entonces
			Si tiempo>5 Entonces
				Si tiempo>10 Entonces
					cobro_hora = 4000
				SiNo
					cobro_hora = 6000
				FinSi
			SiNo
				cobro_hora = 8000
			FinSi
		SiNo
			cobro_hora = 10000
		FinSi
		cobro_total = cobro_hora*tiempo
		Escribir "El total a pagar es ",cobro_total
	SiNo
		Escribir "El tiempo debe ser mayor a 0"
	FinSi
FinAlgoritmo

