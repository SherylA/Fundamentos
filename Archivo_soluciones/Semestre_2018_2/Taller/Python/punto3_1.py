import math

numA = float(input("Ingrese num A: "))
numB = float(input("Ingrese num B: "))
print("(A + B) = ",numA+numB)
print("(A - B) = ",numA-numB)
print("(A * B) = ",numA*numB)

if numB!=0:
	print("(A / B) = ",numA/numB)
else: 
	print("Indeterminación")

if numA==0 and numB<=0:
	print("Indeterminación")
else:
	print("(A ^ B) = ",numA**numB)

if numB==0:
	print("Indeterminación")
elif numA==0 and numB<=0:
	print("Indeterminación")
else:
	print("(A ^ 1/B) = ",numA**(1/numB))

