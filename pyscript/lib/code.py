import math
import ast
import sys
import ast
import json
from sys import argv

def calcular(lap,datosElementos,listaFuncionDuración,tiempoAveria,desviacionEst):
    tiempoAveria,desviacionEst = 0,0
    for x in range(0,lap):
        if(x==0 and len(listaFuncionDuración)==0):
            listaFuncionDuración.append(0)
        else:
            if(len(listaFuncionDuración)<len(datosElementos)):
                listaFuncionDuración.append(((datosElementos[x-1]-datosElementos[x])/datosElementos[0]))  # (nj-1 - nj)/n0
            tiempoAveria += (x*listaFuncionDuración[x])  
            desviacionEst += ((x**2)*listaFuncionDuración[x])
    desviacionEst -= (tiempoAveria**2)
    global tav
    tav = tiempoAveria
    global sd
    sd = desviacionEst


#def resultados(tiempoAveria,desviacionEst,NombreLapsos):
   # print("Tiempo promedio de averia: "+str(tiempoAveria)+" "+NombreLapsos)
   # print()
   # print("Varianza del tiempo promedio de averia: " +str(desviacionEst))
   # print()
   # print("Desviación estandar del tiempo promedio de averia: " +str(math.sqrt(desviacionEst))+" "+NombreLapsos)
   # print()


#array de lapsos

command = 'lapsos = {0}'.format(argv[1])

exec(command)
#lapsos= int(ast.literal_eval(sys.argv[1]))
NombreLapsos = (sys.argv[2])
TipoElemento = (sys.argv[3])
lim = ast.literal_eval(sys.argv[4])

#### Para colocar valores no estaticos #######
#lapsos = int(input("Introduzca el numero de lapsos con informacion sobre los elementos: "))
#considerando el 0 como el inicial donde funcioan todos los elementos
#NombreLapsos = input("Introduzca el tipo de lapso (Ej:Días,Semanas,Meses,Trimestres,Años) : ")
#TipoElemento = input("Introduzca el nombre del Elemento (Ej: piezas,focos,etc): ")
elem = [] 
listaFj=[] 
fj = []  #función de duración
tav = 0  #tiempo promedio de avería
sd = 0   #desviacion estandar 
for x in range(0,len(lapsos)):  # +1 porque incluimos el 0
    listaFj.append(x)

#print("Valores insertados: "+str(lapsos))
#print()
#print("Función de duración: ") 
#print()

#print(len(lapsos));
calcular(len(lapsos),lapsos,fj,tav,sd) 
#tabularFj("j","fj",listaFj,fj)
#print(fj)
#resultados(tav,sd,NombreLapsos)

#print("=======================================================================================")
#print()
#print("Ahora consideremos el tiempo limite para los elementos")
#print()
#lim = int(input("Introduzca el tiempo limite de los elementos (Ej:1,10,15): "))
#print()
data = {}
data['tiempo_prom_averia'] = tav
data['tiempo_lapso'] = NombreLapsos
data['varianza_prom_averia'] = sd

if (sd < 0):
    sd = 0

data['desv_prom_averia'] = str(math.sqrt(sd))

calcular(lim,elem,fj,tav,sd)

data['lim_tiempo_prom_averia'] = tav

if (sd < 0):
    sd = 0

data['lim_varianza_prom_averia'] = sd
data['lim_desv_prom_averia'] = str(math.sqrt(sd))

data['fj'] = fj
json_data = json.dumps(data)
print(json_data)