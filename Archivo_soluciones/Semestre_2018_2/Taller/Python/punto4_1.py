import math

N = float(input("Ingrese el número: "))

if N.is_integer()==False or N==0:
	print("No es primo (los primos son enteros diferentes de 0)")
	exit()

esPrimo=True
i=2
while esPrimo and i<N:
	if N%i==0:
		esPrimo = False
	i+=1
print("El número es primo? ",esPrimo)

