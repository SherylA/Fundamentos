Algoritmo burbuja
	
	//Organizar una lista de valores desde el menor al mayor
	//Entrada lista,N valores (reales)
	//Salida lista ordenada 
	
	Definir lista,temp Como Real
	Definir N,i,j Como Entero
	Escribir "Ingrese la cantidad de elementos de la lista: "
	Leer N
	
	//Crear una lista con valores aleatorios
	Dimension lista[N]
	Para i=0 hasta N-1 
		lista[i]=azar(50)
		Escribir Sin Saltar lista[i]," "
	FinPara
	
	
	Escribir ""
	Escribir "Ordenada"
	
	//Recorrer la lista por intentos
	Para i=1 Hasta N-1 Con Paso 1 Hacer
		Escribir ""
		Escribir "Intento #",i
		
		Para j=0 hasta N-1 -i
			//Verificar si los dos valores estan ordenados
			Si lista[j]>lista[j+1]
				//Ordenar si es necesario
				temp=lista[j]
				lista[j]=lista[j+1]
				lista[j+1]=temp
			FinSi
		FinPara
		
		Para j=0 hasta N-1 
			Escribir Sin Saltar lista[j]," "
		FinPara
	FinPara
	
	Escribir ""
	Escribir "Al final"
	Para i=0 hasta N-1 
		Escribir Sin Saltar lista[i]," "
	FinPara

	
FinAlgoritmo
