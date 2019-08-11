#!/usr/bin/env python
# -*- coding: utf-8 -*-

#------------Módulos-----------------#
import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt

#---------Módulos Propios------------#

import libfun as lf

#------Definición de funciones-------#



#-------------Entradas---------------#
#Recuerde definir las entradas según #
#su tipo, int, float u otro objeto   #
#------------------------------------#

x,y,z,vx,vy,vz,t=np.loadtxt('datos.txt',usecols=[0,1,2,3,4,5,6],unpack=True)

#-----Definición de variables--------#
#Defina las variables que va a usar  #
#Recuerde definir el tipo            #
#------------------------------------#

vx=vx/3.6
vy=vy/3.6
vz=vz/3.6

n=len(t)

rho=np.zeros(n+1)
phi=np.zeros(n+1)
theta=np.zeros(n+1)
vrho=np.zeros(n+1)
vphi=np.zeros(n+1)
vtheta=np.zeros(n+1)
arho=np.zeros(n+1)
aphi=np.zeros(n+1)
atheta=np.zeros(n+1)

t2=np.zeros(n+1)

#-----Desarrollo del código----------#
#Cuidado con la identación.          #
#Por cada ciclo, pare y ejecute      #
#Divida su desarrollo por partes,    #
#pare y ejecute cada una de ellas    #
#------------------------------------#

v0y,y0 =lf.reglineal(t,y,n)

ax,v0x =lf.reglineal(t,vx,n)
az,v0z =lf.reglineal(t,vz,n)

x0=x[0]-v0x*t[0]-0.5*ax*t[0]**2
z0=z[0]-v0z*t[0]-0.5*az*t[0]**2

ay=0.0 

#Los valores correctos fueron
# x0=5.7 y0=-4.4 z0=20.7
# vx0=-5.5 vy0=10.3 vz0=18.5
# ax=4.7 ay=0.0 az=-7.5
print x0,y0,z0
print v0x,v0y,v0z
print ax,ay,az

#Iniciales
rho[0],phi[0],theta[0]=lf.cartesfer(x0,y0,z0)
vrho[0],vphi[0],vtheta[0]=lf.cartesfer(v0x,v0y,v0z)
arho[0],aphi[0],atheta[0]=lf.cartesfer(ax,ay,az)
t2[0]=0.0

for i in range(0,n):
	rho[i+1],phi[i+1],theta[i+1]=lf.cartesfer(x[i],y[i],z[i])
	vrho[i+1],vphi[i+1],vtheta[i+1]=lf.cartesfer(vx[i],vy[i],vz[i])
	arho[i+1],aphi[i+1],atheta[i+1]=lf.cartesfer(ax,ay,az)
	t2[i+1]=t[i]

#-------------Salidas-----------------#
#La impresión por pantalla debe llevar#
#unidades dado el caso, la salidad por#
#archivos debe ser organizada         # 
#-------------------------------------#

data=np.array([rho, phi, theta, vrho, vphi, vtheta, arho, aphi, atheta, t2])
np.savetxt("datos2.txt",data.T)

#-------------Gŕaficas----------------#
#La gráficas deben llevar titulos     #
#eje y unidades dado el caso, todo lo #
#que se pueda para ser lo más clara   # 
#-------------------------------------#

plt.close("all")
plt.figure('Unid-Cart vs Tiempo')

plt.title('Movimiento 3D')  # Ponemos un título
plt.subplot(2,3,1) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('X [m]')  # Ponemos etiqueta al eje y
plt.plot(t,x,color="red",linestyle="",marker="o",markersize=2) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,2) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Y [m]')  # Ponemos etiqueta al eje y
plt.plot(t,y, color="blue",linestyle="",marker="o",markersize=1) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,3) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Z [m]')  # Ponemos etiqueta al eje y
plt.plot(t,z,color="black",linestyle="",marker="o",markersize=2) 
plt.subplot(2,3,4) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vx [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t,vx,color="red",linestyle="",marker="o",markersize=2) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,5) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vy [m/s]')  # Ponemos etiqueta al eje y
plt.ylim(8,13)  # Los valores del eje y variarán entre a,b
plt.plot(t,vy, color="blue",linestyle="",marker="o",markersize=1) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,6) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vz [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t,vz,color="black",linestyle="",marker="o",markersize=2) 


plt.figure('Unid-Esfer vs Tiempo')

plt.title('Movimiento 3D')  # Ponemos un título
plt.subplot(3,3,1) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('rho [m]')  # Ponemos etiqueta al eje y
plt.plot(t2,rho,color="red",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,2) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('phi [grad]')  # Ponemos etiqueta al eje y
plt.plot(t2,phi, color="blue",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,3) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Theta [grad]')  # Ponemos etiqueta al eje y
plt.plot(t2,theta,color="black",linestyle="",marker="o",markersize=5) 
plt.subplot(3,3,4) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vrho [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vrho,color="red",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,5) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vphi [grad/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vphi, color="blue",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,6) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vtheta [grad/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vtheta,color="black",linestyle="",marker="o",markersize=5) 
plt.subplot(3,3,7) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vrho [m/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vrho,color="red",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,8) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vphi [grad/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vphi, color="blue",linestyle="",marker="o",markersize=5) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(3,3,9) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Vtheta [grad/s]')  # Ponemos etiqueta al eje y
plt.plot(t2,vtheta,color="black",linestyle="",marker="o",markersize=5) 



#plt.axes([0.1,0.2,0.8,0.65])
#plt.xlim(0,10)  # Los valores del eje y variarán entre a,b
#plt.ylim(0,15)  # Los valores del eje y variarán entre a,b
#plt.legend()  # Creamos la caja con la leyenda
#plt.title('Ejemplo de título')  # Ponemos un título
#plt.suptitle('Ejemplo de título superior')  # Ponemos un título superior
#plt.minorticks_on()  # Pedimos que se vean subrrayas de división en los ejes
#plt.xticks(Distancia, [m], size = 'small', color = 'b', rotation = 45)  # Modificar formato ejes
#plt.plot(x,y, color = 'black', label = '(x, f(x)')  # Dibujamos la evolución de f(x), frente a x
#plt.plot(x[y > 0.9], y[y > 0.9], 'bo', label = 'f(x) > 0.9')  # Destacamos valores
#plt.axhspan(0.9, 1, alpha = 0.1)  # Colocamos una banda de color para los valores f(x) > 0.9
#pl.plot(x, y, color="blue", linewidth=1.0, linestyle="-")

plt.show()
