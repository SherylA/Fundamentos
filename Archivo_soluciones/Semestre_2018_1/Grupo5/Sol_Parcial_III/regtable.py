import math as m
import numpy as np
import matplotlib.pyplot as plt

#Importamos nuestras librerías 
import regression as rg
import defclass as df

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

#x=x0+t*v0x
v0x,x0=rg.reglineal(t,x)

#y=-0.5*g*t**2+v0y*t+y0
ac,v0y,y0=rg.regcuad(t,y)

#La gravedad es:
g=ac*(-2.0)

#El angulo es:
theta=m.degrees(m.atan2(v0y,v0x))

#La velocidad inicial es
v0=v0x/m.cos(m.radians(theta))

#Llamamos a la clase proyectil
valor=df.proyectil(x0,y0)
valor.movinit(v0,theta,g)

#Imprimimos la información importante
text=open("valores.txt","w")
text.write("Los valores importantes del experimento son:\n")
text.write("La gravedad %.2f [m/s^2] \n" % (g))
text.write("La posición inicial en x es %.2f [m] \n" % (x0))
text.write("La posición inicial en y es %.2f [m] \n" % (y0))
text.write("El ángulo de disparo es %.2f grados \n" % (theta))
text.write("La magnitud de la velocidad inicial es %.2f [m/s]\n" % (v0))
text.write("La altura máxima alcanzada es %.2f [m]\n" % (valor.Hmax()))
text.write("El alcance máximo alcanzado es %.2f [m]\n" % (valor.Dmax()))
text.close()


plt.show()

