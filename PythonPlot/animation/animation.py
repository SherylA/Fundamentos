import sys, os
import math as m
import numpy as np
import matplotlib.pyplot as plt

#Estas importaciones son para poder escribir letras griegas y tildes el las gráficas

#Esta es para animaciones
import matplotlib.animation as animation

R=10
def data_gen(t=0,r=R):
	contador = 0
	while contador < 101:
		contador += 1
		yield t, 8*t-t**2*9.8  
		t += 0.02

#Aquí inicializamos el plano de la imagen de un ymin a ymax y de xmin a xmax
x1=0
x2=1
y1=0
y2=2
def init(xmin=x1,xmax=x2,ymin=y1,ymax=y2):
	ax.set_ylim(ymin,ymax)
	ax.set_xlim(xmin,xmax)
	del xdata[:]
	del ydata[:]
	line.set_data(xdata, ydata)
	return line,

#Luego creamos el entorno y la grid
fig3, ax = plt.subplots()
line, = ax.plot([], [], linestyle="--",marker="o")
ax.grid()
xdata, ydata = [], []

#Esta es la función que hace que las imagenes se actualicen
def run(data):
    # update the data
    t, y = data
    xdata.append(t)
    ydata.append(y)
    xmin, xmax = ax.get_xlim()
    line.set_data(xdata, ydata)
    return line,

#Y aquí ya sale la animación, podemos cambiar algunas cosas para que sea más rápido
#se repita etc...
ani = animation.FuncAnimation(fig3, run, data_gen, blit=False, interval=100,
                              repeat=False, init_func=init)

plt.show()

