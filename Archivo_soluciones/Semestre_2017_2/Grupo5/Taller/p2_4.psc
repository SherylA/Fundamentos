Algoritmo p2_4
	//Dise�ar el algoritmo que lea el valor correspondiente a una distancia en unidades del Sistema
	//anglosaj�n de unidades y las escriba expresadas en unidades del sistema internacional de unidades.
	Imprimir "Este programa convierte una unidad de distancia del sistema anglosajon al MKS" 
	//Definimos unos arreglos para facilitar el trabajo, dos de ellos arreglos de cadenas de texto
	//Los otros dos coeficientes para el c�lculo de nuestra conversi�n
	Dimension manglo[9]
	Dimension msinter[5]
	Dimension coef[9]
	Dimension coef2[5]
	
	manglo[1]='Mil'
	manglo[2]='Pulgada'
	manglo[3]='Pie'
	manglo[4]='Yarda'
	manglo[5]='Rod'
	manglo[6]='Cadena'
	manglo[7]='Furlong'
	manglo[8]='Milla'
	manglo[9]='Legua'
	
	msinter[1]='Micr�metros'
	msinter[2]='Mil�metro'
	msinter[3]='Cent�metro'
	msinter[4]='Metro'
	msinter[5]='Kil�metro'
	
	coef[1]=25.4*10^(-6)
	coef[2]=2.54*10^(-2)
	coef[3]=30.48*10^(-2)
	coef[4]=91.44*10^(-2)
	coef[5]=5.0292
	coef[6]=20.1168
	coef[7]=201.168
	coef[8]=1609.344
	coef[9]=4828.032
	
	coef2[1]=10^(-6)
	coef2[2]=10^(-3)
	coef2[3]=10^(-2)
	coef2[4]=1
	coef2[4]=10^(3)
	
	Imprimir "Medidas para convertir"
	Para i desde 1 hasta 9
		Imprimir "Seleccione la opci�n ",i," para ",manglo[i]
	FinPara
	Leer op
	
	Imprimir "Medidas a convertir"
	Para i desde 1 hasta 5
		Imprimir "Seleccione la opci�n ",i," para ",msinter[i]
	FinPara
	Leer op2
	
	Imprimir "Introduzca el valor a convertir en la unidad elegida"
	Leer valor_ang
	//Debemos asegurarnos de tomar los datos sean correctos.
	Si valor_ang<0 o op<1 o op>9 o op2<1 o op2>5 o op-trunc(op)!=0 o op2-trunc(op2)!=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		valor_si=valor_ang*coef[op]*coef2[op2]
		Imprimir "La medida en S.A. ",valor_ang," ",manglo[op]," en S.I es ", valor_si," ",msinter[op2]
	FinSi	
FinAlgoritmo

