Funcion mostrar_lista(lista,N)
	Definir i Como Entero
	Para i=0 hasta N-1
		Escribir Sin Saltar lista[i]," "
	FinPara
FinFuncion

Algoritmo mediana
	
	//Organizar una lista de valores desde el menor al mayor
	//Entrada lista,N valores (reales)
	//Salida lista ordenada 
	
	Definir lista,temp Como Real
	Definir N,i,j Como Entero
	Escribir "Ingrese la cantidad de elementos de la lista: "
	Leer N
	
	Si N>0
	//Crear una lista con valores aleatorios
		Dimension lista[N]
		Para i=0 hasta N-1 
			lista[i]=azar(20)
		FinPara
		
		
		//Recorrer la lista por intentos
		Para i=1 Hasta N-1 Con Paso 1 Hacer		
			Para j=0 hasta N-1 -i
				//Verificar si los dos valores estan ordenados
				Si lista[j]>lista[j+1]
					//Ordenar si es necesario
					temp=lista[j];
					lista[j]=lista[j+1];
					lista[j+1]=temp;
				FinSi
			FinPara
		FinPara
		mostrar_lista(lista,N)
		Definir medianas como real
		Si N mod 2 != 0
			medianas = lista[trunc(N/2)]
		SiNo
			medianas = 0.5*(lista[trunc(N/2)] + lista[trunc(N/2)-1])
		FinSi
		Escribir "La mediana es: ",medianas
	FinSi
	
		

	
	
FinAlgoritmo
