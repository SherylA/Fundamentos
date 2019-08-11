#!/usr/bin/env python
# -*- coding: utf-8 -*-

#------------Módulos-----------------#
import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt

#---------Módulos Propios------------#

#------Definición de funciones-------#

def printfile(data,mat):
	if mat.ndim!=2:
		print("¡La dimensión debe ser 2!")
		sys.exit()
	
	f,c=mat.shape
	if f==0 and c==0:
		print("¡La matriz está vacía!")

	for j in range(0,c):
		for i in range(0,f):
			data.write(str(mat[i,j])+"\t")
		data.write("\n")
	
	data.close()

#-------------Entradas---------------#
#Recuerde definir las entradas según #
#su tipo, int, float u otro objeto   #
#------------------------------------#

x=np.loadtxt('datos.txt',usecols=[0])
y=np.loadtxt('datos.txt',usecols=[1])
z=np.loadtxt('datos.txt',usecols=[2])
vx=np.loadtxt('datos.txt',usecols=[3])
vy=np.loadtxt('datos.txt',usecols=[4])
vz=np.loadtxt('datos.txt',usecols=[5])
t=np.loadtxt('datos.txt',usecols=[6])


#-----Definición de variables--------#
#Defina las variables que va a usar  #
#Recuerde definir el tipo            #
#------------------------------------#



#-----Desarrollo del código----------#
#Cuidado con la identación.          #
#Por cada ciclo, pare y ejecute      #
#Divida su desarrollo por partes,    #
#pare y ejecute cada una de ellas    #
#------------------------------------#



#-------------Salidas-----------------#
#La impresión por pantalla debe llevar#
#unidades dado el caso, la salidad por#
#archivos debe ser organizada         # 
#-------------------------------------#


#Tercera parte
plt.close("all")
plt.figure('Myfig1')
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
plt.ylabel('X [m]')  # Ponemos etiqueta al eje y
plt.plot(t,vx,color="red",linestyle="",marker="o",markersize=2) 
#plt.axhline(0.0, color = 'black',linestyle="dashed")  #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,5) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Y [m]')  # Ponemos etiqueta al eje y
plt.ylim(30,50)  # Los valores del eje y variarán entre a,b
plt.plot(t,vy, color="blue",linestyle="",marker="o",markersize=1) 
#plt.axhline(0.0, color = 'black',linestyle="dashed") #Hacer una línea horizaontal y=0.0
plt.subplot(2,3,6) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Z [m]')  # Ponemos etiqueta al eje y
plt.plot(t,vz,color="black",linestyle="",marker="o",markersize=2) 


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
