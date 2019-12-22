Funcion b = mi_raiz(x)
	Definir b Como Real
	Si x>=0
		b = x
		mientras b != x/b
			b = (b + x/b)*0.5
		FinMientras
	SiNo
		b = -1
	FinSi
FinFuncion

Funcion p = mi_potencia(x,n)
	Definir p Como Real
	p = x
	Definir i Como Entero
	Si n==trunc(n)
		Para i=2 hasta n
			p = p*x
		FinPara
	SiNo
		p=-1
	FinSi
FinFuncion


Algoritmo pow
	Definir num Como Real
	Escribir "Ingrese el n�mero"
	Leer num
	
	Escribir "Con mi funci�n: ",mi_raiz(num)," con la funci�n de pseint: ",rc(num)
	Escribir "Con mi funci�n: ",mi_potencia(num,5)," con la funci�n de pseint: ", num^5
FinAlgoritmo
