Algoritmo prom_desv
	
	//Entrada N(entero positivo !=0),valores (reales)
	//Salida: Promedio, desv 
	
	//Prom  suma(x_i)/N
	//Desv  suma(x_i-prom)^2/N
	
	Definir N,i como entero 
	Definir media,desv,valores Como Real
	
	Leer N
	Dimension valores[N]
	Para i=0 hasta N-1
		Leer valores[i]
	FinPara
	
	//media
	media=0
	Para i=0 Hasta N-1
		media = media + valores[i]
	FinPara
	media=media/N
	
	//desv
	
	desv=0
	Para i=0 Hasta N-1
		desv = desv + (valores[i]-media)^2
	FinPara
	desv=rc(desv)/N
	
	Escribir "Media: ",media," Desv: ",desv
	
	
	
FinAlgoritmo
