Algoritmo p5_3
	//Consideramos n puntos representados mediante (x,y). Se desea realizar un algoritmo que permita
	//obtener la recta de regresión que se ajuste a los puntos dados. Dicha recta vendrá dada mediante los
	//valores b (interceptor), m (pendiente). Use la formulas de regresión
	
	Imprimir "Este programa realiza una regresión lineal de un conjunto de valores (y,x). ¿Defina cuantos valores son?" 
	Leer N
	
	//Revisamos que los datos sean adecuados
	Si N<=0 o N-trunc(N)!=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
				
	SiNo
		Dimension x1[N], y1[N]
		//Ingresamos los valores de x y de y
		Para i desde 1 hasta N
			Imprimir "El valor #",i," de x es:"
			Leer x1[i]
			Imprimir "El valor #",i," de y es:"
			Leer y1[i]
		FinPara
		
		//Para hallar la pendiente o el intercepto para un conjunto de datos por regresión
		//Se usan las formulas
		//A=suma xi B=suma yi  C=suma xi*yi  D=suma xi*xi
		//m=(A*B-N*C)/(A^2-N*D)
		//b=(B-A)/N
		
		sumA=0.0
		sumB=0.0
		sumC=0.0
		sumD=0.0
		
		Para i desde 1 hasta N
			sumA=sumA+x1[i]
			sumB=sumB+y1[i]
			sumC=sumC+x1[i]*y1[i]
			sumD=sumD+x1[i]*x1[i]
		FinPara
		
		Si (sumA*sumA-N*sumD)==0
			//Si la pendiente da un valor inderteminado significa que es una recta del tipo x=a (paralela a y)
			Imprimir "La pendiente es indeterminada. Los datos se ajustan a una recta de la familia x=",SumA/N
		Sino
			m=(sumA*sumB-N*sumC)/(sumA*sumA-N*sumD)
			b=(sumB-m*sumA)/N		
			Imprimir "La recta que se ajusta a los datos es y=",m,"x+",b
		FinSi
		
	FinSi
FinAlgoritmo