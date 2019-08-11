Algoritmo punto4_3
	
	Definir N,M,i Como Entero
	Definir coef1, coef2 Como Real
	
	Escribir "Ingrese el grado N coef1 y M coef2"
	Leer N,M
	
	Dimension coef1[N+1]
	Dimension coef2[M+1]
	
	Para i=0 hasta N Con Paso 1
		Escribir "Ingrese el coef para x^",i," : "
		Leer coef1[i]
	FinPara
	
	Para i=0 hasta M Con Paso 1
		Escribir "Ingrese el coef para x^",i," : "
		Leer coef2[i]
	FinPara
	
	Si N==M
		Para i=0 hasta N Con Paso 1
			Escribir "la suma para x^",i," = ",coef1[i]+coef2[i]
		FinPara
	SiNo
		Si N>M
			Para i=0 hasta M Con Paso 1
				Escribir "la suma para x^",i," = ",coef1[i]+coef2[i]
			FinPara
			Para i=M+1 hasta N Con Paso 1
				Escribir "la suma para x^",i," = ",coef1[i]
			FinPara
		SiNo
			Para i=0 hasta N Con Paso 1
				Escribir "la suma para x^",i," = ",coef1[i]+coef2[i]
			FinPara
			Para i=N+1 hasta M Con Paso 1
				Escribir "la suma para x^",i," = ",coef2[i]
			FinPara
		FinSi
		
	FinSi
	
FinAlgoritmo
