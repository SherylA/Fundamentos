
numero = int(input('Ingrese un entero: '))

if numero%2==0:
	numero_par = True
else:
	numero_par = False

print(numero_par)

## Son lo mismo
variable = True if numero%2==0 else False
print(variable)

#filtro
pares_100 = [i for i in range(1,201) if i%2==0]

#mapeo
dobles = [2*i for i in range(1,10)]
print(dobles)



