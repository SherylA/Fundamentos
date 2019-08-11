Algoritmo p5_7
	//Dados los coeficientes de dos polinomios de N y M respectivamente, calcule la división de ambos
	//polinomios e imprima los coeficientes de los polinomios divisor y residuo.
	Imprimir "Este programa calcula la división de dos polinomios de grado N y M"
	Imprimir "Recuerde que el polinomio es de la forma c1+c2x^1+c3x^3+...+cnx+1^(n)"
	Imprimir "Por favor introduzca el grado N  del primer polinomio, siendo N mayor o igual a M"
	Leer N
	Imprimir "Por favor introduzca el grado M  del segundo polinomio, siendo M menor o igual a N"
	Leer M
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0 o M<=0 o M-trunc(M)!=0 o N<M
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		//Ingresamos los coeficientes desde el indepeniente hasta x a la potencia
		Dimension coef1[N+1]
		Dimension coef2[M+1]
		Para i desde 1 hasta N+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 1 es:"
			leer coef1[i]
		FinPara
		//Creamos un contandor para asegurarnos que exista por lo menos un valor no cero en el polinomio divisor
		cont=0
		Para i desde 1 hasta M+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 2 es:"
			leer coef2[i]
			Si coef2[i]==0
				cont=cont+1
			FinSi
		FinPara
		
		Si cont==M+1
			Imprimir "Segundo polinomio lleno de ceros. Volver a ejecutar el programa"
		Sino
			//Ahora procedamos a dividir
			Dimension divpol[N]
			Dimension poltemp[N+1]
			Dimension polmul[N+1]
			
			Para i desde 1 hasta N+1
				poltemp[i]=coef1[i]
			FinPara
			//Lo primero es asegurarnos que el primer termino (ultimo en este caso el de mayor potencia) 
			//es diferente de cero, ya que es él el que domina la división
			//Ejemplo: x^7 + 3x^3 + 1  / x^2 +5 
			Si coef2[M+1]!=0 
				Para k desde 0 hasta N-M
					//Luego dividimos por el termino de mayor potencia
					//Ejemplo x^7 / x^2 = x^5  
					divpol[k+1]=poltemp[N+1-k]/coef2[M+1]
					//Luego vamos a recorrer el polimonio de multiplicación 
					
					i=N-M+1-k				
					Para j desde 1 hasta M+1
						polmul[i]=divpol[k+1]*coef2[j] 
						//Ejemplo x^5 * (x^2+5)= x^7 + 5x^5
						i=i+1
					FinPara
					Si N>M y N-M-k!=0
						//El polinomio queda de grado N por lo que hay que rellenar
						Para i desde 1 hasta N-M-k 
							polmul[i]=0.0
						FinPara
					FinSi
					//Luego hacemos la resta entre el polinomio de multiplicación 
					//y el polinomio temporal (que es nuestro polinomio)
					Para i desde 1 hasta N+1
						poltemp[i]=poltemp[i]-polmul[i]
						polmul[i]=0.0
						//Ejemplo  (x^7 + 3x^3 + 1) - (x^7 + 5x^5) = -5x^5+3x^3+1
					FinPara
					
					//Luego continuamos haciendo divisiones un número de veces N-M, que sería cuantos
					//grados pueda dividir el polinomio divisor
					
					//-5x^5/x^2=-5x^3
					//-5x^3 * (x^2+5)= -5x^5 - 25x^3
					// (-5x^5+3x^3+1) - (-5x^5 - 25x^3) = +28x^3+1
					
					//+28x^3+1/x^2=28x
					//28x * (x^2+5) = 28x^3+140x
					// (+28x^3+1) - (28x^3+140x) = -140x + 1
				FinPara
					
				//Imprimimos las impresiones concatenadas para que se ve bien
				Para i desde 1 hasta N-1
					expre=Concatenar(concatenar("(",ConvertirATexto(divpol[i])),concatenar("x^",Concatenar(ConvertirATexto(N-M-i+1),")")))
					a=Concatenar(a,Concatenar("+",expre))	
				Fin para
				Imprimir "El cociente es: ",a
				Para i desde 1 hasta N+1
					expre2=Concatenar(concatenar("(",ConvertirATexto(poltemp[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
					b=Concatenar(b,Concatenar("+",expre2))	
				FinPara
				Imprimir "El residuo es: ",b
			SiNo
				Imprimir "No se puede realizar la división con un polinomio de grado ",M," sin coeficiente"
			FinSi
			
			
		FInsi
	FinSi
	
FinAlgoritmo