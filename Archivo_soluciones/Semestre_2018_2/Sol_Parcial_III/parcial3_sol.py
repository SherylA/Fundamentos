#Sheryl Avendaño

#Importamos las librerías necesarias
import math
import pandas as pd

#Estas librerías son extras de la solución para que la impresión de los diccionarios se vea bonita
import json
import os

#Además que como son muchos puntos le agregué algunas funciones para una impresión más bonita todavía
def stop():
  sig=False
  while sig==False:
    print("\nTeclee cualquier tecla para seguir ")
    sig = input()
  os.system('clear') 

os.system('clear') 

#Aquí comienza como estaba en parcial3.py

datos_csv = pd.read_csv('Eclipses_rd.csv')
columns = datos_csv.columns
datos = {}
for column in columns:
  datos[column] = list(datos_csv[column])

#PRIMER PUNTO
print('¿Cuántos eclipses hay por cada tipo?')

#Hacer una tabla de frecuencia para elementos únicos es fácil de hacer de la siguiente manera:
freq_type = {type_e:datos['Eclipse Type'].count(type_e) for type_e in datos['Eclipse Type']}

print("R\ La tabla de frecuencia para los tipos de eclipse es: ")
print(json.dumps(freq_type, indent = 4))
stop()

#SEGUNDO PUNTO
print('¿Cuál es el día (el día, no la fecha exacta) con más eclipses?')

#Aquí está la solución de uno de los puntos del extra
parsed_month = {'Jan':1,'Feb':2,'Mar':3,'Apr':4,'May':5,'Jun':6,'Jul':7,'Aug':8,'Sep':9,'Oct':10,'Nov':11, 'Dec':12}
dates = [dato.split(" ") for dato in datos['Calendar Date']]

years  = [ int(date[0]) for date in dates ]
months = [ parsed_month[date[1]] for date in dates ]
days   = [ int(date[2]) for date in dates ]

#Entonces cómo sabemos que los días van del 1 a 31 simplemente los organizamos en una lista. En el caso que no fueran llaves numéricas
#usaríamos un diccionario e invertiríamos el diccionario (valores:llaves) para hallar la llave que tiene el máximo, pero hay otras maneras más elegantes de hacerlo. 

freq_days = [ days.count(day) for day in range(1,32) ]
max_count = max(freq_days)

print("R\ El día (sin importar año o mes) en el qué más se presentan eclipses es el",freq_days.index(max_count)+1,"con",max_count,"eclipses")
stop()

#TERCER PUNTO
print('¿Cuántos eclipse hay por cada década, entre el menor año y el mayor año?')

#Este también es una solución de un problema del extra
tot_rows   = len(years)
first_year = min(years)
last_year  = max(years)

#Primero necesitamos saber cuantas décadas hay en esos años
decadas = (last_year-first_year)//10

#Luego simplemente hacemos una llaves con los valores de los intervalos 
d_dec = ["%d-%d"%((first_year+i*10),(first_year+10*(i+1))) for i in range(0,decadas+1)]

#Para finalizar con un diccionario con estas llaves, en donde contamos por los años de las décadas y luego sumamos
count_decadas = {}
for i in range(0,decadas+1):
  count_year = {year:years.count(year) for year in range(first_year+i*10,first_year+10*(i+1))}
  count_decadas[d_dec[i]] = sum(count_year.values())

print("R\ El número de eclipses por décadas desde el primer año en la tabla es: ")
print(json.dumps(count_decadas,indent=4))
stop()

#CUARTO PUNTO
print('¿Cuántos eclipses ocurrieron entre las 8 - 11 de la mañana en Septiembre?')

#Primero, otra solución de un punto del extra
dtimes  = [dato.split(":") for dato in datos['TD of Greatest Eclipse']]

hours   = [ int(time[0]) for time in dtimes ]
minutes = [ int(time[1]) for time in dtimes ]
seconds = [ int(time[2]) for time in dtimes ]

#Ahora filtramos los eclipses que cumplen las dos condiciones: tener el mes en septiembre y las horas entre[8,11]
sep_hours_8_11 = [i for i in range(0,tot_rows) if months[i]==9 and 11>=hours[i]>=8]
print("R\ El total de eclipses que ocurrieron entre las 8-11 de la mañana en septiembre fueron", len(sep_hours_8_11))
stop()

#QUINTO PUNTO
print('R\ Encuentre los índices a los que corresponde cada tipo de eclipse y guárdelo en un diccionario llamado index')

#Primero pasamos la columna de Central Duration a tiempo en segundos. Esto también estaba en el extra
times =  [dato.split("m") if dato!='-' else [0,'0s'] for dato in datos['Central Duration'] ]
times_sec = [ int(time[0])*60 + int(time[1].strip('s')) for time in times ]
magnitude = [ float(dato) for dato in datos['Eclipse Magnitude'] ]

#Luego creamos unos diccionarios para guardar nuestra información
index = {}
times_dict = {}
magnitude_dict = {}
prom_times = {}
prom_magnitude = {}

#Los tipos de eclipses están en las llaves de freq_type, por cada uno de ellos vamos a crear la lista de índices
#seleccionar los tiempos y magnitudes y hallar los promedios
for key in freq_type.keys():
  index[key] = [i for i in range(0,tot_rows) if datos['Eclipse Type'][i]==key]
  times_dict[key] = [ times_sec[i] for i in index[key] ]
  magnitude_dict[key] = [ magnitude[i] for i in index[key] ]
  prom_times[key] = sum(times_dict[key])/len(times_dict[key])
  prom_magnitude[key] = sum(magnitude_dict[key])/len(magnitude_dict[key])

#Esto lo usamos para que la impresión se vea bonita
index_nice = {key:str(index[key])for key in index.keys()}
print(json.dumps(index_nice,indent=4))
stop()

#SEXTO PUNTO
print('¿Cuál es el promedio del tiempo del eclipse por cada tipo? ')
print('R\ El promedio de tiempos es: ')
print(json.dumps(prom_times,indent=4))

stop()

#SÉPTIMO PUNTO
print('¿Cuál es el promedio de la magnitud del eclipse por cada tipo?')
print('R\ El promedio de magnitudes es: ')
print(json.dumps(prom_magnitude,indent=4))

stop()

print("""Para la solución de la parte teórica si van a mi perfil en edmodo, verán en la pestaña Recursos 
la prueba con todas las respuestas. O eso es lo que Edmodo asegura! No siendo más nos vemos en clases.""")

##########################################
# --> ¿Cuántos eclipses hay por cada tipo? (0.5)
# --> ¿Cuál es el día (el día, no la fecha exacta) con más eclipses? (0.5)
# --> ¿Cuántos eclipse hay por cada década, entre el menor año y el mayor año? (0.5)
# --> ¿Cuántos eclipses ocurrieron entre las 8 - 11 de la mañana en Septiembre? (0.5)
# --> Encuentre los índices a los que corresponde cada tipo de eclipse y guárdelo en un diccionario llamado index (0.5)
# --> ¿Cuál es el promedio del tiempo del eclipse por cada tipo? (0.5)
# --> ¿Cuál es el promedio de la magnitud del eclipse por cada tipo? (0.5)


