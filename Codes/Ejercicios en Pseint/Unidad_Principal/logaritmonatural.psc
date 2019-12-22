Algoritmo logaritmonatural
	Definir num,mi_resultado, resultado Como Real
	Leer num
	Definir orden, i Como Entero
	
	orden = 5
	mi_resultado = 0
	Para i=0 hasta orden
		mi_resultado = mi_resultado + (2/(2*i+1))*(num-1)^(2*i+1)/(num+1)^(2*i+1)
	FinPara
	resultado = ln(num)
	
	Escribir "La aproximación es: ",mi_resultado
	Escribir "El resultado (pseint): ",resultado
	
FinAlgoritmo
