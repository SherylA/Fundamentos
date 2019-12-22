numero = int(input('Ingrese un número '))

if numero>=0 and numero<10:
	print('El número es un digito')
elif numero<20:
	print('El número no es un digito pero es menor que 20')
elif numero<30:
	print('El número no es un digito pero es menor que 30')
elif numero<40:
	print('El número no es un digito pero es menor que 40')
else:
	print('El número no es un digito pero es mayor que 40')
print('Aja!')
