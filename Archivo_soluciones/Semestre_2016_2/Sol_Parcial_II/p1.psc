Algoritmo PII_p1
	Escribir 'Ingrese un número entero de 3 cifras'
	Leer N
	Si (N>99) && (N<1000)
		centena=trunc(N/100)
		temp= N - centena*100
		decena= trunc(temp/10)
		unidad= temp-decena*10
		Escribir 'El numero es ' N ' Y su inverso es ' unidad, decena, centena
	Sino 
		Escribir 'El número no es de tre cifras'
	FinSi
FinAlgoritmo
