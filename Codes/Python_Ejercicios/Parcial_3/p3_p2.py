#No se olvide comentar el código

import math
import pandas as pd

datos_csv = pd.read_csv('Eclipses_rd.csv')
columns = datos_csv.columns.values
datos = {}
for column in columns:
  datos[column] = list(datos_csv[column])

print("Es una tabla de ",datos_csv.shape[0],"valores y las columnas son:",columns)

##########################################
# --> ¿Cuántos eclipses hay por cada tipo? (0.5)
# --> ¿Cuál es el mayor y menor año? (0.5)
# --> ¿Cuántos eclipse ocurrieron en Diciembre? (0.5)

tipos = datos['Eclipse Type']
fechas = datos['Calendar Date']

freqt = {tipo:tipos.count(tipo) for tipo in tipos}
print("¿Cuántos eclipses hay por cada tipo?")
print(freqt)

años = [int(fecha.split(' ')[0]) for fecha in fechas]
meses = [fecha.split(' ')[1] for fecha in fechas]

a_mayor = max(años)
a_menor = min(años)
print("¿Cuál es el mayor y menor año?")
print("[",a_mayor,",",a_menor,"]")

e_dic=meses.count('Dec')
print("¿Cuántos eclipse ocurrieron en Diciembre?")
print(e_dic)
