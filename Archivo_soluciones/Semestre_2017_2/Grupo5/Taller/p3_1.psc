Algoritmo p3_1
	//Dise�ar el algoritmo que calcule el �rea y el per�metro de un tri�ngulo rect�ngulo dada la base y
	//la altura.
	Imprimir "Este programa determina el �rea y el per�metro de un triangulo rect�ngulo dada la base y la altura."
	Imprimir "Por favor introducir el valor de la base y la altura en metros"
	Leer base, altura
	//Debemos asegurarnos que se los datos sean correctos
	Si base<=0 o altura<=0
		Imprimir "Datos incorrectos. Volver a ejecutar el programa"
	Sino
		//Luego usamos las ecuaciones para �rea y per�metro
		area=base*altura*0.5
		Imprimir "�La base es?: 1. Un cateto 2. Una hipotenusa"
		Leer op
		Si op==1
			perimetro=base+altura+(altura^2+base^2)^(1.0/2.0)
		SiNo
			Si op==2
				beta=0.5*asen(2*altura/base)
				alpha=pi*0.5-beta
				L1=altura*(1.0/sen(alpha))
				L2=altura*(1.0/sen(beta))
				perimetro=base+L1+L2
			SiNo
				Imprimir "Opci�n incorrecta"
			FinSi
		FinSi
		Imprimir "El �rea del tri�ngulo es igual a ",area," metros^2 y su per�metro es ",perimetro," metros"
	FinSi
FinAlgoritmo
