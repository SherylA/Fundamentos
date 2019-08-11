Algoritmo p2_2
	//Hacer un algoritmo que me arroje el valor en años, meses, semanas y días de una
	//cantidad N de días.
	Imprimir "Este programa me da el valor en años, meses, semanas y días de un número de días" 
	Imprimir "Por favor introduzca el valor en días a convertir"
	Leer N
	//Debemos asegurarnos que se los datos sean correctos
	Si N<0
		Imprimir "¡Tiempo negativo! Volver a ejecutar el programa"
	Sino
		Imprimir "Desea: 1. Un valor aproximado (asumiendo un mes a 30 días)" 
		Imprimir "2. Algo más exacto (contando días por meses)"
		Leer op
		Si op==1
			//Ahora un año tiene 365 días
			año=N/365
			//Tenemos el valor convertido en años y tomamos su parte entera
			año_int=trunc(año)
			//El resto de ese tiempo lo pasamos a días,
			año_dec=año-año_int
			dias_sob=año_dec*365
			//Debido a que las reglas de tres no son correlacionadas debemos hacerlo todo 
			//en función de una misma unidad que sería el día. Un mes son 30 días.
			mes=dias_sob/30
			mes_int=trunc(mes)
			mes_dec=mes-mes_int
			//Volvemos a calcular los días sobrantes, una semana tiene 7 días. 
			dias_sob=mes_dec*30
			sem=dias_sob/7
			sem_int=trunc(sem)
			sem_dec=sem-sem_int
			dias_sob=sem_dec*7
			Imprimir N, " días es igual a ",año_int," año(s), ",mes_int," mes(es), ",sem_int," semana(s) y ",dias_sob," día(s)"
		SiNo
			Si op==2
				//Ahora un año tiene 365.25 días
				año=N/365.25
				//Tenemos el valor convertido en años y tomamos su parte entera
				año_int=trunc(año)
				//El resto de ese tiempo lo pasamos a días,
				año_dec=año-año_int
				dias_sob=año_dec*365.25
				//Ahora debemos ubicar los días sobrantes en su mes correspondiente 
				//Creamos una lista con los días por mese
				Dimension diasmeses[12]
				
				diasmeses[1]=31
				diasmeses[2]=28
				diasmeses[3]=31
				diasmeses[4]=30
				diasmeses[5]=31
				diasmeses[6]=30
				diasmeses[7]=31
				diasmeses[8]=31
				diasmeses[9]=30
				diasmeses[10]=31
				diasmeses[11]=30
				diasmeses[12]=31
				
				//Luego hacemos un ciclo restando a los días sobreante los días de cada mes
				i=1
				temp=dias_sob
				Mientras temp>=0
					temp=temp-diasmeses[i]
					i=i+1
				FinMientras
				//El último valor de i es el mes siguiente en donde temp es negativos en curso, 
				//es decir i-1 es el mes en curso y pasan i-2 meses y sobran algunos días
				Si i-2==0
					dias_sob_2=dias_sob
				Sino
					dias_acum=0
					Para j=1 hasta i-2
						dias_acum=dias_acum+diasmeses[j]
					FinPara
					dias_sob_2=dias_sob-dias_acum
				FinSi
				sem=dias_sob_2/7
				sem_int=trunc(sem)
				sem_dec=sem-sem_int
				dias_sob_3=sem_dec*7
				
				Imprimir N, " días es igual a ",año_int," año(s), ",i-2, " mes del año en curso, ",sem_int," semana(s) y ",dias_sob_3," día(s)"
			SiNo
				Imprimir "Opción incorrecta. Debe ser 1 o 2"
			FinSi
		FinSi
	FinSi
FinAlgoritmo

 