Algoritmo p4_6
	//una encriptación de mensajes muy antigua inventada por Julio Cesar, la cual se basa en que a cada
	//letra de un mensaje se le asocia un número (el orden en el abecedario), luego se suma al número de
	//cada letra otro número (la clave) y el resultado es una nueva letra, mira en el abecedario. Por ejemplo,
	//el mensaje "cruzad el rubicon", se transformaría en "dsvabeUfmUsvcjdpo" si le sumo el número clave
	//1 a cada letra (ya que la primera letra del mensaje cifrado, la "d", es la que va tras la "c", etc.). Note que
	//la ch, ll, ñ no existen, y que después de la "z" va la "a". Además los espacios en blanco se convierten en
	//letras U si la clave es 1, en V si es 2, etc. Para ello, elabore un algoritmo que a partir de un texto
	//(cadena de caracteres leída por teclado) imprima texto cifrado con la clave entera, también leída
	//desde teclado.
	Imprimir "Este programa encripta un mensaje escrito en minúsculas (sin tildes) por teclado cambiando las letras por otra en el abecedario según una clave" 
	Imprimir "Por favor introduzca la frase:"
	Leer frase
	//Esta función me devuelve la longitud de una cadena de carácteres
	N=Longitud(frase)
	
	//Ahora verifiquemos que el mensaje esté escrito en minúsculas y sin tildes. Asumimos el error falso
	error=Falso
	Para i=1 hasta N
		//La función subcadena es equivalente a tomar frase y descomponerla en letras, 
		//dado a la lectura de Pseint, mira las letras una a una como si frase fuera una lista frase[i]
		letra=Subcadena(frase,i,i)
		Si (letra>="A" y letra<="Z") o letra=="á" o letra=="é" o letra=="í" o letra=="ó" o letra=="ú" o letra=="ü"
			error=Verdadero
		FinSi
		//Si alguna letra es una mayúcula o una vocal con tilde o diéresis el error se vuelve verdadero 
	FinPara
	
	//Siempre que el error sea falso entra en el sí y seguimos con la encriptación
	Si !error
		
		//Ahora vamos a definir una lista del mismo tamaño de la frase,
		//en donde vamos a definir cual es el número de cada letra dentro del abecedario 
		Dimension frasenum[N]
		
		//Creamos entonces la cadena de carcateres para las letras del abecedario y definimos su longitud
		abc="abcdefghijklmnñopqrstuvwxyz"
		M=Longitud(abc)
		//Los espacios se remplazan por letras mayúsculas comenzado por la U 
		space="UVWXYZABCDEFGHIJKLMNÑOPQRST"
		
		//Luego debemos definir la clave, que determinaría porque letra intercambiar
		Imprimir "Por favor introduzca la clave (número mayor a 1 menor que ",M,")"
		Leer clave
		
		//Debemos comprobar que la clave no sea menor que uno ni mayor/igual que M y que sea entera
		Si clave<1 o clave>=M o clave-trunc(clave)!=0
			Imprimir "Error en la clave"
		Sino
			//Ahora creamos una cadena de caracteres nueva y vacía. Las comillas significan letras
			fraseCode=""
			
			//Realizamos un ciclo para desde 1 hasta N (longitud de la frase), para mirar letra por letra
			Para i=1 hasta N
				//Definimos un punto de parada que es inicialmente falso y j inicializado en 1
				break=Falso
				j=1
				//Usamos un ciclo mientras para que se detenga cuando el break sea verdadero o j sea igual a M(longitud de abc)
				Mientras (!break y j<=M)
						
					//Primero miramos que letra de frase es igual a las de abc y ubicamos la letra en este abecedario
					//Ejemplo la frase "aja" es igual a 1,10,1, porque a es la primera, j la decima y a de nuevo la primera 
					Si (Subcadena(frase,i,i)==Subcadena(abc,j,j))
						frasenum[i]=j
						break=Verdadero
						//Aquí cambiamos a break para que cuando encuentre la letra no siga en el ciclo
					Sino 
						//En el caso que no sea una letra miramos si es un espacio y le asignamos el valor de 0
						Si Subcadena(frase,i,i)==" "
							frasenum[i]=0
							break=Verdadero
						Sino 
							//Si no es una letra o un espacio, es algún otro carácter o número, así que lo dejamos igual 
							frasenum[i]=-1
						FinSi
					FinSi
					j=j+1
				FinMientras
				
				//Luego de ubicar la letra en el abecedario o saber si es un espacio u otro caráter. Definimos que hacer
				
				//Si es un esapcio frasenum es igual a cero entonces cambiamos el valor por 
				//la letra mayúscula correspondiente según la clave
				Si frasenum[i]==0
					//La funcion concatenar anexa cadenas de caracteres, aquí juntamos las letras una por una
					fraseCode=Concatenar(fraseCode,Subcadena(space,clave,clave))
				Sino
					//Sino es un espacio miramos si frasenum es 1 (un carácter) y lo dejamos igual
					Si frasenum[i]==-1 
						fraseCode=Concatenar(fraseCode,Subcadena(frase,i,i))
					Sino
						//Sino es un espacio o caráter es una letra, miramos que el número que vamos a sumar no supere a M
						//por ejemplo z sería la número 27 pero al sumarle 1 da 28 que no existe, allí debemos restarle M para
						//que me de 1 de nuevo que sería la a
						Si frasenum[i]+clave<=M
							fraseCode=Concatenar(fraseCode,Subcadena(abc,frasenum[i]+clave,frasenum[i]+clave))
						SiNo
							fraseCode=Concatenar(fraseCode,Subcadena(abc,frasenum[i]+clave-M,frasenum[i]+clave-M))
						FinSi
					FinSi	
				FinSi
			FinPara
			//Luego finalizamos imprimiendo la frase
			Imprimir "La frase queda encriptada como: ", fraseCode
		FinSi
	SiNo
		Imprimir "Hay un error en la frase: ",frase,". Recuerde que debe está en minúsculas sin tildes"
	FinSi
FinAlgoritmo
