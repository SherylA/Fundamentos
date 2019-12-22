Funcion b = mi_raiz(x)
	Definir b Como Real
	Si x>=0
		b = x
		Mientras b!=x/b
			b = 0.5*(x/b + b)
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
	Escribir "Ingrese el número"
	Leer num
	Escribir "Pseint: ",rc(num)
	Escribir "Mi función: ",mi_raiz(num)
	Escribir "Pseint: ",num^5
	Escribir "Mi función: ",mi_potencia(num,5)
FinAlgoritmo


