Algoritmo p1_3
	//Construya un algoritmo que permita leer una cantidad variable de n�meros N, indicando
	//finalmente lo siguiente:
	//	Cu�ntos n�meros fueron positivos.
	//	Cu�ntos fueron negativos
	//	Cuantos fueron pares
	//	Cuantos fueron impares
	//	Cu�ntos fueron m�ltiplos de 8.
	Imprimir "Este programa indica de un conjunto de n�mero cunatos fueron positivos, negativos, pares, impares o multiplos de 8."
	Imprimir "Por favor introduzca el n�mero de datos:"
	Leer N
	//Debemos asegurarnos que el n�mero de datos sea entero y mayor que 0
	Si N - trunc(N)!=0 o N<=0
		Imprimir "N�mero de datos no valido. Volver a ejecutar el programa"
	Sino
		//Definimos las variables para contar
		cont_par=0
		cont_impar=0
		cont_pos=0
		cont_neg=0
		cont_mul8=0
		//Usamos un ciclo para ingresar los n�meros del 1 hasta N 
		Para i desde 1 hasta N
			Imprimir "Ingrese un n�mero #",i
			Leer num
			//Los n�meros pueden ser reales pero s�lo cuentan entre los positivos y negativos
			Si num>=0
				cont_pos=cont_pos+1
			Sino
				cont_neg=cont_neg+1
			FinSi
			//Para comprobar que sean pares, impares o m�ltiplos deben ser enteros. Sino no lo son, no se cuentan. 
			Si num - trunc(num)==0
				k=num/2
				//Comprobamos si k es entero o no, si lo es es par, sino es impar
				Si k - trunc(k)==0
					cont_par=cont_par+1
				Sino
					cont_impar=cont_impar+1
				Finsi
				k=num/8
				Si  k - trunc(k)==0
					cont_mul8=cont_mul8+1
				FinSi
			FinSi
		FinPara
		//Una vez terminemos el ciclo, imprimimos los contadores
		Imprimir "De los ",N," n�meros los positvos son: ",cont_pos 
		Imprimir "De los ",N," n�meros los negativos son: ",cont_neg 
		Imprimir "De los ",N," n�meros los pares son: ",cont_par 
		Imprimir "De los ",N," n�meros los impares son: ",cont_impar 
		Imprimir "De los ",N," n�meros los multiplos son: ",cont_mul8 
	FinSi
FinAlgoritmo
