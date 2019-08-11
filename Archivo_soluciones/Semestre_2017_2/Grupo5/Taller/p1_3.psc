Algoritmo p1_3
	//Construya un algoritmo que permita leer una cantidad variable de números N, indicando
	//finalmente lo siguiente:
	//	Cuántos números fueron positivos.
	//	Cuántos fueron negativos
	//	Cuantos fueron pares
	//	Cuantos fueron impares
	//	Cuántos fueron múltiplos de 8.
	Imprimir "Este programa indica de un conjunto de número cunatos fueron positivos, negativos, pares, impares o multiplos de 8."
	Imprimir "Por favor introduzca el número de datos:"
	Leer N
	//Debemos asegurarnos que el número de datos sea entero y mayor que 0
	Si N - trunc(N)!=0 o N<=0
		Imprimir "Número de datos no valido. Volver a ejecutar el programa"
	Sino
		//Definimos las variables para contar
		cont_par=0
		cont_impar=0
		cont_pos=0
		cont_neg=0
		cont_mul8=0
		//Usamos un ciclo para ingresar los números del 1 hasta N 
		Para i desde 1 hasta N
			Imprimir "Ingrese un número #",i
			Leer num
			//Los números pueden ser reales pero sólo cuentan entre los positivos y negativos
			Si num>=0
				cont_pos=cont_pos+1
			Sino
				cont_neg=cont_neg+1
			FinSi
			//Para comprobar que sean pares, impares o múltiplos deben ser enteros. Sino no lo son, no se cuentan. 
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
		Imprimir "De los ",N," números los positvos son: ",cont_pos 
		Imprimir "De los ",N," números los negativos son: ",cont_neg 
		Imprimir "De los ",N," números los pares son: ",cont_par 
		Imprimir "De los ",N," números los impares son: ",cont_impar 
		Imprimir "De los ",N," números los multiplos son: ",cont_mul8 
	FinSi
FinAlgoritmo
