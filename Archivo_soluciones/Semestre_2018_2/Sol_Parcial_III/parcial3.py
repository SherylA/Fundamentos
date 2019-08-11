#No se olvide de colocar su nombre aquí y de comentar el código

import math
import pandas as pd

datos_csv = pd.read_csv('Eclipses_rd.csv')
columns = datos_csv.columns
datos = {}
for column in columns:
  datos[column] = list(datos_csv[column])

##########################################
# --> ¿Cuántos eclipses hay por cada tipo? (0.5)
# --> ¿Cuál es el día (sólo día, no la fecha exacta) con más eclipses? (0.5)
# --> ¿Cuántos eclipse hay por cada década, entre el menor año y el mayor año? (0.5)
# --> ¿Cuántos eclipses ocurrieron entre las 8 - 11 de la mañana en Septiembre? (0.5)
# --> Encuentre los índices a los que corresponde cada tipo de eclipse y guardelo en un diccionario llamado index (0.5)
# --> ¿Cuál es el promedio del tiempo del eclipse por cada tipo, guarde en un diccionario? (0.5)
# --> ¿Cuál es el promedio de la magnitud del eclipse por cada tipo, guarde en un diccionario? (0.5)


