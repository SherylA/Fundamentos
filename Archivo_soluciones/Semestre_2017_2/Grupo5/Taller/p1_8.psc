Algoritmo p1_1
	//Hacer un algoritmo tal que dado 2 n�meros, calcule y escriba la suma, resta, multiplicaci�n y
	//divisi�n, potencia y radical entre ellos.
	Imprimir "Este programa realiza las operaciones de suma,resta, multiplicaci�n, divisi�n potencia y radical entre dos n�meros."
	Imprimir "Por favor introduzca dos valores:"
	Leer a,b
	//Las operaciones b�sicas est�n definidas por +,-,*,/
	suma=a+b
	resta=a-b
	mul=a*b
	//Recordemos que la divisi�n no admite que el demoninador sea 0
	Si b!=0
		div=a/b
	Sino
		ward=1 //Creamos la variable war para controlar la impresi�n
	FinSi
	//La potencia puede tener varias formas en distintos lenguaje, aqu� la representaremos como ^, el radical
	//es una operaci�n de potencia cuyo exponente es igual al (1/r), siendo r la ra�z. La potencia de cualquier n�mero
	//elevado a la cero es 1, aunque esto est� definido por la operaci�n. La ra�z de un n�mero negativo es 
	//un complejo en la mayor�a de programas. Si b es un n�mero racional la potencia y la ra�z se pueden mezclar 
	//As� que debemos tener cuidado con los negativos. 
	
	//Primero sacamos su parte decimal
	bint=trunc(b) 
	bdec=b-bint
	
	//Luego dividimos en dos caminos si b es entero o no
	Si bdec==0
		pot=a^b
		Si a>0 y b!=0
			ra=a^(1/b)
		Sino
			Si (bint MOD 2 == 0  o b==0)
				warr=1
			Sino
				ra=-1.0*(-1.0*a)^(1/b)
			FinSi
		FinSi
	Sino
		//Debemos hallar su forma en potencias negativas de 10
		i=0
		bnum=b
		Mientras bdec!=0
			bnum=bnum*10
			bint=trunc(bnum)
			bdec=bnum-bint
			i=i+1
		FinMientras
		bden=10^(i)
		//Luego debemos reducir la fracci�n
		j=2
		Mientras j!=27
			Si bnum MOD j==0 y bden MOD j==0
				bnum=bnum/j
				bden=bden/j
				bint=trunc(bnum)
				bdec=bnum-bint
			Sino
				j=j+1
			FinSi
		FinMientras
		//Ahora si el numerador es 1, el denominador par y a es menor que cero el resultado de la potencia 
		//ser�a complejo. En el caso que sea otro tipo de fracci�n el calculo se hace con la 
		//formula de euler, es decir se calcula la raiz compleja. Dado aque la potencia es la operaci�n 
		//contraria de la radicaci�n entonces el resultado de est� tambi�n ser�a complejo en esos casos. 
		Si a>0
			pot=a^(b)
			Si b!=0
				ra=a^(1/b)
			FinSi
		Sino
			Si bnum == 1 y bden MOD 2!= 0  
				pot=-1.0*(-1.0*a)^(1/5)
				ra=a^(1/b)
			Sino 
				warp=1
				warr=1
			Finsi 
			
		FinSi		
	FinSi
	
	Imprimir "El resultado de la operaci�n suma entre ",a," y ",b," es: ",suma	
	Imprimir "El resultado de la operaci�n resta entre ",a," y ",b," es: ",resta
	Imprimir "El resultado de la operaci�n multiplicaci�n entre ",a," y ",b," es: ",mul
	Si ward==0
		Imprimir "El resultado de la operaci�n divisi�n entre ",a," y ",b," es: ",div
	sino 
		Imprimir "La divisi�n no puede hacerse, el divisor es cero"
	FinSi
	Si warp==0
		Imprimir "El resultado de la operaci�n potencia entre ",a," y ",b," es: ",pot
	Sino
		Imprimir "La potencia es una fracci�n cuyo resultado es complejo o no definido"
	FinSi
	
	Si warr==0
		Imprimir "El resultado de la operaci�n radicaci�n entre ",a," y ",b," es: ",ra
	Sino
		Imprimir "La raiz es par, cero o una fracci�n y el radicando es negativo. El resultado es complejo o no definido"
	FinSi
FinAlgoritmo