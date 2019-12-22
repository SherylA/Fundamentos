Funcion mostrar_lista(lista,N)
	Definir i Como Entero
	Para i=0 hasta N-1
		Escribir Sin Saltar lista[i]," "
	FinPara
FinFuncion
Algoritmo mayor_menor
	
	Definir lista,min,max Como Real
	Definir N,i,j,cont_max,cont_min como entero
	Leer N
	Dimension lista[N],cont_max[N],cont_min[N]
	
	
	Para i=0 hasta N-1 
		lista[i]=azar(10)
	FinPara
	
	mostrar_lista(lista,N)
	
	Para i=0 hasta N-1
		cont_max[i]=0
		cont_min[i]=0
		
		Para j=0 hasta N-1
			Si lista[i]>lista[j] y i<>j
				cont_max[i] = cont_max[i] +1
			FinSi
			
			Si lista[i]<lista[j] y i<>j
				cont_min[i] = cont_min[i] +1
			FinSi
		FinPara
		
		Si cont_max[i]==0
			min=lista[i]
		FinSi
		
		Si cont_min[i]==0
			max=lista[i]
		FinSi
	FinPara
	
	
	Escribir "--- "
	Escribir "El mayor es: ",max," el menor es: ",min
FinAlgoritmo
