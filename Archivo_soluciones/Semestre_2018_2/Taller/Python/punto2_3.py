import math 

tipoLado1 =input("El lado 1 es ¿cateto o hipotenusa?: ")
lado1 = float(input("El valor del lado 1 en [ul]"))

tipoLado2 =input("El lado 2 es ¿cateto o hipotenusa?: ")
lado2 = float(input("El valor del lado 2 en [ul]"))

if tipoLado1=='hipotenusa' and tipoLado2=='hipotenusa':
	print('Error')
	exit()

dosCatetos = tipoLado1=='cateto' and tipoLado2=='cateto'
unCatUnHipo = tipoLado1=='cateto' and tipoLado2=='hipotenusa'
unHipoUnCat = tipoLado1=='hipotenusa' and tipoLado2=='cateto'

if dosCatetos==True:
	print("La hipotenusa es: ", math.hypot(lado1,lado2)," [ul]")
elif unCatUnHipo==True:
	if lado2>lado1:
		print("El otro cateto es: ",math.sqrt(lado2**2-lado1**2)," [ul]")
	else:
		print("Error")
		exit()
elif unHipoUnCat==True:
	if lado1>lado2:
		print("El otro cateto es: ",math.sqrt(lado1**2-lado2**2)," [ul]")
	else:
		print("Error")
		exit()
else:
	print("Error")
	exit()











