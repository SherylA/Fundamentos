funcion fact_num = factorial(num)
	Definir fact_num,i Como Entero
	Si num>0
		fact_num = 1
		Para i=1 hasta num 
			fact_num = fact_num*i
		FinPara
	SiNo
		Si num==0
			fact_num = 1
		Sino
			fact_num=-1
		FinSi
	FinSi
FinFuncion

Algoritmo funcionexp
	
	Definir num,mi_resultado, resultado Como Real
	Leer num
	
	Definir orden, i Como Entero
	
	orden = 11
	mi_resultado = 0
	Para i=0 hasta orden
		mi_resultado = mi_resultado + num^i/factorial(i)
	FinPara
	resultado = exp(num)
	
	Escribir "La aproximación es: ",mi_resultado
	Escribir "El resultado (pseint): ",resultado
FinAlgoritmo
