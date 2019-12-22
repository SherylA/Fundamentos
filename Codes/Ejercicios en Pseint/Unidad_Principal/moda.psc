Algoritmo moda
	
	Definir lista,temp Como Real
	Definir N,i,j Como Entero
	Escribir "Ingrese la cantidad de elemntos de la lista: "
	Leer N
	
	
	//Crear una lista con valores aleatorios
	Dimension lista[N]
	Para i=0 hasta N-1 
		lista[i]=azar(10)
	FinPara

	//Recorrer la lista
	Para i=1 Hasta N-1 Con Paso 1 Hacer
	
		Para j=0 hasta N-1-i
			//Verificar si los dos valores estan ordenados
			Si lista[j]>lista[j+1]
				//Ordenar si es necesario
				temp=lista[j];
				lista[j]=lista[j+1];
				lista[j+1]=temp;
			FinSi
		FinPara
	FinPara
	
	Para i=0 hasta N-1 
		Escribir Sin Saltar lista[i]," "
	FinPara
	//--------------------Burbuja----------------------//
	
	Definir lista_unica,freq_unica Como Real
	Dimension lista_unica[N],freq_unica[N]
	
	
	Para i=0 Hasta N-1
		lista_unica[i]=0
		freq_unica[i]=1
	FinPara

	Definir k,N_unica Como Entero
	k=0
	i=0
	Escribir ""
	
	Mientras i<N-1
		
		j=i+1
		//j es el siguiente
		Si lista[i]==lista[j] 
			
			Mientras j<=N-1 y lista[i]==lista[j]
				lista_unica[k]=lista[i]
				freq_unica[k]=freq_unica[k]+1
				j=j+1
			FinMientras
			i=j
			k=k+1
			
		SiNo
			lista_unica[k]=lista[i]
			k=k+1
			i=i+1
		FinSi
	FinMientras
	
	N_unica = k-1
	Si lista[N-2]<>lista[N-1]
		lista_unica[k]=lista[N-1]
		N_unica = k
	FinSi
	
	Para i=0 hasta N_unica
		Escribir Sin Saltar "[",lista_unica[i],",",freq_unica[i],"] "
	FinPara
	
	Escribir " "
	Definir max, i_max Como Entero
	max= -9999
	Para i=0 hasta N_unica
		Si freq_unica[i]>max
			max = freq_unica[i]
			i_max = i
		FinSI
	FinPara

	Escribir "La moda es ",lista_unica[i_max]," con una freq de: ",max
FinAlgoritmo


