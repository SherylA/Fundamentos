Algoritmo p3_7
	//Hacer un algoritmo que calcule el volumen de las siguientes figuras: pirámide base triangulo,
	//pirámide base cuadrado, el cubo, el ortoedro, el paralelepípedo, cilindro, cono, esfera.
	Imprimir "Este programa calcula el volumen de ciertas figuras geométricas" 
	//Definimos unos arreglos para facilitar el trabajo, dos de ellos arreglos de cadenas de texto
	
	Dimension Fig[8]
	Dimension Med[9]
	
	Fig[1]='Piramide base triángulo'
	Fig[2]='Piramide base cuadrado'
	Fig[3]='Cubo'
	Fig[4]='Ortoedro'
	Fig[5]='Paralelepípedo'
	Fig[6]='Cillindro'
	Fig[7]='Cono'
	Fig[8]='Esfera'
	
	Med[1]='base'
	Med[2]='cara'
	Med[3]='arista'
	Med[4]='apotema'
	Med[5]='lado'
	Med[6]='altura'
	Med[7]='radio'
	
	Imprimir "Hallar el volumen de la figura:"
	Para i desde 1 hasta 8
		Imprimir "Seleccione la opción ",i," para ",Fig[i]
	FinPara
	Leer op
	
	Según op
1: 
	Imprimir "Ingresar la ",med[1]," y la ",med[4]," de la ",med[2]," 1 del ",Fig[op]," en metros"
	Leer b1,ap1
	Imprimir "Ingresar la ",med[1]," y la ",med[4]," de la ",med[2]," 2 del ",Fig[op]," en metros"
	Leer b2,ap2
	Imprimir "Ingresar la ",med[1]," y la ",med[4]," de la ",med[2]," 3 del ",Fig[op]," en metros"
	Leer b3,ap3
	Imprimir "Ingresar la ",med[6]," del ",Fig[op]," en metros"
	Leer h
	Si b1<=0 o ap1<=0 o b2<=0 o ap2<=0 o b3<=0 o ap3<=0 o h<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		abase=((b1+(b2+b3))*(b3-(b1-b2))*(b3+(b2-b1))*(b1+(b2-c3)))
		Si abase<0
			Imprimir "Datos invalidos. Volver a ejecutar el programa"
		Sino
			abase=0.25*rc(abase)
			Imprimir "El volumen es ",at*h," metros^3"
		FinSi
	FinSi
2: 
	Imprimir "Ingresar la ",med[5]," y la ",med[6]," del ",Fig[op]," en metros"
	Leer l,h
	Si l<=0 o h<=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",l*l*h," metros^3"
	FinSi
3: 
	Imprimir "Ingresar la ",med[5]," del ",Fig[op]," en metros"
	Leer l
	Si l<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El área es ",l*l*l," metros^2"
	FinSi
4: 
	Imprimir "Ingresar la ",med[3]," de la ",med[2]," 1 del ",Fig[op]," en metros"
	Leer ar1
	Imprimir "Ingresar la ",med[3]," de la ",med[2]," 2 del ",Fig[op]," en metros"
	Leer ar2
	Imprimir "Ingresar la ",med[3]," de la ",med[2]," 3 del ",Fig[op]," en metros"
	Leer ar3
	Si ar1<=0 o ar2<=0 o ar3<=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",ar1*ar2*ar3," metros^3"
	FinSi
5: 
	Imprimir "Ingresar la ",med[1]," y la ",med[6]," de la base del ",Fig[op]," en metros"
	Leer b1,h1
	Imprimir "Ingresar la ",med[6]," del ",Fig[op]," en metros"
	Leer h
	Si b1<=0 o h1<=0 o h<=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",b1*h1*h," metros^3"
	FinSi
6: 
	Imprimir "Ingresar la ",med[6]," y la ",med[7]," del ",Fig[op]," en metros"
	Leer h,r
	Si h<=0 o r<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",PI*r*h*r," metros^3"
	FinSi
7: 
	Imprimir "Ingresar la ",med[6]," y la ",med[7]," del ",Fig[op]," en metros"
	Leer h,r
	Si h<=0 o r<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",(1.0/3.0)*pi*h*r*r," metros^3"
	FinSi
8: 
	Imprimir "Ingresar la ",med[9]," del ",Fig[op]," en metros"
	Leer r
	Si r<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El volumen es ",(4.0/3.0)*r*r*r*PI," metros^3"
	FinSi
De otro modo:
	Escribir "Opción no válida"
FinSegun	
FinAlgoritmo
