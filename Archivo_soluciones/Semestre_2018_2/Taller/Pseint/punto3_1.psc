Algoritmo punto3_1
	Definir numA, numB Como Real
	
	Escribir "Ingresar 2 n�meros"
	Leer numA,numB
	
	suma = numA + numB
	Escribir "La suma entre A y B es: ",suma
	
	resta = numA - numB
	Escribir "La resta entre A y B es: ",resta
	
	mul = numA*numB
	Escribir "La mul entre A y B es: ",mul
	
	Si numB!=0 Entonces
		div = numA/numB
		Escribir "La divisi�n entre A y B es: ",div
	SiNo
		Escribir "No se puede dividir A y B, B=0"
	FinSi
	
	Si numA>0 Entonces
		potencia = numA^numB
		Escribir "La potencia entre A  y B es ",potencia
	SiNo
		Si numA==0 y numB>0 Entonces
			Escribir "La potencia entre A y B es 0"
		FinSi
		Si numA==0 y numB<=0 Entonces
			Escribir "0 a la 0 o 1/0 indeterminaci�n"
		FinSi
		Si numA<0  y numB<>trunc(numB) Entonces
			Escribir "La potencia puede darme compleja"
		Sino 
			potencia = numA^numB
			Escribir "La potencia entre A  y B es ",potencia
		FinSi
	FinSi
	
	Si numA>0 y numB<>0 Entonces
		radical = numA^(1/numB)
		Escribir "La radicaci�n entre A  y B es ",radical
	SiNo
		Si numA>0 y numB==0 Entonces
			Escribir "Indeterminaci�n"
		FinSi
		
		Si numA==0 y numB>0 Entonces
			Escribir "La radicaci�n entre A y B es 0"
		FinSi
		Si numA==0 y numB<=0 Entonces
			Escribir "0 a la 0 o 1/0 indeterminaci�n"
		FinSi
		Si numA<0  y numB<>trunc(numB) Entonces
			Escribir "La radicaci�n puede darme compleja"
		Sino 
			Si numB/2==trunc(numB/2)
				Escribir "La radicaci�n es compleja"
			SiNo
				radical = numA^(1/numB)
				Escribir "La radicaci�n entre A  y B es ",radical
			FinSI
		FinSi
	FinSi
	
	
	
	
	
FinAlgoritmo
