entradas = [0]*5

#1.
entradas[0] = int(input('Ingrese el primer número '))
entradas[1] = int(input('Ingrese el segundo número '))
entradas[2] = int(input('Ingrese el tercer número '))
entradas[3] = int(input('Ingrese el cuarto número '))
entradas[4] = int(input('Ingrese el quinto número '))

#v2
#entradas = []
#entradas.append(int(input('Ingrese el primer número ')))

#2.
orden = entradas.copy()
#v2 orden = entradas[:]

orden.sort()
orden.reverse()
print("La lista ordenada asc: ",orden)

#3. 

print("El número",orden[0],"se repite",orden.count(orden[0]))
print("El número",orden[1],"se repite",orden.count(orden[1]))
print("El número",orden[2],"se repite",orden.count(orden[2]))
print("El número",orden[3],"se repite",orden.count(orden[3]))
print("El número",orden[4],"se repite",orden.count(orden[4]))
