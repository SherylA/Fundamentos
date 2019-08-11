Algoritmo p2_1
//Hacer un algoritmo que me arroje el valor en horas, minutos y segundos de una cantidad N de
//segundos.
Imprimir "Este programa me da el valor en horas, minutos y segundos de un número de segundos" 
Imprimir "Por favor introduzca el valor en segundos a convertir"
Leer N
//Debemos asegurarnos que se los datos sean correctos
Si N<0
	Imprimir "¡Tiempo negativo! Volver a ejecutar el programa"
Sino
	//Ahora una hora tiene 3600 segundos
	hora=N/3600
	//Tenemos el valor convertido en horas y tomamos su parte entera
	hora_int=trunc(hora)
	//El resto de ese tiempo lo pasamos a minutos, una hora tiene 60 minutos
	hora_dec=hora-hora_int
	min=hora_dec*60
	//Tenemos el sobrante en minutos y tomamos su parte entera
	min_int=trunc(min)
	min_dec=min-min_int
	//Lo que sobre lo devolvemos a segundos
	seg=min_dec*60
	Imprimir N, " segundos es igual a ",hora_int," horas, ",min_int," minutos y ",seg," segundos"
FinSi
FinAlgoritmo

