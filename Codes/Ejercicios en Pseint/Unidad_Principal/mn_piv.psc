Funcion mostrar_lista(lista,N)
	Definir i Como Entero
	Para i=0 hasta N-1
		Escribir Sin Saltar lista[i]," "
	FinPara
FinFuncion

Algoritmo mayor_menor_piv
	Definir N,i Como Entero
	Definir valores,min,max como real
	
	Escribir "Ingrese N"
	Leer N
	
	Si N>0
		Dimension valores[N]
		
		min=9999
		max=-9999
		
		Para i=0 hasta N-1
			valores[i]=azar(50)
			si valores[i]<min
				min = valores[i]
			FinSi
			si valores[i]>max
				max = valores[i]
			FinSi
		FinPara
		
		mostrar_lista(valores,N)
		Escribir " "
		Escribir "Max: ",max," Min: ",min," Rango: ",max-min

		
	FinSi
	
	
	
	
	
	
FinAlgoritmo