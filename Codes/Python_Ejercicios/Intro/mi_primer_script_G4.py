import math 

#Definir numero como caracter 
#Leer numero
numero = float(input("Ingrese el número: "))

#Definir y leer numero como real
#numero_1 = float(  input()  )
#Definir y leer numero como entero
#numero_2 = int(  input()  )
#Escribir/Imprimir
#print("Tipo n1: ",type(numero_1)," Tipo n2: ",type(numero_2),"Tipo n: ",type(numero))

#Es entero cuando su parte entera es igual a número (no hay decimales)
es_entero = numero == math.trunc(numero)

print("El número ",numero," ¿es entero?",es_entero)
