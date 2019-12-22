##################
#https://repl.it
##################


##################
#1. Más amigable (ingreso cualquier cosa y 
#la solicitud en un ciclo hasta que este bien)

#2. Medio (Ingreso es cualquier cosa pero se toma los valores necesarios)

#3. Menos amigable (Ingresa algo malo le doy un error)

#Escribir un script en python tal que dado un número 
#natural n encuentre la suma de los enteros desde 1 hasta n.
#Entradas: N que es un entero
#Salidas: suma de 1 hasta N
#Procedemiento: usar la operación sum()
"""
print('Punto #1:')
#Entradas
N = int(input('Ingrese un número entero (se tomará parte entera) mayor que 1: '))

#Verificación de la entrada
if N>1:
	print('La suma es: ', sum(range(1,N+1)))
else:
	print('El número debe ser un entero mayor que 1')


print('Punto #2:')

#Elabore un script en python que calcule el 
#factorial de cualquier número entero positivo n.

#Entrada numero entero positivo
#Salida es el factorial
import math

numero = input('Ingrese un entero positivo (se tomará parte entera y valor absoluto): ')
numero = int(abs(math.trunc(float(numero))))
print("El factorial de",numero,"es ",math.factorial(numero))

print('Punto #3:')

#Elabore un script en python que pase un número entero a binario.
numero = input('Ingrese un entero (se tomará parte entera)')
numero = int(math.trunc(float(numero)))
print("El binario de",numero,"es ", bin(numero))

print('Punto #4:')

#Entradas
coef = [0]*3
for i in range(0,3):
	coef[i] = float(input('Ingrese el coef de x^%d '%(i)))

#Verificación
if coef[2]!=0:
	#Primero hallamos el discrimiante que puede ser real o complejo
	d = (coef[1]**2-4*coef[2]*coef[0])**(0.5)
	#Luego hallamos las raíces
	x = [(-coef[1]+d)/(2*coef[2]),(-coef[1]-d)/(2*coef[2])]
	print('Las raíces son ',x)
else:
	print('El polinomio no es de segundo grado')
"""
print('Punto #5:')

#Entradas

numero = -2.7
numero_is = {}
numero_is['imag'] = isinstance(numero,complex) or numero.imag!=0.0
numero_is['real'] = isinstance(numero,float) 
numero_is['fraccionario'] = numero_is['real'] and not numero.is_integer()
numero_is['entero'] = numero_is['real'] and numero.is_integer() or isinstance(numero,int) 
numero_is['natural'] = numero_is['entero'] and numero>0
numero_is['zero'] = numero == 0

print([k for k,v in numero_is.items() if v])



