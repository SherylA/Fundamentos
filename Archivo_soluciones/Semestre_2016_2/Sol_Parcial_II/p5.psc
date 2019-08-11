Algoritmo PII_p5
	
	Escribir 'Ingresar la distancia en Km entre la ciudad A y B'
	Leer D
	Dimension M[100]
	K=D/4
	Dtemp=0
	i=1
	Mientras Dtemp<D
		Si i MOD 2 !=0
			M[i]=0.3*K*i
			Dtemp=Dtemp+M[i]
		sino 
			M[i]=0.5*i*K -0.1*K
			Dtemp=Dtemp+M[i]
		FinSi
		i=i+1
	FinMientras
	Escribir 'Hay ' i-1 ' gasolineras entre la ciudad A y la ciudad B'
	Para j=1 hasta i-1
		
		Si M[j]>K 
			Escribir 'No puede llegar desde la gasolinera ' j-1 ' hasta la gasolinera ' j 
		Sino
			Si M[j+1]+M[j]>K
				Escribir 'Deber parar en la gasolinera ' j
			Sino
				Escribir 'Debe parar en la gasolinera' j+1
			FinSi
		FinSi
	FinPara
FinAlgoritmo
