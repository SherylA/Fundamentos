SubProceso d = conv(x,OP)
	Segun OP Hacer
		1:
			d=x*(10)^(-6)
		2:
			d=x*(10)^(-3)
		3:
			d=x*(10)^(-2)
		4:
			d=x
		5:
			d=x*(10)^(3)
	FinSegun
	
FinSubProceso

Proceso PII_p3
	
	Dimension anglo[9]
	Dimension inter[5]
	
	anglo[1]='Mils'
	anglo[2]='Pulgadas'
	anglo[3]='Pies'
	anglo[4]='Yardas'
	anglo[5]='Rods'
	anglo[6]='Cadenas'
	anglo[7]='Furlogs'
	anglo[8]='Millas'
	anglo[9]='Leguas'
	
	inter[1]='Micr�metros'
	inter[2]='Mil�metros'
	inter[3]='Cent�metros'
	inter[4]='Metros'
	inter[5]='Kil�metros'
	
	
		Limpiar Pantalla
		Escribir "La distancia que desea ingresar est� en:"
		Para i=1 Hasta 9 
		Escribir i "." anglo[i]
		FinPara
		Escribir "Elija una opci�n (1-9): "
		Leer OP
		
		Limpiar Pantalla
		Escribir "La distancia a la que desea convertir es:"		
		Para i=1 Hasta 5 
			Escribir i "." inter[i]
		FinPara
		// ingresar una opcion
		Escribir "Elija una opci�n (1-5): "
		Leer OP2
		
		Si OP2<6
		// procesar esa opci�n
		Segun OP Hacer
			1:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(25.4*10^(-6))
			2:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(2.54*10^(-2))
			3:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(30.48*10^(-2))
			4:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(91.44*10^(-2))
			5:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(5.0292)
			6:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(20.1168)
			7:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(201.168)
			8:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(1609.344)
			9:
				Escribir "Ingrese el valor"
				Leer x
				temp=x/(4828.032)
			De otro modo:
				Escribir "Opci�n no v�lida"
				
		FinSegun
		Dc = conv(temp,OP2)
		Escribir x ' (' anglo[OP] ') son ' Dc ' (' inter[OP2] ')' 
		Sino
			Escribir "Opci�n no v�lida"
		FinSi
FinProceso

