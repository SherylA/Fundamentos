import math

cantidad = int(input("Ingrese la cantidad: "))

if cantidad <=0:
	print("La cantidad debe ser mayor a 0")
	exit()

suma = 0
prod = 1
#Para --> for
for i in range(0,cantidad):
	num = float(input("Ingrese el número: "))
	esPar = num.is_integer() and num%2 == 0
	esImpar = num.is_integer() and num%2 != 0
	if( esPar==True ):
		suma += num
	if(esImpar == True):
		prod *=num

print("La suma de los pares es: ",suma)
print("La mul de los impares es: ",prod)





















