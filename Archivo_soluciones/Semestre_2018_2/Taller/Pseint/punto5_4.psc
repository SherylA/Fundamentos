Algoritmo punto5_4
	
	Definir D,K Como Real
	
	Escribir "Ingresar distancia D [km]"
	Leer D
	Escribir "Ingresar distancia K[m]"
	Leer K
	K = K*0.001 //km
	
	Si D<=0 o K<=0
		Escribir "Error"
	SiNo
		Definir Dn,Dacum Como Real
		Definir n,numGas,i Como Entero
		n = 0
		
		Dimension Dn[100]
		Dacum = 0.0
		Mientras Dacum<=D
			Dn[n] = 0.05*D*(1-exp(-(n+1)*0.1/D))
			Dacum = Dacum + Dn[n]
			n = n+1
		FinMientras
		numGas = n-1
		Dn[n] =  Dn[numGas]-(Dacum - D)
		
		i=0
		Definir parada Como Logico
		parada =Falso
		Dacum = 0
		
		Definir restante Como Real
		restante = K
		Mientras parada==falso y i<n+1
			
			Si Dn[i]>K 
				Escribir "El auto no llega a la gasolinera ",i+1
				parada=verdadero
			FinSi
			
			Dacum = Dacum + Dn[i]
			restante = restante - Dn[i]
			
			Escribir i+1," Hay para recorrer ", restante," y la siguente está a ",Dn[i+1]
			Si restante<Dn[i+1]
				Escribir "Debo parar en la gasolinera ",i+1
				restante = K
				Dacum = 0
			FinSi
			i = i+1
		FinMientras
		
		Si restante<Dn[n+1]
			Escribir "Debo parar en la gasolinera ",i
		FinSi
		
		
		
	FinSi
	
	
	
FinAlgoritmo
