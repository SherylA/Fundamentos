#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math, sys

def angle(x,y):
	if x>0.0 and y>=0.0:
		ang=math.atan(y/x)
	elif x==0.0 and y>0.0:
		ang=math.pi*0.5
	elif x<0.0:
		ang=math.atan(y/x)+math.pi
	elif x==0.0 and y<0.0:
		ang=math.pi*1.5
	elif x>0.0 and y<0.0:
		ang=math.atan(y/x)+2*math.pi
	else:
		ang=0.0
	
	return (math.degrees(ang))

def reglineal(x,y,n):
	sumA=0.0
	sumB=0.0
	sumC=0.0
	sumD=0.0

	if n<=0:
		print("El número de datos debe ser mayor a cero")
		sys.exit()
	else:
		for i in range(0,n):
			sumA=sumA+x[i]
			sumB=sumB+y[i]
			sumC=sumC+x[i]*y[i]
			sumD=sumD+x[i]*x[i]

	if(sumA*sumA-n*sumD)==0:
		print("La pendiente es indeterminada. Los datos se ajustan a una recta de la familia x=a")
		sys.exit()
	else:
		m=(sumA*sumB-n*sumC)/(sumA*sumA-n*sumD)
		b=(sumB-m*sumA)/n		
	return([m,b])	

def media(x,n):
	if n<=0: 
		print("El número de datos debe ser mayor que 0")	
	else:
		med=0.0
		for i in range(0,n):
			med=med+x[i]
	return (med/n) 

def varianza(x,n):
	if n<=0: 
		print("El número de datos debe ser mayor que 0")	
	else:
		med=media(x,n)
		var=0.0
		for i in range(0,n):
			var=var+(x[i]-med)^2.0
	return (var/n) 

def angle2(z,rho):
    if z>0.0:
        ang=math.atan(rho/z)
    elif z==0:
        ang=math.pi*0.5
    else:
        ang=math.atan(rho/z)+math.pi
     
    return (math.degrees(ang))

def cartcilin(x,y,z):
	rho=math.sqrt(x**2+y**2)
	phi=angle(x,y)
	z=z
	return([rho,phi,z])

def cartesfer(x,y,z):
	r=math.sqrt(x**2+y**2+z**2)
	rho=math.sqrt(x**2+y**2)
	phi=angle(x,y)
	theta=angle2(z,rho)
	return([r,phi,theta])
	





