#!/usr/bin/env python
# -*- coding: utf-8 -*-

#Los valores reales eran
#La altura inicial es 0.5 [m]
#La gravedad es 9.8 [m/s^2]
#El ángulo es 25 [grados] 
#La velocidad inicial es 5 [m/s] 
#El Xmax es 2.724 [m] 
#El Ymax es 0.728 [m]


import math, sys

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
	ni=1.0/n
	den=(D-A*A*ni)*(G-D*D*ni)-(F-D*A*ni)**2.0
	
	
	if den==0:
		print("Los valores son indeterminados. Los datos no se ajustan a un polinomio grado 2")
		sys.exit()
	else:
		#Aquí esta el error en cc en (F-D*A*ni) en el tablero puse (F-D*B*ni). En teoría debería darnos los mismos valores 			si cambio ese valor.  
		cc = ((D-A*A*ni)*(E-D*B*ni)-(F-D*A*ni)*(C-A*B*ni))/den
		bc =((C-A*B*ni)*(G-D*D*ni)-(E-D*B*ni)*(F-D*A*ni))/den 
		ac =(B-bc*A-cc*D)*ni
			
	sol=[cc,bc,ac]
	return sol

#PARA REVISAR RÁPIDAMENTE	
n=15
x=[0.100,0.250,0.400,0.550,0.700,0.850,1.000,1.150,1.300,1.450,1.600,1.750,1.900,2.050,2.200]
y=[0.553,0.605,0.657,0.693,0.711,0.733,0.734,0.724,0.710,0.676,0.639,0.594,0.525,0.462,0.380]
t=[0.029,0.064,0.091,0.130,0.158,0.193,0.225,0.262,0.288,0.326,0.353,0.392,0.421,0.458,0.494]

#POR ENTRADA POR CONSOLA

#n=int(input("¿Cuántos datos son?"))
#x=[]
#y=[]
#t=[]
#
#if n<=0:
#	print("El número de datos debe ser mayor a cero")
#	sys.exit()
#else:
#	for i in range(0,n):
#		print("Ingrese el dato x%d") % (i)
#		x.append(float(input()))
#		print("Ingrese el dato y%d") % (i)
#		y.append(float(input()))
#		print("Ingrese el dato t%d") % (i)
#		t.append(float(input()))
			
	
sol1=reglineal(x,t,n)
sol2=regcuad(y,t,n)

print sol1
#sol1[0]-->m
#sol1[1]-->b
#sol2[0]-->cc
#sol2[1]-->bc
#sol2[2]-->ac

y0    = sol2[2]
g     = -2.0*sol2[0]
theta = math.atan(sol2[1]/sol1[0]) #En radianes
V0    = sol1[0]/math.cos(theta)


if ((V0*math.sin(theta))**2.0+2.0*g*y0)==0:
	print("Los datos arrojan tiempos complejos")
	sys.exit()
else:
	tmax1 = (-1.0*V0*math.sin(theta) + math.sqrt((V0*math.sin(theta))**2.0+2.0*g*y0))/(-1.0*g)
	tmax2 = (-1.0*V0*math.sin(theta) - math.sqrt((V0*math.sin(theta))**2.0+2.0*g*y0))/(-1.0*g)
	if tmax1>0:
		xmax = V0*math.cos(theta)*tmax1
	elif tmax2>0:
		xmax = V0*math.cos(theta)*tmax2
	else:
		print("Tiempos negativos hay un error en sus datos")
		sys.exit()

ts   = V0*math.sin(theta)/g
if ts<0:
	print("Tiempos negativos hay un error en sus datos")
else:
	ymax = y0 - 0.5*g*ts**2 + V0*math.sin(theta)*ts

print ("La altura inicial es %.3f [m]\nLa gravedad es %.3f [m/s^2]\nEl ángulo es %.3f [grados] \nLa velocidad inicial es %.3f [m/s] \nEl Xmax es %.3f [m] \nEl Ymax es %.3f [m]")	% (y0,g,math.degrees(theta),V0,xmax,ymax)



	
	
	
	
	
	
