Algoritmo p3_4
	//Hacer un algoritmo que calcule el perímetro de las siguientes figuras geométricas: triangulo,
	//cuadrado, rectángulo, trapecio, paralelogramo, rombo, hexágono y circulo.
	Imprimir "Este programa calcula el perímetro de ciertas figuras geométricas" 
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
	
	Imprimir "Hallar el perímetro de la figura:"
	Para i desde 1 hasta 8
		Imprimir "Seleccione la opción ",i," para ",Fig[i]
	FinPara
	Leer op
	
	Según op
1: 
	Imprimir "Ingresar el ",med[3]," 1,2 y 3 del ",Fig[op]," en metros"
	Leer l1,l2,l3
	Si l1<=0 o l2<=0 o l3<=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",l1+l2+l3," metros"
	FinSi
2: 
	Imprimir "Ingresar el ",med[3]," del ",Fig[op]," en metros"
	Leer l
	Si l<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",l*4," metros"
	FinSi
3: 
	Imprimir "Ingresar la ",med[1]," y la ",med[2]," del ",Fig[op]," en metros"
	Leer b,h
	Si b<=0 o h<=0
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",(b+h)*2," metros"
	FinSi
4: 
	Imprimir "Ingresar el ",med[3],"1 y 2, la ",med[4]," y la ",med[5]," del ",Fig[op]," en metros"
	Leer l1,l2,b1,b2
	Si l1<=0 o l2<=0 o b1<b2 o b1<=0 o b2<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",(b1+b2+l1+l2)," metros"
	FinSi
5: 
	Imprimir "Ingresar el ",med[3]," y la ",med[1]," del ",Fig[op]," en metros"
	Leer l,b
	Si l<=0 o b<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",2*(b+l)," metros"
	FinSi
6: 
	Imprimir "Ingresar el ",med[3]," del ",Fig[op]," en metros"
	Leer l
	Si l<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",l*4," metros^2"
	FinSi
7: 
	Imprimir "Ingresar el ",med[3]," del ",Fig[op]," en metros"
	Leer l
	Si l<=0  
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",l*6," metros"
	FinSi
8: 
	Imprimir "Ingresar la ",med[9]," del ",Fig[op]," en metros"
	Leer r
	Si r<=0 
		Imprimir "Datos invalidos. Volver a ejecutar el programa"
	Sino
		Imprimir "El perímetro es ",2*r*PI," metros"
	FinSi
De otro modo:
	Escribir "Opción no válida"
FinSegun	
FinAlgoritmo

