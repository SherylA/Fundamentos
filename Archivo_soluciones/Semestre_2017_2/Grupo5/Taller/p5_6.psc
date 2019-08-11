Algoritmo p5_6
	//Dados los coeficientes de dos polinomios de grado N y M respectivamente, calcule la multiplicación 
	//e imprima los coeficientes de los polinomios resultantes
	Imprimir "Este programa calcula la multiplicación de dos polinomios de grado N y M" 
	Imprimir "Recuerde que el polinomio es de la forma c1+c2x^1+c3x^3+...+cnx+1^(n)"
	
	Imprimir "Por favor introduzca el grado N del primer polinomio"
	Leer N
	Imprimir "Por favor introduzca el grado M del segundo polinomio"
	Leer M
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0 o M<=0 o M-trunc(M)!=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Dimension coef1[N+1]
		Dimension coef2[M+1]
		//Ingresamos los coeficientes desde el independiente hasta x a la potencia 
		Para i desde 1 hasta N+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 1 es:"
			leer coef1[i]
		FinPara
		
		Para i desde 1 hasta M+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 2 es:"
			leer coef2[i]
		FinPara
		
		//Ahora debemos hacer la multiplicación, para ello creamos una matriz de operaciones, 
		//cada término del polinomio 1 multiplicado por cada término del polinomio 2
		//La matriz sería N+1 filas x M+1 colomnas
		Dimension mul[N+1,M+1]
		Para i desde 1 hasta N+1
			Para j desde 1 hasta M+1
				mul[i,j]=coef1[i]*coef2[j]
			FinPara
		FinPara
		
		//Un ejemplo: M=3 N=2
		//          (1)   (2)  (3) (4)
		//          x3    x2   x   1
		//(1) x2    x5    x4   x3  x2
		//(2) x     x4    x3   x2  x   
		//(3) 1     x3    x2   x   1
		
		//Un ejemplo: M=2 N=3
		//          (1)   (2)  (3)
		//          x2    x    1   
		//(1) x3    x5    x4   x3  
		//(2) x2    x4    x3   x2    
		//(3) x     x3    x2   x  
 		//(4) 1     x2    x    1
		
		//Como podemos ver lo que debemos hacer ahora es agrupar términos semejantes
		//Sumando los valores de las diagonales inversas
		
		//Para evitamos confusiones con los independientes reescribimos M y N, 
		//los terminos totales del resultado son N+1+M+1-1 si todas las potencias están presentes
		Ni=N+1
		Mi=M+1
		T =N+M+1
		Dimension multot[N+M+1]
		
		//Luego hacemos la suma en orden recorriendo las diagonales de la matriz las cuales son N+M+1.
		//Miramos el caso que N sea mayor que M 
		Si Ni>=Mi
			//k va ser el contador de las diagonales
			//Ejemplo:
			
			// Para k=1 sólo hay un termino que no interesa el [1,1]
			// Para k=2 nos interesa el termino [1,2] y [2,1]
			// Para k=3 nos interesan los terminos [1,3] [2,2] [3,1]
			// Para k=4 nos interesan los términos [2,3] [3,2] [4,1]
			// Para k=5 nos interesan los términos [3,3] [4,2]
			// Para k=6 nos interesan los términos [4,3]
			
			Para k desde 1 hasta T
				sumam=0
				//Hacemos suma cero
				Si k<=Mi
					
					//Luego recorremos entre los valores menores que Mi
					//fila por fila hasta la columna k que estemos analizando
					//Podemos ver como mientras i(fila) va aumentando la columna debe disminuir 
					//por eso es k-i+1 (i va desde 1)
					Para i desde 1 hasta k
						sumam=sumam+mul[i,k-i+1]
					FinPara
				Sino
					//Luego vamos por la sección que es menor que Ni
					//Podemos ver como mientras i(fila) va aumentando desde 2 luego 3 y así,
					//mientras que la columna debe disminuir 
					//por eso es k+1-M, M-i+1 (i va desde 1)
					Si k<=Ni
						Para i desde 1 hasta Mi
							sumam=sumam+mul[k+i-Mi,Mi-i+1]
						FinPara
					Sino
						//Para los demás valores la suma es la misma pero el i va en ese sector
						Para i desde 1 hasta Ni+Mi-k
							sumam=sumam+mul[k+i-Mi,Mi-i+1]
						FinPara
					FinSi
				FinSi
				//Al final llenamos el valor total con la sumade la diagonal
				multot[k]=sumam
			FinPara
		Sino
			//Si M es mayor que N las cosas se invierten
			//Ejemplo:
			
			// Para k=1 sólo hay un termino que no interesa el [1,1]
			// Para k=2 nos interesa el termino [1,2] y [2,1]
			// Para k=3 nos interesan los terminos [1,3] [2,2] [3,1]
			// Para k=4 nos interesan los términos [1,4] [2,3] [3,2]
			// Para k=5 nos interesan los términos [2,4] [3,3] 
			// Para k=6 nos interesan los términos [3,4]
			
			Para k desde 1 hasta T
				sumam=0
				Si k<=Ni
					//Para las finalas menores que M
					//Podemos ver como mientras i(fila) va aumentando la columna debe disminuir 
					//por eso es k-i+1 (i va desde 1)
					Para i desde 1 hasta k
						sumam=sumam+mul[i,k-i+1]
					FinPara
				Sino
					//Para las filas menores que N
					//Podemos ver como mientras i(fila) va aumentando la columna debe disminuir 
					//por eso es k-i+1 (i va desde 1)
					Si k<=Mi
						para i desde 1 hasta Ni
							sumam=sumam+mul[i,k-i+1]
						FinPara
					Sino
						//Y el ultimo tramo
						//Podemos ver como mientras i(fila) va aumentando desde 2 luego 3 y así,
						//mientras que la columna debe disminuir 
						//por eso es k+1-M, M-i+1 (i va desde 1)
						Para i desde 1 hasta Ni+Mi-k
							sumam=sumam+mul[k+i-Mi,Mi-i+1]
						FinPara
					FinSi
				FinSi
				//Al final asignamos la suma de la diagonal
				multot[k]=sumam
			FinPara
		FinSi
		//Imprimimos por expresiones concatenadas
		c=""
		expre3=""
		//Concatenamos para que la expresión sea bonita de imprimir
		Para i desde 1 hasta Ni+Mi-1
			expre3=Concatenar(concatenar("(",ConvertirATexto(multot[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
			c=Concatenar(c,Concatenar("+",expre3))	
		FinPara
		Imprimir "El polinomio multiplicación resultante es: ",c			
	FinSi
FinAlgoritmo