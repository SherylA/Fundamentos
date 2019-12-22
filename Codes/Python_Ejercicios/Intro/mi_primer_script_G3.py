import math 

#Definir la variable 
#Leer la variable
#numero = float()
numero = float(  input("Escribir un número: ")  )

#Enteros int()
#Reales float()
#Complejos complex()
#Cadenas str()
#Boleanas bool()
#La función input siempre devuelve un str

#Escribir tipo de la variable
#print(type(numero))

#¿El número es igual a su parte entera?
es_entero = numero == math.trunc(numero)

print("El número ",numero,"¿Es entero? ",es_entero)












