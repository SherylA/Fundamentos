Algoritmo p4_5
	//Dados los coeficientes de dos polinomios de grado N y M respectivamente, calcule la suma, resta 
	//e imprima los coeficientes de los polinomios resultantes
	Imprimir "Este programa calcula la suma, resta de dos polinomios de grado N y M" 
	Imprimir "Recuerde que el polinomio es de la forma c1+c2x^1+c3x^3+...+cnx+1^(n)"
	Imprimir "Por favor introduzca el grado N del polinomio 1"
	Leer N
	Imprimir "Por favor introduzca el grado M del polinomio 2"
	Leer M
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=0 o N-trunc(N)!=0 o M<=0 o M-trunc(M)!=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Dimension coef1[N+1]
		Dimension coef2[M+1]
		Para i desde 1 hasta N+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 1 es:"
			leer coef1[i]
		FinPara
		
		Para i desde 1 hasta M+1
			Imprimir "El coeficiente #",i," de x^",i-1," del polinomio 2 es:"
			leer coef2[i]
		FinPara
		
		//Ahora sumamos y restamos por terminos semejantes
		//En el caso que N sea mayor que M restamos hasta los terminos de M y 
		//luego llenaos con los terminos del polinomio grado N
		Si N>M
			Dimension suma[N+1]
			Dimension resta[N+1]
			Para i desde 1 hasta M+1
				suma[i]=coef1[i]+coef2[i]
				resta[i]=coef1[i]-coef2[i]
			FinPara
			Para i desde M+2 hasta N+1
				suma[i]=coef1[i]
				resta[i]=coef1[i]
			FinPara
		Sino
			Si N<M
				//En el caso que N sea menor que M restamos hasta los terminos de N y 
				//luego llenaos con los terminos del polinomio grado M
				Dimension suma[M+1]
				Dimension resta[M+1]
				Para i desde 1 hasta N+1
					suma[i]=coef1[i]+coef2[i]
					resta[i]=coef1[i]-coef2[i]
				FinPara
				Para i desde N+2 hasta M+1
					suma[i]=coef2[i]
					resta[i]=-1.0*coef2[i]
				FinPara
			Sino
				Dimension suma[M+1]
				Dimension resta[M+1]
				Para i desde 1 hasta N+1
					suma[i]=coef1[i]+coef2[i]
					resta[i]=coef1[i]-coef2[i]
				FinPara
			FinSi
		FinSi
		
		//Imprimimos concatenenado las expresiones individuales
		a=""
		expre=""
		b=""
		expre2=""
		Si N>=M
			para i desde 1 hasta N+1
				expre=Concatenar(concatenar("(",ConvertirATexto(suma[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
				expre2=Concatenar(concatenar("(",ConvertirATexto(resta[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
				a=Concatenar(a,Concatenar("+",expre))	
				b=Concatenar(b,Concatenar("+",expre2))
			FinPara
			Imprimir "El polinomio suma resultante es: ",a
			Imprimir "El polinomio resta resultante es: ",b
		Sino
			para i desde 1 hasta M+1
				expre=Concatenar(concatenar("(",ConvertirATexto(suma[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
				expre2=Concatenar(concatenar("(",ConvertirATexto(resta[i])),concatenar("x^",Concatenar(ConvertirATexto(i-1),")")))
				a=Concatenar(a,Concatenar("+",expre))	
				b=Concatenar(b,Concatenar("+",expre2))
			FinPara
			Imprimir "El polinomio suma resultante es: ",a
			Imprimir "El polinomio resta resultante es: ",b			
		FinSi
	FinSi

	
FinAlgoritmo
