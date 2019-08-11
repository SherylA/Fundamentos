Algoritmo p3_4
	//Hacer un algoritmo que calcule el área de las siguientes figuras geométricas: triangulo, cuadrado,
	//rectángulo, trapecio, paralelogramo, rombo, hexágono y circulo.
	Imprimir "Este programa calcula el área de ciertas figuras geométricas" 
	//Definimos unos arreglos para facilitar el trabajo, dos de ellos arreglos de cadenas de texto
	
	Dimension Fig[8]
	Dimension Med[9]

	Fig[1]='Triángulo'
	Fig[2]='Cuadrado'
	Fig[3]='Rectángulo'
	Fig[4]='Trapecio'
	Fig[5]='Paralelogramo'
	Fig[6]='Rombo'
	Fig[7]='Hexágono'
	Fig[8]='Círculo'
	
	Med[1]='base'
	Med[2]='altura'
	Med[3]='lado'
	Med[4]='base mayor'
	Med[5]='base menor'
	Med[6]='diagonal mayor'
	Med[7]='diagonal menor'
	Med[8]='apotema'
	Med[9]='radio'
	
	Imprimir "Hallar el área de la figura:"
	Para i desde 1 hasta 8
		Imprimir "Seleccione la opción ",i," para ",Fig[i]
	FinPara
	Leer op
	
	Según op
	1: 
		Imprimir "Ingresar la ",med[1]," y la ",med[2]," del ",Fig[op]," en metros"
		Leer b,h
		Si b<=0 o h<=0
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",b*h*0.5," metros^2"
		FinSi
	2: 
		Imprimir "Ingresar el ",med[3]," del ",Fig[op]," en metros"
		Leer l
		Si l<=0 
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",l*l," metros^2"
		FinSi
	3: 
		Imprimir "Ingresar la ",med[1]," y la ",med[2]," del ",Fig[op]," en metros"
		Leer b,h
		Si b<=0 o h<=0
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",b*h," metros^2"
		FinSi
	4: 
		Imprimir "Ingresar la ",med[2],", ",med[4]," y la ",med[5]," del ",Fig[op]," en metros"
		Leer h,b1,b2
		Si h<=0 o b1<b2 o b1<=0 o b2<=0 
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",(b1+b2)*h," metros^2"
		FinSi
	5: 
		Imprimir "Ingresar la ",med[1]," y la ",med[2]," del ",Fig[op]," en metros"
		Leer b,h
		Si b<=0 o h<=0
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",b*h," metros^2"
		FinSi
	6: 
		Imprimir "Ingresar la ",med[6]," y la ",med[7]," del ",Fig[op]," en metros"
		Leer d1,d2
		Si d1<=0 o d2<=0 o d1<d2
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",d1*d2*0.5," metros^2"
		FinSi
	7: 
		Imprimir "Ingresar la ",med[3]," y la ",med[8]," del ",Fig[op]," en metros"
		Leer l,apt
		Si l<=0 o apt<=0 
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",l*apt*0.5," metros^2"
		FinSi
	8: 
		Imprimir "Ingresar la ",med[9]," del ",Fig[op]," en metros"
		Leer r
		Si r<=0 
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			Imprimir "El área es ",r*r*PI," metros^2"
		FinSi
	De otro modo:
		Escribir "Opción no válida"
	FinSegun	
FinAlgoritmo
