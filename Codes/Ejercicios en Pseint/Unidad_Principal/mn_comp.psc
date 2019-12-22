Funcion mostrar_lista(lista,N)
	Definir i Como Entero
	Para i=0 hasta N-1
		Escribir Sin Saltar lista[i]," "
	FinPara
FinFuncion

Algoritmo mayor_menor_comp
	Definir N,i,j Como Entero
	Definir valores,min,max como real
	
	Escribir "Ingrese N"
	Leer N
	
	Si N>0
		Dimension valores[N]
		Para i=0 hasta N-1
			valores[i]=azar(50)
		FinPara
	FinSi
	
	mostrar_lista(valores,N)
	Definir cont_max,cont_min Como Entero
	Dimension cont_max[N],cont_min[N]
	
	Para i=0 hasta N-1
		cont_max[i]=0
		cont_min[i]=0
		Para j=0 hasta N-1
			Si valores[i]>valores[j] y i<>j
				cont_max[i] = cont_max[i] + 1
			FinSi
			Si valores[i]<valores[j] y i<>j
				cont_min[i] = cont_min[i] + 1
			FinSi
		FinPara
	FinPara
	
	Para i=0 Hasta N-1
		Si cont_max[i]==0
			min=valores[i]
		FinSi
		Si cont_min[i]==0
			max=valores[i]
		FinSi
	FinPara
	Escribir " "
	Escribir "Max: ",max," Min: ",min

	
FinAlgoritmo
