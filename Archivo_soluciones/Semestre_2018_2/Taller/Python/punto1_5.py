import math

year = int(input("Ingrese el año: "))

if year < 0:
	print("Error")
	exit()

esMul_4 = year%4 == 0
esMul_100 = year%100 == 0
esMul_400 = year%400 == 0

if esMul_4 == False:
	print("No es bisiesto")
else:
	if esMul_100 == False:
		print("Es bisiesto")
	if esMul_100 == True and esMul_400 == False:
		print("No es bisiesto")
	if esMul_100 == True and esMul_400 == True:
		print('Es bisiesto')











