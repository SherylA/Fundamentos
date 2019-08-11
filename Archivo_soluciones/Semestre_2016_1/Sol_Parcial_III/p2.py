#!/usr/bin/env python
# -*- coding: utf-8 -*-




import math, sys

ab=3000 #[Km]	
	
#Tramos
i=0
Dtemp=0.0
Xi=[]
Xf=[]

while Dtemp<ab:
	Xi.append(ab*0.1*(i+1)+5)
	Xf.append(Xi[i]+15*(i+1))
	Dtemp = Xf[i]
	i=i+1
	
Vmax=80 # [Km/h]
V1  =Vmax*0.5
V2  =Vmax*0.2

for j in range(0,i-1):
	if (j+1)%2!=0:
		print("El tramo peligroso %d está desde %.3f [Km] hasta %.3f [Km] y su velocidad restringida es de %.3f [Km/h]") % ((j+1),Xi[j],Xf[j],V1)
	else:
		print("El tramo peligroso %d está desde %.3f [Km] hasta %.3f [Km] y su velocidad restringida es de %.3f [Km/h]") % ((j+1),Xi[j],Xf[j],V2)
		
a=20 # [Km/s^2] Hay un error aquí pero no importa yo reviso los valores cambiando a 20

t1=(Vmax-V1)/a
t2=(Vmax-V2)/a
print t2

if t1<0:
	print("Tiempos negativos hay un error en sus datos")
elif t2<0:
	print("Tiempos negativos hay un error en sus datos")
else:
	x1=Vmax*t1-0.5*a*t1**2.0
	x2=Vmax*t2-0.5*a*t2**2.0
	
for j in range(0,i-1):
	if (j+1)%2!=0:
		print("Debe arrancar %.3f [Km] para el tramo peligroso %d y acelera en el punto final %.3f [Km]") % ((Xi[j]-x1),(j+1),Xf[j])
	else:
		print("Debe arrancar %.3f [Km] para el tramo peligroso %d y acelera en el punto final %.3f [Km]") % ((Xi[j]-x2),(j+1),Xf[j])











	
	


	
	
	
	
	
	
