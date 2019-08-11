#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math 
import numpy as np
import matplotlib.pyplot as plt

#Importamos nuestra librería 
import regression as rg

#Cargamos los datos
x,y,t=np.loadtxt("datos.txt",unpack=True)

plt.close("all")
plt.figure('Table vs Tiempo')
plt.suptitle('Table vs Tiempo')
plt.subplot(1,3,1) 
plt.xlabel('X [m]')  # Ponemos etiqueta al eje x
plt.ylabel('Y [m]')  # Ponemos etiqueta al eje y
plt.plot(x,y,color="red",linestyle="",marker="o",markersize=2) 
plt.subplot(1,3,2) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('Y [m]')  # Ponemos etiqueta al eje y
plt.plot(t,y, color="blue",linestyle="",marker="o",markersize=1) 
plt.subplot(1,3,3) 
plt.xlabel('Tiempo [s]')  # Ponemos etiqueta al eje x
plt.ylabel('X [m]')  # Ponemos etiqueta al eje y
plt.plot(t,x,color="black",linestyle="",marker="o",markersize=2) 

m,b=rg.reglineal(x,t,len(y))
ac,bc,cc=rg.regcuad(y,t,len(y))

#Los valores reales eran
#La altura inicial es 5.32 [m]
#La posición en x inicial es 0.00 [m]
#La gravedad es 9.8 [m/s^2]
#El ángulo es 78.85 [grados] 
#La velocidad inicial es 10.23 [m/s] 

text=open("valores.txt","w")
text.write("Los valores importantes del experimento son:\n")
text.write("La gravedad %.2f [m/s^2] \n" % (ac*(-2.0)))
text.write("La posición inicial en x es %.2f [m] \n" % (b))
text.write("La altura inicial es %.2f [m] \n" % (cc))
text.write("El ángulo de disparo es %.2f grados \n" % (math.degrees(math.atan2(bc,m))))
text.write("La magnitud de la velocidad inicial es %.2f [m/s]\n" % (m/math.cos(math.atan2(bc,m))))
text.close()

plt.show()

