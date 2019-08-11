Algoritmo PII_p4
	Escribir 'Ingrese el número de puntos a linealizar'
	Leer N
	Dimension  xp[N]
	Dimension  yp[N]
	sumA=0
	sumB=0
	sumC=0
	sumD=0
	Para i=1 hasta N
		Escribir 'Ingrese los puntos (x,y)_' i
		Leer xp[i],yp[i]
		sumA= sumA + xp[i]
		sumB= sumB + yp[i]
		sumC= sumC + xp[i]*xp[i]
		sumD= sumD + xp[i]*yp[i]
	FinPara
	
	Si (sumA*sumA - N*sumD)=0
		Escribir 'Los datos se ajustan a la recta y=0'
	Sino
		m = (sumA*sumB - N*sumC)/(sumA*sumA - N*sumD)
		b = (sumB - m*sumA)/N
		Escribir 'Los datos se ajustan a la recta y= ' m 'x + ' b
	FinSi
		
FinAlgoritmo
