Algoritmo dectobin
	//Pasar un número de base 10 a base 2 
	//Entrada: Un  número entero que sea menor que 10000 llamado num
	//Salida: El número en base 2, como un cadena de caracteres
	//Procedimiento: num/2 --> C,R y así que C<2
	//Usar la operción MOD R = num MOD 2 C = [num/2]
	
	Definir num,cociente,residuo Como Entero
	Leer num
	Definir binario Como Caracter
	binario = ''
	Si num<0 
		num = abs(num)
		binario = '-'
	FinSi
	
	
	cociente = num
	
	//Dimension --> transforma un indentificador de un sólo atributo
	//a uno de varios atributos (lista)
	Dimension residuo[1000]
	
	//residuo[0] = 5
	//residuo[1] = 9
		
	Definir i Como Entero
	//Siempre que se use una lista en un mientras
	//se debe inicializar el contador en 0 y al final del mientras 
	//aumentar en el valor del paso
	
	i = 0 //¡¡¡Inicializar!!!
	Mientras cociente>=2
		residuo[i] = cociente MOD 2
		cociente = trunc(cociente/2)
		i = i + 1 //¡¡¡Aumentar!!!
	FinMientras
	residuo[i] = cociente
	
	
	
	Definir j Como Entero
	Para j=i hasta 0 con paso -1  
		//Escribir residuo[j]
		binario = binario + ConvertirATexto(residuo[j])
	FinPara
	
	Escribir "El resultado es:", binario
	
	
FinAlgoritmo
