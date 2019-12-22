Algoritmo hipotenusa
	// Hacer el diagrama de flujo para determinar la hipotenusa de un triángulo 
	// Entradas: cateto1, cateto2. Catetos son reales positivos [um], leídos
	// Salidas: hipotenusa [um] real positivo
	// Procedimiento: h = raiz(c1^2+c2^2)	
	Definir cateto1,cateto2, hipot como real
	Escribir "Ingrese el cateto 1 [um]"
	Leer cateto1
	Escribir "Ingrese el cateto 2 [um]"
	Leer cateto2
	Si cateto1>0 y cateto2>0 Entonces
		hipot = rc(cateto1^2+cateto2^2)
		Escribir "La hipotenusa es ",hipot
	SiNo
		Escribir "Error!"
	FinSi
FinAlgoritmo

