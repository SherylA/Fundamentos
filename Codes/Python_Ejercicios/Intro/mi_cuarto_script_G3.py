#Problema
#Escribir un script en python tal que dado 
#un número natural n encuentre la suma de los enteros desde 1 hasta n.

#Entradas
#N entero mayor a 1
N = int(input('Ingrese un número entero mayor a 1: '))

#Verificación
if N>1:
	#Procedimiento usando la función sum()
	print("La suma de 1 hasta ",N," es ",sum(range(1,N+1)))
else:
	print("El número debe se mayor a 1")
	
