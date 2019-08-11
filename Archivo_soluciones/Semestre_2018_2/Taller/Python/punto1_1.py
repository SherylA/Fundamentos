import math 

total_compra = float( input("Ingrese el valor total de la compra: ") )
#Leer --> input PYTHON 3 input siempre, siempre devuelve un str
#Escribir/Imprimir ---> print
#Si ---> if
#Sino --> else

if total_compra < 0:
	print("EL valor de la compra debe ser mayor a cero")	
	exit()

if total_compra >=100000:
	descuento = 0.1*total_compra 
elif total_compra >=50000:
	descuento = 0.05*total_compra
elif total_compra >=25000:
	descuento = 0.025*total_compra 
else:
	descuento = 0.0

print("El total de la compra es: ",total_compra) #siempre mostrar 6 cifras
print("Es descuento es: %.2f " % descuento)
print("El total a pagar es: %.2f" % (total_compra-descuento))





















