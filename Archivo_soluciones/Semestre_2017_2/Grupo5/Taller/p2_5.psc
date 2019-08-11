Algoritmo p2_5
	//Dise�ar el algoritmo que lea el valor correspondiente a un �rea en unidades del Sistema
	//anglosaj�n de unidades y las escriba expresadas en unidades del sistema internacional de unidades.
	Imprimir "Este programa convierte una unidad de �rea del sistema anglosajon al MKS" 
	//Definimos unos arreglos para facilitar el trabajo, dos de ellos arreglos de cadenas de texto
	//Los otros dos coeficientes para el c�lculo de nuestra conversi�n
	Dimension manglo[9]
	Dimension msinter[5]
	Dimension coef[9]
	Dimension coef2[5]
	
	manglo[1]='Mil^2'
	manglo[2]='Pulgada^2'
	manglo[3]='Pie^2'
	manglo[4]='Yarda^2'
	manglo[5]='Rod^2'
	manglo[6]='Cadena^2'
	manglo[7]='Furlong^2'
	manglo[8]='Milla^2'
	manglo[9]='Legua^2'
	
	msinter[1]='Micr�metros^2'
	msinter[2]='Mil�metro^2'
	msinter[3]='Cent�metro^2'
	msinter[4]='Metro^2'
	msinter[5]='Kil�metro^2'
	
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
		valor_si=valor_ang*coef[op]^2*coef2[op2]^2
		Imprimir "La medida en S.A. ",valor_ang," ",manglo[op]," en S.I es ", valor_si," ",msinter[op2]
	FinSi	
FinAlgoritmo

