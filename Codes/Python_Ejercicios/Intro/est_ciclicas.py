
#Para -->

N = int(input('Ingrese el valor final: '))

for i in range(0,N):
	print('El número i es:',i)

for x in range(0,N,2):
	print('El número x es: ',x)

z = 0	
while z<N:
	#print('El valor de z es: ', z)
	msg = 'El valor de z es %.2f'%(z)
	# mensaje donde los números se pasan a string 
	# El número entero %d
	# El número floatante %f
	# El número en n.c %e -- %g
	# El caracter %c
	# La cadena %s 
	# El mensaje va seguido de una tupla %(a,b,c,d)
	print(msg)
	#z = z + 0.1
	z += 0.1
	
