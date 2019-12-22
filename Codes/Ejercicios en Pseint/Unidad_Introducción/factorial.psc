Algoritmo factorial
	//Hacer el diagrama de flujo del factorial de un número natural.
	//Entrada: número natural, num--- entero positivo sin 0
	//Salida: factorial
	//Procedimiento: n! ---> (1)(2)(3)...(n-1)(n) 
	
	Definir num Como Entero
	Definir fact_num,i Como Entero
	Escribir "Ingrese un número natural (no 0)"
	Leer num
	
	Si num>0
		fact_num = 1
		Para i=1 hasta num 
			fact_num = fact_num*i
		FinPara
		Escribir "El factorial es ",fact_num	
	SiNo
		Escribir "El número debe ser un natural no cero"
	FinSi
	
	
FinAlgoritmo
