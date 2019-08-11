import math

N=int(input("Ingrese el grado del polinomio 1: "))
M=int(input("Ingrese el grado del polinomio 2: "))
GradRes=max(N+1,M+1)

coef1=[0.0]*GradRes
coef2=[0.0]*GradRes

for i in range(0,N+1):
	coef1[i]=float(input("Ingrese el coef de x^%d "%i))
for i in range(0,M+1):
	coef2[i]=float(input("Ingrese el coef de x^%d "%i))

for i in range(0,GradRes):
	print("La suma para x^",i,"es: ",coef1[i]+coef2[i])
