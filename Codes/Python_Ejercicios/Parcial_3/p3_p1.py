#No se olvide comentar el código

import math 
import numpy as np

#Un objeto cae en caída libre y sigue la ecuación y = H - 0.5*g*t**2 [m], los datos de y[m] y t[s] son guardados.
#Cargamos los datos
#He cambiado los datos para que la gravedad y la altura sean adecuadas
y,t=np.loadtxt("datos.txt",unpack=True)
N= len(y)
x = [ti*ti for ti in t]
xy = [x[i]*y[i] for i in range(N)]
xx = [x[i]*x[i] for i in range(N)]

A = sum(x)
B = sum(y)
C = sum(xx)
D = sum(xy)

m = (D*N - A*B)/(C*N - A**2)
b = (B - A*m)/N

g = -2*m
H = b  

print('La gravedad es: ',g)
print('La altura inicial es: ',H)

#########################################
# --> ¿Usando las fórmulas de regresión halle el valor de H? (0.7)
# --> ¿Usando las fórmulas de regresión halle el valor de g? (0.8)
 


