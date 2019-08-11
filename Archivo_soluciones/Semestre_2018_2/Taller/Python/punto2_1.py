import math

print("Las unidades anglosajonas permitidas son [Pies], [Yardas], [Pulgadas], [Millas]")

inputAng = input("Ingrese el valor de la forma X [unidad Ang] ej X [Pies]: ")

if len(inputAng.split(" "))!=2:
	print("Error")
	exit()

medidaAng, unidadAng =  inputAng.split(" ")
medidaAng = float(medidaAng)

if unidadAng=='[Pies]':
	medidaSI = 0.3048*medidaAng 
elif unidadAng=='[Pulgadas]':	
	medidaSI = 0.0254*medidaAng
elif unidadAng=='[Yardas]':
	medidaSI = 0.9144*medidaAng
elif unidadAng=='[Millas]':
	medidaSI = 1609.347*medidaAng 
else: 
	print("Error")
	exit()

unidadSI = input("Ingrese [m], [mm], [km]: ")

if unidadSI=='[m]':
	medidaSI = medidaSI
elif unidadSI=='[mm]':
	medidaSI = medidaSI*1000
elif unidadSI=='[km]':
	medidaSI = medidaSI*0.001
else:
	print("Error")
	exit()

print("La medida", medidaAng," en ",unidadAng," es ",medidaSI," en ",unidadSI)









