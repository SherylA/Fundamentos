Algoritmo media_desv
	//Media --> suma de los valores divido por el n�mero de valores
	//Entrada #N�mero de valores --> N, entero positivo
	//        Valores N valores, reales
	
	Definir valores,media,desv Como Real
	Definir N,i Como Entero
	Escribir "�N�mero de medidas?"
	Leer N
	Dimension valores[N]
	
	media = 0
	Si N>0
		Para i=0 hasta N-1
			Escribir "Ingrese el valor"
			Leer valores[i]
			media = media + valores[i]
		FinPara
		media = media/N
		
		desv=0
		Para i=0 hasta N-1
			desv = desv + (valores[i]- media)^2
		FinPara
		desv = rc(desv)/N
		
		Escribir "La media es: ",media,"y la desviaci�n: ",desv
	SiNo
		Escribir "Error!"
	FinSi
	
	
FinAlgoritmo
