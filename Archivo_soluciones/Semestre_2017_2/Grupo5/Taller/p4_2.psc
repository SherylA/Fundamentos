Algoritmo p4_2
	//Hacer un algoritmo para convertir un número en base 10, N dado por teclado, a base 2, 4 y 8
	Imprimir "Este programa convierte un número natural en base 10 en base 2, 4 y 8" 
	Imprimir "Por favor introduzca el número natural"
	Leer N
	Dimension res2[1000]
	Dimension res4[1000]
	Dimension res8[1000]
	//Debemos asegurarnos que se los datos sean correctos
	Si N<0 o N-trunc(N)!=0
		Imprimir "El número debe ser natural. Volver a ejecutar el programa"
	Sino
		//Ahora para pasar a base X debemos dividir nuestro número por ese número X guardando los residuos
		//y repitiendo el proceso con los cocientes, para ello creamos un contador para cada base y un temporal 
		i=1
		temp=N
		Mientras temp>1
			res2[i]=temp MOD 2
			i=i+1
			temp=trunc(temp/2)
		FinMientras
		res2[i]=1
		
		temp=N
		j=1
		Mientras temp>1
			res4[j]=temp MOD 4
			j=j+1
			temp=trunc(temp/4)
		FinMientras
		k=1
		temp=N
		res4[j]=1
		
		Mientras temp>1
			res8[k]=temp MOD 8
			k=k+1
			temp=trunc(temp/8)
		FinMientras
		res8[k]=1
		//El último valor debe ser el último cociente que es 1
		
		//Para imprimir usamos un cadena de texto concatenda para que la impresión sea horizontal y se vea bonita, esto es opcional
		a=""
		Para l desde i hasta 1 con paso -1
			a=Concatenar(a,ConvertirATexto(res2[l]))		
		FinPara
		Imprimir "El número en base 2 es ",a
		
		a=""
		Para l desde j hasta 1 con paso -1
			a=Concatenar(a,ConvertirATexto(res4[l]))
		FinPara
		Imprimir "El número en base 4 es ",a
		
		a=""
		Para l desde k hasta 1 con paso -1
			a=Concatenar(a,ConvertirATexto(res8[l]))
		FinPara
		Imprimir "El número en base 8 es ",a
		
	FinSi
FinAlgoritmo

