#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math 
import numpy as np

def reglineal(y,x,n):
	A=0.0
	B=0.0
	C=0.0
	D=0.0
	
	for i in range(0,n):
		A=A+x[i]
		B=B+y[i]
		C=C+x[i]*y[i]
		D=D+x[i]*x[i]
	
	if(A*A-n*D)==0:
		print("La pendiente es indeterminada. Los datos se ajustan a una recta de la familia x=a")
		sys.exit()
	else:
		m=(A*B-n*C)/(A*A-n*D)
		b=(B-m*A)/n		
	sol=[m,b]
	return sol

def regcuad(y,x,n):
	A=0.0
	B=0.0
	C=0.0
	D=0.0
	E=0.0
	F=0.0
	G=0.0
		
	for i in range(0,n):
		A=A+x[i]
		B=B+y[i]
		C=C+x[i]*y[i]
		D=D+x[i]*x[i]
		E=E+x[i]*x[i]*y[i]
		F=F+x[i]*x[i]*x[i]
		G=G+x[i]*x[i]*x[i]*x[i]
	den=(n*D-A*A)*(n*G-D*D)-(n*F-D*A)**2.0
	
	
	if den==0:
		print("Los valores son indeterminados. Los datos no se ajustan a un polinomio grado 2")
		sys.exit()
	else:
		#Aquí esta el error en cc en (F-D*A*ni) en el tablero puse (F-D*B*ni). En teoría debería darnos los mismos valores 			si cambio ese valor.  
		ac = ((n*D-A*A)*(n*E-D*B)-(n*F-D*A)*(n*C-A*B))/den
		bc =((n*C-A*B)*(n*G-D*D)-(n*E-D*B)*(n*F-D*A))/den 
		cc =(B-bc*A-ac*D)/n
			
	sol=[ac,bc,cc]
	return sol
