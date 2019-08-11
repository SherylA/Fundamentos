Algoritmo p1_2
	//Dado 3 n�meros determinar si la suma de cualquier pareja es igual al tercer numero. Si se cumple
	//esta condici�n, imprimir cual pareja da la suma del tercer n�mero.
	Imprimir "Este programa determina, ingresando 3 n�meros, si la suma de 2 de ellos da el tercero"
	Imprimir "Por favor introduzca tres valores:"
	Leer n1,n2,n3
	
	//La suma no tiene restricciones, primero debemos hacer las sumas por las parejas posibles y
	//luego usando el condicional determinar si son iguales al tercer n�mero
	
	suma12=n1+n2
	suma13=n1+n3
	suma23=n2+n3
	
	//Como la suma es conmutativa s�lo hay 3 posibilidades
	
	Si suma12==n3
		Imprimir "La suma de los n�meros 1 y 2 es igual al n�mero 3 -->",n1," + ",n2," = ",n3
	Sino
		Si suma13==n2
			Imprimir "La suma de los n�meros 1 y 3 es igual al n�mero 2 -->",n1," + ",n3," = ",n2
		Sino
			Si suma23==n1
				Imprimir "La suma de los n�meros 2 y 3 es igual al n�mero 1 -->",n2," + ",n3," = ",n1
			Sino
				Imprimir "La suma de las combinaciones de los 3 n�meros no es igual a ninguno de ellos"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
