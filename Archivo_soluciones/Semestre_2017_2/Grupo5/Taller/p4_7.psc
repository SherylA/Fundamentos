Funcion med=media(list,N)
	//La media de un conjunto de numeros es la suma de todos los numeros sobre el n�mero de datos
	suma=0
	//sumamos los numeros
	para i desde 1 hasta N
		suma=suma+list[i]
	FinPara
	//Dividimos por el n�mero de datos
	med=suma/N
FinFuncion

Funcion var=varianza(list,N)
	//La varianza de un conjunto de n�meros es la suma de la resta de los n�meros menos la media al cuadrado
	//dividido por el n�mero de datos
	suma=0
	//Calculamos la media
	med=media(list,N)
	//Sumamos el cuadrado de la resta entre cada n�mero menos la media
	para i desde 1 hasta N
		suma=suma+(list[i]-med)^2
	FinPara
	//Dividimos por el n�mero de datos
	var=suma/N
FinFuncion

Funcion des=desviacion(list,N)
	//La desviaci�n es la ra�z de la varianza
	var=varianza(list,N)
	des=rc(var)
FinFuncion

Funcion max=maximo(list,N)
	max=-9999
	//El m�ximo valor se calcula comparando con un valor muy peque�o
	//con cada uno de la lista
	para i desde 1 hasta N
		//Miramos si max es mayor que un n�mero de la lista
		//Si es as� no cambia, sino se remplaza por ese n�mero
		Si max>list[i]
			max=max
		Sino
			max=list[i]
		FinSi
	FinPara
FinFuncion

Funcion min=minimo(list,N)
	min=9999
	//El m�nimo valor se calcula comparando con un valor muy grande
	//con cada uno de la lista
	para i desde 1 hasta N
		//Miramos si mix es menor que un n�mero de la lista
		//Si es as� no cambia, sino se remplaza por ese n�mero
		Si min<list[i]
			min=min
		Sino
			min=list[i]
		FinSi
	FinPara
FinFuncion

Funcion frec=moda(list,N)
	//La moda es el n�mero m�s frecuente de la lista de datos
	//Creamos una lista para consignar las frecuencias de cada dato
	Dimension f[N]
	
	//Doble para, CUIDADO!! Si la lista es muy grande puede demorar en su computador
	//Para un n�mero en posici�n i fijo comparamos con uno en posici�n j
	para i desde 1 hasta N
		f[i]=0
		para j desde 1 hasta N
			//Ahora si los n�mero comparados son iguales la frecuencia suma uno m�s
			Si list[i]==list[j]
				f[i]=f[i]+1
			FinSi
		FinPara
	FinPara
	//�Qu� pasa si hay dos con la misma frecuencia?
	//Tomamos el mayor entre esos dos. Definimos un maximo en 0
	max=0
	cont=0
	para i desde 1 hasta N
		//Similar al del m�ximo, miramos cuando la frecuencia es mayor que max
		//Conservamos si no es mayor, cambiamos si encontramos un n�mero mayor
		//Pero aqu� guardamos la posici�n de ese mayor, si encontramos uno igual
		//entonces verificamos si ese numero es mayor que el que ten�amos previamente
		//guardado, si ese es el caso cambiamos el contador. 
		Si max>f[i]
			max=max
		Sino
			Si max<f[i]
				max=f[i]
				cont=i
			Sino
				Si list[i]>list[cont]
					cont=i
				FinSi
			FinSi
		FinSi
	FinPara
	//Al final la moda es aquel que tenga mayor frecuencia y si hay dos n�meros
	//con la misma frecuencia se escoge el mayor
	frec=list[cont]
FinFuncion

Funcion median=mediana(list,N)
	//La mediana es el n�mero medio de la lista de datos ordenada de menor a mayor
	//Creamos una lista para consignar la lista organizada
	Dimension list2[N]
	d=1
	
	//Usamos la segunda lista para organizar y le asignamos la primera
	para i desde 1 hasta N
		list2[i]=list[i]
	Finpara
	
	//El doble para es muy peligroso para un equipo de baja potencia y m�s para reasignaci�n. Cuidado!!!
	//Usaremos la asignaci�n por siguiente numero para optimizar el calculo
	para i desde 1 hasta N-1
		para j desde 1 hasta N-1
			//Si un n�mero es mayor que el siguiente
			Si list2[j]>list2[j+1]
				//Pasamos ese n�mero a un temporal
				temp=list2[j]
				//Luego a la posici�n del n�mero anterior ponemos el mayor, de la siguiente
				list2[j]=list2[j+1]
				//Luego al de la siguiente ponemos el n�mero menor
				list2[j+1]=temp
			FinSi
		FinPara
	FinPara
	
	//Ejemplo sencillo para entender 
	// lista= 1  5  8  2  9
	//Primer ciclo mueve aquellos que sean mayores y est�n antes
	// lista=1 5 2 8 9
	//Segundo ciclo mueve aquellos que sean mayores y est�n antes
	// lista=1 2 5 8 9
	// Los siguientes cilcos no hace nada porque no hay desorden
	// Se hacen todos los ciclos porque podr�a estar en orden descendente
	
	//Luego revisamos si el n�mero de datos es par o impar
	Si N MOD 2!=0
		//La mediana es el valor en la posici�n [n/2] + 1 de un n�mero de datos impar 
		median=list2[trunc(N/2)+1]
	Sino
		//La mediana es el valore medio entre las posicione centrales de un n�mero de datos par
		median=0.5*(list2[trunc(N/2)]+list2[trunc(N/2)+1])
	FinSi
FinFuncion

Algoritmo p4_7
	//Escribe un algoritmo para leer un conjunto de N n�meros y calcule la media, la moda, la
	//mediana, el rango, la varianza, la desviaci�n est�ndar.
	Imprimir "Este programa calcula la  media, la moda, la mediana, el rango, la varianza, la desviaci�n est�ndar." 
	Imprimir "Por favor introduzca el valor del conjunto de datos"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<=1 o N -trunc(N)!=0
		Imprimir "Error en n�mero de dados. Volver a ejecutar el programa"
	Sino
		Dimension list[N]
		Imprimir "Introduzca los valores: "
		Para i desde 1 hasta N
			Leer list[i]
		FinPara
		Imprimir "La media es: ",media(list,N)
		Imprimir "La moda es: ",moda(list,N)
		Imprimir "La mediana es: ",mediana(list,N)
		Imprimir "El rango es: ",maximo(list,N)-minimo(list,N)
		Imprimir "La varianza es: ",varianza(list,N)
		Imprimir "La desviaci�n es: ",desviacion(list,N)
	FinSi
	
FinAlgoritmo
