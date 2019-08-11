import math

caracter = input("Ingrese un caracter: ")

if len(caracter)!=1:
	print("Error")
	exit()

if caracter>='a' and caracter<='z':
	print("Es una minúscula")
elif caracter>='A' and caracter<='Z':
	print("Es una mayúscula")
elif caracter>='0' and caracter<='9':
	print("Es un digito")
else:
	print("Es un simbolo")
