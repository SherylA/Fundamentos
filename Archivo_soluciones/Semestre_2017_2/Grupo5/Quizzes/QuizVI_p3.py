#!/usr/bin/env python

#Realizar una tabla de y vs t para un movimiento vertical hacía arriba desde una altura H y una velocidad incial V0 y uno de bajada desde la altura máxima alcanzada ymax hasta llegar al suelo.

import math as m

#Datos requeridos: Velocidad Inicial V0 y Altura H
print ('''Este programa calcula la posición vertical de un objeto que es lanzado desde una altura H 
hacia arriba con una velocidad inicial versus el tiempo, para valores desde 0 hasta el tiempo de bajada''')
V0=float(input("Ingrese la velocidad inicial del movimiento en [m/s]: "))
H=float(input("Ingrese la altura inicial del movimiento en [m]: "))

if V0<=0.0 or H<0.0:
	print ("La velocidad debe ser positiva mayor a cero y la altura mayor o igual que 0")
	exit()


#Gravedad en [m/s^2]
g=9.8 

#Tiempo de subida ts --> Vy=V0-gt=0 [s]
ts=V0/g

#Altura máxima alcanzada en t=ts y=H-0.5*g*t^2+V0*t [m]
ymax=H-0.5*g*ts**2+V0*ts

#Tiempo de bajada tb --> y=ymax-0.5*g*t^2=0 [s]
tb=m.sqrt(2.0*ymax/g)

#Una impresion de control
print ("El tiempo de subida es %f [s] \nLa altura máxima alcanzada es %f [m] \nEl tiempo de bajada es %f [s] \nTiempo total %f [s] " % (ts,ymax,tb,ts+tb))

#Ahora creamos la lista de tiempo para un delta definido por el usuario
dt=float(input("Ingrese el delta de tiempo [s] para hacer la tabla: "))

#Revisamos que el delta sea adecuado mayor que 0 y menor que el tiempo máximo
if dt<=0 or dt>(tb+ts):
	print ("El delta de tiempo debe ser mayor a cero y menor que el tiempo total")
	exit()

#Las condiciones iniciales del problema en subida son t=0 y=H
t=0.0
#Mientras t sea menor o igual al tiempo de subida usamos la ecuación de subida
while t<=ts:
	y= H + V0*t - 0.5*g*t**2.0
	print ("Para el tiempo %f [s] la posición vertical es %f [m]" % (t,y))
	#Aumentamos en delta t
	t=t+dt	

#Las condiciones iniciales del problema en bajada son t=ts y=ymax
#Es decir el tiempo dene ser medido como t-ts
#Pero en el whie anterior ya debimos pasar el valor de ts ¿cúanto? t=tw-ts

tw=t
t=tw-ts
#tw=t-ts
#t=0.0
while t<=tb:
	y= ymax- 0.5*g*(t)**2.0
	print ("Para el tiempo %f [s] la posición vertical es %f [m]" % (t+ts,y))
	#Aumentamos en delta t
	t=t+dt
	



