SubProceso m = pendiente(x1,x2,y1,y2)
	m=(y2-y1)/(x2-x1)
FinSubProceso

SubProceso b = pcorte(m,x1,y1)
	b=y1-m*x1
FinSubProceso

Algoritmo PII_p2
	Escribir 'Ingrese el punto (x1a,y1a) de la recta A'
	Leer x1a,y1a
	Escribir 'Ingrese el punto (x2a,y2a) de la recta A'
	Leer x2a,y2a
	Escribir 'Ingrese el punto  (x1b,y1b) de la recta B'
	Leer x1b,y1b
	Escribir 'Ingrese lel punto (x2b,y2b) de la recta B'
	Leer x2b,y2b
	
	mA = pendiente(x1a,x2a,y1a,y2a)
	mB = pendiente(x1b,x2b,y1b,y2b)
	
	Si mA=mB
		Escribir 'Las rectas son paralelas'
	Sino
		bA = pcorte(mA,x1a,y1a)
		bB = pcorte(mB,x1b,y1b)	
		xp = (bB-bA)/(mA-mB)
		yp = mA*xp
		Escribir 'La recta A es la forma y=' mA 'x+ ' bA
		Escribir 'La recta B es la forma y=' mB 'x+ ' bB
		Escribir 'El punto de intersección entre la recta A y la B es (' yp ',' xp ')'
	FinSi
FinAlgoritmo
