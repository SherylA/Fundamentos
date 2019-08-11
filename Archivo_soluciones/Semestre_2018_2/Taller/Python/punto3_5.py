import math

bisiesto = input("¿El año es bisiesto? y/n: ")

meses = {'Enero':31,'Febrero':28,'Marzo':31,'Abril':30,'Mayo':31,'Junio':30,
'Julio':31,'Agosto':31,'Septiembre':30,'Octubre':31,'Noviembre':30,'Diciembre':31}

if bisiesto =='y':
	Ndias = int(input("Escriba 1-366: "))
	if Ndias<=0 and Ndias>366:
		print("Error")
		exit()
	revisor = Ndias
	i = 0
	meses['Febrero'] = 29
	mes = []
	for k,v in meses.items():
		revisor = revisor - v
		mes.append(k)
		if revisor < 0:
			break
	print("El mes es: ",mes[-1])

elif bisiesto == 'n':
	Ndias = int(input("Escriba 1-365: "))
	if Ndias<=0 and Ndias>365:
		print("Error")
		exit()
	revisor = Ndias
	i = 0
	mes = []
	for k,v in meses.items():
		revisor = revisor - v
		mes.append(k)
		if revisor < 0:
			break
	print("El mes es: ",mes[-1])
else:
	print("Error")
