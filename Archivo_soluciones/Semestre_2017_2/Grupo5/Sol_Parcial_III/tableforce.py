#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math, sys

F     = 98  #[N]
g     = 9.8 #[m/s^2]
theta = math.radians(30)

m1   = float(input("Ingrese la masa en [Kg] del objeto 1: "))

F1=m1*g #Magnitud de la Fuerza(Peso) producida por el cuerpo 1

alpha=float(input("Ingrese el ángulo con respecto a la horizontal en grados del objeto 1: "))
alpha=math.radians(alpha)

#Sumatoria de Fuerzas en x
Fx=-F*math.cos(theta)-F1*math.cos(alpha)
#Sumatoria de Fuerzas en y
Fy=-F*math.sin(theta)-F1*math.sin(alpha)
#Ángulo del cuerpo 2 
beta=math.degrees(math.atan2(Fy,Fx))
#Atan2 va desde -pi a pi 
#Si este valor es negativo le sumamos 360 grados
if beta<0:
	beta=beta+360
#Masa de cuerpo 2	
m2=math.sqrt(F**2.0 + F1**2.0 + 2.0*F1*F*math.cos(alpha-theta))/g

print(("El objeto 2 debe tener una masa %f [Kg] y un angulo con respecto a la horizontal de %f [°]")%(m2,beta))
