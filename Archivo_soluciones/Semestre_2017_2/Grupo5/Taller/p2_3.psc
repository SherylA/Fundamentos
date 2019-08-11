Algoritmo p2_3
	//Un a�o es bisiesto si es m�ltiplo de 4, exceptuando los m�ltiplos de 100, que s�lo son bisiestos
	//cuando son m�ltiplos adem�s de 400, por ejemplo el a�o 1900 no fue bisiesto, pero el a�o 2000 si lo
	//fue. Hacer un algoritmo que dado un a�o A nos diga si es o no bisiesto.
	Imprimir "Este programa me indica si un a�o fue bisiesto o no" 
	Imprimir "Por favor introduzca el a�o"
	Leer N
	//Debemos asegurarnos de tomar los datos sean correctos, en este punto se puede asumir
	//que el a�o 1987.5 se refiere a una fecha, a�o 1987 mes abril, por lo tanto tomaremos su parte entera
	//Recordemos avisar al usuario cual a�o ingres� en la impresi�n de todas formas!!
	Si N<0 
		Imprimir "�Tiempo negativo! Volver a ejecutar el programa"
	Sino
		N=trunc(N)
		//Ahora el a�o debe ser m�ltiplo de 4
		Si N MOD 4==0
			//Si el multiplo de 100 pero no de 400 no es bisiesto
			Si N MOD 100==0 y N MOD 400!=0
				Imprimir "El a�o ",N," no fue(ser�) bisiesto"
			Sino
				//Sino es multiplo de 100 no hay problema
				Imprimir "El a�o ",N," fue(ser�) bisiesto"
			FinSi
		sino 
			Imprimir "El a�o ",N," no fue(ser�) bisiesto"
		FinSi
	FinSi
FinAlgoritmo