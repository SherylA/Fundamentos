Funcion mostrar_lista(lista,N)
	Definir i Como Entero
	Para i=0 hasta N-1
		Escribir Sin Saltar lista[i]," "
	FinPara
FinFuncion
Algoritmo mayor_menor_2
	Definir lista,min,max Como Real
	Definir N,i,j,cont_max,cont_min como entero
	Leer N
	Dimension lista[N],cont_max[N],cont_min[N]
	
	max=-9999
	min=9999
	Para i=0 hasta N-1 
		lista[i]=azar(10)
		Si lista[i]>max
			max = lista[i]
		FinSi
		Si lista[i]<min
			min = lista[i]
		FinSi
	FinPara
	
	mostrar_lista(lista,N)
	Escribir "--- "
	Escribir "El mayor es: ",max," el menor es: ",min
	
FinAlgoritmo
