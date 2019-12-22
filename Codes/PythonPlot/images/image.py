import sys, os
import math as m
import numpy as np
import matplotlib.pyplot as plt

#Estas importaciones son para poder escribir letras griegas en las gráficas
from matplotlib import rcParams
rcParams['text.latex.unicode']=True

#Estas importaciones son para poder manejar imagenes png y jpg
import matplotlib.image as mpimg 
from PIL import Image

#Esto es para activar el modo interativo y que el código 
#no quede pegado mientras la imagen está abierta
#plt.ion()

#Vamos hacer una ventana con dos imagenes
fig = plt.figure("PrimeraFig")

#Aquí cargamos las imagenes
image = mpimg.imread('fig1.png') #Cargar imagen en formato png
image2 = mpimg.imread('fig2.png') #Cargar imagen en formato png

#Ponemos u para usar tildes y r para las letas griegas tipo latex 
 
plt.subplots_adjust(left=0.0, bottom=0., right=0.9, top=0.9,wspace=0., hspace=0.)
#En la primera dibujaremos la fig1 sin ejes
plt.subplot(2,2,1) 
plt.imshow(image)
#plt.plot(150,150,marker="o",markersize=20)
plt.axis('off')
#plt.xticks([]), plt.yticks([]) #Ocultar numeración en ejes 

plt.subplot(2,2,2)
plt.imshow(image2)
plt.axis('off')

plt.subplot(2,2,3) 
plt.imshow(image2)
#plt.plot(150,150,marker="o",markersize=20)
plt.axis('off')
#plt.xticks([]), plt.yticks([]) #Ocultar numeración en ejes 

plt.subplot(2,2,4)
plt.imshow(image)
plt.axis('off')

"""

print("Vemos que seguimos en consola haciendo cosas... por ejemplo vamos a limpiar la pantalla-->")
print(("TEXTO"*3).center(50))

input("Presione una tecla para continuar")
os.system('clear')

print("Podemos cerrar la gráfica")
plt.close()

input("Presione una tecla para continuar")
os.system('clear')

print("Y el programa no cierra hasta que las gráficas no estén cerradas")


#Vamos hacer otra figura
fig2 = plt.figure("SegundaFig")
#Esta es para abrir jpg y le podemos cambiar los colores, si quieren que salga igual quitar el convert
img=Image.open('fig1.jpg').convert("I")
plt.imshow(img)


plt.ioff()
"""
plt.show()
