Algoritmo peso2dolar
	// Hacer el diagrama de flujo para determinar el valor en d�lares 
	// de X cantidad en pesos colombianos .
	// Entrada: X cantidad de pesos colombianos, real positiva, le�da
	// factor(tasa cambios) 1 d�lar --> xxxx pesos C=1/xxxx
	// Salida: X --> d�lares 
	// Procedimiento --> X*C=D
	Definir pesos,dolares,cambio como reales
	Escribir "Ingrese el valor del dolar al d�a: "
	Leer cambio
	Escribir "Ingrese el valor en pesos colombianos"
	Leer pesos
	Si pesos>0 y cambio>0 Entonces
		dolares = pesos*(1.0/cambio)
		Escribir "El valor en d�lares, al d�a, es de ",dolares
	SiNo
		Escribir "Hay un error en las entradas"
	FinSi
FinAlgoritmo

