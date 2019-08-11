import math 
import numpy as np

def check_array(x):
	return isinstance(x,np.ndarray)

def check_array_type(x):
	return (x.dtype==np.int or x.dtype==np.float)

def reglineal(x,y):
  if (check_array(x) and check_array(y) and check_array_type(x) and check_array_type(y)):
    n,=x.shape
    m,=y.shape
    if n<2 or n!=m or x.ndim!=1 or y.ndim!=1:
      print("Datos insuficientes o problemas de shape")
      sys.exit()

    A=x.sum()
    B=y.sum()
    C=(x*y).sum()
    D=(x**2).sum()

    if(A*A-n*D)==0:
      print("La pendiente es indeterminada. Los datos se ajustan a una recta de la familia x=a")
      sys.exit()

    m=(A*B-n*C)/(A*A-n*D)
    b=(B-m*A)/n		
    sol=[m,b]
    return sol  
  else:
    print("Error, los datos deben ser arreglos")

def regcuad(x,y):
  if (check_array(x) and check_array(y) and check_array_type(x) and check_array_type(y)):
    n,=x.shape
    m,=y.shape
    if n<3 or n!=m or x.ndim!=1 or y.ndim!=1:
      print("Datos insuficientes o problemas de shape")
      sys.exit()

    A=x.sum()
    B=y.sum()
    C=(x*y).sum()
    D=(x**2).sum()
    E=(x**2*y).sum()
    F=(x**3).sum()
    G=(x**4).sum()

    n1=((n*D-A*A)*(n*E-D*B)-(n*F-D*A)*(n*C-A*B))
    n2=((n*C-A*B)*(n*G-D*D)-(n*E-D*B)*(n*F-D*A))
    den=(n*D-A**2)*(n*G-D**2)-(n*F-D*A)**2
    if den==0:
      print("Los valores son indeterminados. Los datos no se ajustan a un polinomio grado 2")
      sys.exit()

    ac = n1/den
    bc =n2/den 
    cc =(B-bc*A-ac*D)/n
    sol=[ac,bc,cc]
    return sol
  else:
    print("Error, los datos deben ser arreglos")
