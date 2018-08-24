import math

N = float(input("Ingrese un número para saber si es par o impar\n"))

numberIsInt = (N==math.floor(N))
numberIsPar = numberIsInt and N/2==math.floor(N/2)
numberIsImpar = numberIsInt and ~numberIsPar

if numberIsPar: 
  print("El número %.1f es un entero par" % N)
elif numberIsImpar:
  print("El número %.1f es un entero impar" % N)
else:
  print("El número %f no es entero por lo tanto no es par o impar" % N)
