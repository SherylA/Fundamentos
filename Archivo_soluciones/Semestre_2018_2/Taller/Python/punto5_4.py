import math

D = float(input("Distancia A-B [km]: "))
K = float(input("Carro [m]: "))
K = K * 0.001 # [km]

i = 0
DistGas = []
Dacum = 0.0

while Dacum < D:
	DistGas.append(0.05*D*(1 - math.exp(-i*0.1/D)))
	Dacum += DistGas[i] 
	i +=1

numGas = i-1
y = DistGas[numGas] - (Dacum - D)
DistGas[numGas] = y

Dacum = 0.0
Tanque = K
for i in range(1,numGas):
  print("El tanque tiene para %f, ha recorrido %f(lleno) y la gasolinera %d está a %f"%(Tanque,Dacum,i,DistGas[i]))
	
  Dacum += DistGas[i] 
	
  if DistGas[i]>K:
	  print("El auto no puede llegar a la gasolinera #",i)
	  exit()

  Tanque -= DistGas[i] 
  #print("G[%d]-->%f,%f"%(i,DistGas[i],Tanque))
  if Tanque<DistGas[i+1]:
	  print("Parar en #%d tanque en %f siguiente %f"%(i,Tanque,DistGas[i+1]))
	  Tanque = K
	  Dacum = 0
  #print("El tanque %f distancia recorrida %f"%(Tanque,DistGas[i]))

Dacum += DistGas[numGas]
Tanque -= Dacum  
if Tanque<DistGas[numGas]:
		print("Debe parar en la gasolinera #",i)

print("Ha llegado a la ciudad B")
























