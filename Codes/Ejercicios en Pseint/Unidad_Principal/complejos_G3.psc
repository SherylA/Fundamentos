Algoritmo complejo
	Definir complejo_1,complejo_2 Como Real
	Dimension complejo_1[2],complejo_2[2]
	
	Escribir "Ingrese la parte real y la imaginaria"
	Leer complejo_1[0]
	Leer complejo_1[1]
	
	Escribir "El n�mero complejo es ",complejo_1[0],"+",complejo_1[1],"i"
	
	Escribir "Ingrese la parte real y la imaginaria"
	Leer complejo_2[0]
	Leer complejo_2[1]
	
	Escribir "El n�mero complejo es ",complejo_2[0],"+",complejo_2[1],"i"
	
	//La inicializaci�n depende:
	//--> funciones  complex(r,i)
	//--> definici�n  real + imag(i) (i,j1)--> lo define el lenguaje
	
	
	
	//SUMA-RESTA
	Escribir "La suma es: ",complejo_1[0] + complejo_2[0],"+",complejo_2[1] + complejo_1[1],"i"
	
	//Depediendo del lenguaje
	//funci�n suma_complejos(a1,a2)
	//Definici�n a1 + a2
	
	//Multiplicaci�n - divisi�n
	Escribir "La multiplicaci�n es: ",complejo_1[0]*complejo_2[0]- complejo_1[1]*complejo_2[1],"+",complejo_1[0]*complejo_2[1] + complejo_1[1]*complejo_2[0],"i"
	//Depediendo del lenguaje
	//funci�n mul_complejos(a1,a2)
	//Definici�n a1*a2
	
	
	
	
	
	
FinAlgoritmo
