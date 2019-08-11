Algoritmo p5_2
	//Realice un algoritmo que usando la congruencia de Zeller permita ingresar una fecha y determina
	//que día de la semana fue.
	
	Imprimir "Este programa calcula el día que fue una fecha (calendario gregoriano) específica por congruencia de Zeller" 
	Imprimir "Ingresar el día" 
	Leer d
	Imprimir "Ingresar el mes Enero(1) --> Diciembre(12)" 
	Leer m
	Imprimir "Ingresar el año"
	Leer a
	//Debemos asegurarnos que se los datos sean correctos
	Si d<=0 o m<=0 o m>12 o a<=0
		Imprimir "Error en los datos. Vuelva a ejecutar"
	SiNo
		//Hay que revisar para enero y febrero tal que cuenten como el mes 13 y 14 del año anterior
		Si m==1 
			m=13
			a=a-1
		FinSi
		Si m==2
			m=14
			a=a-1
		FinSi
		
		//Usamos la formula de congruencia de Zeller para calendario Gregoriano
		J=trunc(a/100)
		K= a mod 100
		
		ind=(d + trunc((m+1)*2.6) + K + trunc(K/4) + trunc(J/4) + 5*J) mod 7
		//Luego según el indicador decimos el día
		Según ind
			Caso 0:
				Imprimir "El día fue/es/será Sábado"
			Caso 1:
				Imprimir "El día fue/es/será Domingo"
			Caso 2:
				Imprimir "El día fue/es/será Lunes"
			Caso 3:
				Imprimir "El día fue/es/será Martes"
			Caso 4:
				Imprimir "El día fue/es/será Miércoles"
			Caso 5:
				Imprimir "El día fue/es/será Jueves"
			Caso 6:
				Imprimir "El día fue/es/será Viernes"
			De Otro Modo:
				Imprimir "Hay un error en los datos."
		FinSegun
	FinSi
	
	
	
	
FinAlgoritmo