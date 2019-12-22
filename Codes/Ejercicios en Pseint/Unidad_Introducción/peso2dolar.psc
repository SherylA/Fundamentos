Algoritmo peso2dolar
	// Hacer el diagrama de flujo para determinar el valor en dólares 
	// de X cantidad en pesos colombianos .
	// Entrada: X cantidad de pesos colombianos, real positiva, leída
	// factor(tasa cambios) 1 dólar --> xxxx pesos C=1/xxxx
	// Salida: X --> dólares 
	// Procedimiento --> X*C=D
	Definir pesos,dolares,cambio como reales
	Escribir "Ingrese el valor del dolar al día: "
	Leer cambio
	Escribir "Ingrese el valor en pesos colombianos"
	Leer pesos
	Si pesos>0 y cambio>0 Entonces
		dolares = pesos*(1.0/cambio)
		Escribir "El valor en dólares, al día, es de ",dolares
	SiNo
		Escribir "Hay un error en las entradas"
	FinSi
FinAlgoritmo

