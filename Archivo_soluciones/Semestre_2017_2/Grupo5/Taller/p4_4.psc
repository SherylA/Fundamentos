Funcion prod=factorial(n)
	Si n-trunc(n)!=0
		Imprimir "Error. El argumento debe ser entero"
	Sino
		prod=1
		Si n>0
			prod=1
			Para i desde 1 Hasta n Hacer
				prod=prod*i
			FinPara
		FinSi
	FinSi
FinFuncion

Algoritmo p4_2
	//Realizar un algoritmo que dado la potencia de un binomio de newton sea capaz de determinar el
	//coeficiente de cualquier componente del polinomio resultante
	Imprimir "Este programa calcula un coeficiente determinado del polinomio resultante de un binomio de newton" 
	Imprimir "Por favor introduzca la potencia del binomio"
	Leer N
	Imprimir "Y la posición del coeficiente. Recuerde que el binomio es de la forma (a+b)^n=c1a^n+c2a^(n-1)b+c3a^(n-2)b^2+..."
	Leer pos
	//Recordemos que la formula para los coeficientes de un binomio de newton es
	//N!/M!(N-M)! donde M=0,1,2...N es decir la posición 1 es igual a M=0 y así
	M=pos-1
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0 o M-trunc(M)!=0 o M<0 o M>N 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		//Ahora calculamos el coeficiente según la forma factorial
		coef=factorial(N)/(factorial(M)*factorial(N-M))
		Imprimir "EL coeficiente #",pos," es igual a ",coef
	FinSi
FinAlgoritmo
