#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math as m
import numpy as np
import matplotlib.pyplot as plt

#Importamos nuestra librería de regresión
import lib3dmov as l3

#Cargamos los datos con numpy
x,y,z,vx,vy,vz,t=np.loadtxt('datos.txt',unpack=True)

#Recordemos que los datos de la velocidad están en [Km/h]
vx=vx/3.6
vy=vy/3.6
vz=vz/3.6

#Calculamos la longitud de los datos
n=len(t)

#Verificamos las relaciones para determinar cual movimento es acelerado o no

plt.close("all")
plt.figure('Var Mov vs Tiempo')
plt.suptitle('Var Mov vs Tiempo')
plt.title('Movimiento 3D')  # Ponemos un título
plt.subplot(2,3,1) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('X [m]')  # Ponemos etiqueta al eje y
plt.plot(t,x,color="red",linestyle="",marker="o",markersize=2) 
plt.subplot(2,3,2) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Y [m]')  # Ponemos etiqueta al eje y
plt.plot(t,y, color="blue",linestyle="",marker="o",markersize=1) 
plt.subplot(2,3,3) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Z [m]')  # Ponemos etiqueta al eje y
plt.plot(t,z,color="black",linestyle="",marker="o",markersize=2) 
plt.subplot(2,3,4) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vx [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t,vx,color="red",linestyle="",marker="o",markersize=2) 
plt.subplot(2,3,5) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vy [m/s]')  # Ponemos etiqueta al eje y
plt.ylim(8,13)  # Los valores del eje y variarán entre a,b
plt.plot(t,vy, color="blue",linestyle="",marker="o",markersize=1) 
plt.subplot(2,3,6) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vz [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t,vz,color="black",linestyle="",marker="o",markersize=2) 

#Verificamos que:
#x --> Mov acelerado
#x  = x0 +ax*t**2+vx0*t
#vx = vx0 +ax*t
#y --> Mov no acelerado
#y = y0 + vy0*t
#z --> Mov acelerado
#z  = z0 +az*t**2+vz0*t
#vz = vz0 +az*t


#Ahora hacemos la regresión lineal para la coordenada no acelerada
#Que sería de la forma y=y0+vy0*t, donde y0 es el punto de corte y vy0 la pendiente
vy0,y0 =l3.reglineal(t,y,n)

#Ahora hacemos la regresión lineal para las velocidades de las coordenadas aceleradas
#Que serían de la forma vx=vx0+ax*t, donde vx0 es el punto de corte y ax la pendiente
ax,vx0 =l3.reglineal(t,vx,n)
az,vz0 =l3.reglineal(t,vz,n)

#Ahora obtenemos los punto inciales para el punto t[0] de la ecuación
#x=x0+v0x*t+ax*t**2

x0=x[0]-vx0*t[0]-0.5*ax*t[0]**2
z0=z[0]-vz0*t[0]-0.5*az*t[0]**2

#La coordenada no acelerada tiene aceleración 0
ay=0.0 

#Los valores correctos fueron
# x0=5.7 y0=-4.4 z0=20.7
# vx0=-5.5 vy0=10.3 vz0=18.5
# ax=4.7 ay=0.0 az=-7.5
# Podemos verificar con
print ("El punto inicial del movimiento 3D (x0,y0,z0) es (%.2f,%.2f,%.2f)" % (x0,y0,z0))
print ("La velocidad inicial del movimiento 3D (vx0,vy0,vz0) es (%.2f,%.2f,%.2f)" % (vx0,vy0,vz0))
print ("La aceleración del movimiento 3D (ax,ay,az) es (%.2f,%.2f,%.2f)" % (ax,ay,az))

#Este punto fue eleiminado del parcial pero:
#Para imprimir un archivo con las magnitudes tenemos que agregar el punto t=0
t2=np.array([0.0])
x2=np.array([x0])
y2=np.array([y0])
z2=np.array([z0])
vx2=np.array([vx0])
vy2=np.array([vy0])
vz2=np.array([vz0])

#Luego agregamos los otros
t2=np.append(t2,t)
x2=np.append(x2,x)
y2=np.append(y2,y)
z2=np.append(z2,z)
vx2=np.append(vx2,vx)
vy2=np.append(vy2,vy)
vz2=np.append(vz2,vz)

#Para la aceleración
ax2=np.ones(n+1)*ax
ay2=np.ones(n+1)*ay
az2=np.ones(n+1)*az


#Ahora escribimos el documento y graficamos 
#Recordemos que la magnitud es la raiz de los valores al cuadrado
Mxyz=np.sqrt(x2**2.0 + y2**2.0 +z2**2.0)
Mvxyz=np.sqrt(vx2**2.0 + vy2**2.0 + vz2**2.0)
Maxyz=np.sqrt(ax2**2.0 + ay2**2.0 +az2**2.0)

#Guardamos todo en una tabla de datos
data=np.array([Mxyz,Mvxyz,Maxyz,t2])

np.savetxt("datos2.txt",data.T)
plt.figure('Magnitudes vs Tiempo')
plt.suptitle('Magnitudes vs Tiempo')
plt.title('Movimiento 3D')  # Ponemos un título
plt.subplot(1,3,1) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Magnitud (x,y,z) [m]')  # Ponemos etiqueta al eje y
plt.plot(t2,Mxyz,color="red",linestyle="",marker="o",markersize=5) 

plt.subplot(1,3,2) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Magnitud (vx,vy,vz) [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,Mvxyz, color="blue",linestyle="",marker="o",markersize=5) 

plt.subplot(1,3,3) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Magnitud (ax,ay,az) [m/s2]')  # Ponemos etiqueta al eje y
plt.plot(t2,Maxyz,color="black",linestyle="",marker="o",markersize=5) 


plt.show()



