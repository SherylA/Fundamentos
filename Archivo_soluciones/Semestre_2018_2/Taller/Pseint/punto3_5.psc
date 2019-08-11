Algoritmo punto3_5
	
	//---> SABER SI EL AÑO ES BISISESTO O NO
	
	Definir bis Como Logico
	
	Escribir "¿El año es bisiesto o no? Verdadero/Falso"
	Leer bis	
	
	//------> El mes
	
	Definir dias, Ndias, i, revisor Como Entero
	Definir meses Como Caracter
	
	Dimension dias[12]
	Dimension meses[12]
	
	dias[0]=31 //Enero
	dias[1]=28 //Febrero
	dias[2]=31 //Marzo
	dias[3]=30 //Abril
	dias[4]=31 //Mayor
	dias[5]=30 //Junio
	dias[6]=31 //Julio
	dias[7]=31 //Agosto
	dias[8]=30 //Septiembre
	dias[9]=31 //Octubre
	dias[10]=30 //Noviembre
	dias[11]=31 //Diciembre
	
	meses[0]="Enero"
	meses[1]="Febrero"
	meses[2]="Marzo"
	meses[3]="Abril"
	meses[4]="Mayor"
	meses[5]="Junio"
	meses[6]="Julio"
	meses[7]="Agosto"
	meses[8]="Septiembre"
	meses[9]="Octubre"
	meses[10]="Noviembre"
	meses[11]="Diciembre"
	
	Si bis
		Escribir "Escribir un número entre 1 y 366"
		Leer Ndias
		Si Ndias>=1 y N<=366
			dias[1]=29
			i = 0
			revisor = Ndias 
			Mientras revisor>=0
				Escribir "Acum: ",revisor," mes: ",meses[i]
				revisor = revisor - dias[i]
				i = i +1
			FinMientras
			i = i - 1
			Escribir "El mes es: ",meses[i]
		Sino
			Escribir "Error!"
		FinSi
		
	SiNo
		Escribir "Escribir un número entre 1 y 365"
		Leer Ndias
		Si Ndias>=1 y N<=366
			i = 0
			revisor = Ndias 
			Mientras revisor>=0
				revisor = revisor - dias[i]
				Escribir revisor
				i = i +1
			FinMientras
			i = i - 1
			Escribir "El mes es: ",meses[i]
		Sino
			Escribir "Error!"
		FinSi
	FinSi
	
	
FinAlgoritmo
