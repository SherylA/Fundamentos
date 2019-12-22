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

Algoritmo seno
	
	Definir num,mi_resultado, resultado Como Real
	Leer num
	num = num*PI/180
	Definir orden, i Como Entero
	
	orden = 5
	mi_resultado = 0
	Para i=0 hasta orden
		mi_resultado = mi_resultado + (-1)^i*num^(2*i+1)/factorial(2*i+1)
	FinPara
	resultado = sen(num)
	
	Escribir "La aproximación es: ",mi_resultado
	Escribir "El resultado (pseint): ",resultado
	
FinAlgoritmo
