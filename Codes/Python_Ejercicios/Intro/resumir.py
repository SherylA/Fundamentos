numero = int(input('Ingrese un número'))

# ~ if numero>=0:
	# ~ signo_numero = 'positivo'
# ~ else:
	# ~ signo_numero = 'negativo'

signo_numero = 'positivo' if numero>=0 else 'negativo'

lista_par = [ i for i in range(1,100) if i%2==0 ]
print(lista_par)
