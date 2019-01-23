


#! =================================

source("./rscript/lib/simpson.R")
source("./rscript/lib/trapecio.R")

print(Simpson(1.5,400,1)) #* Llamamos a la funcion con los 3 parametros
print(Trapecio(-20,1,400))

#print(pnorm(1.5))
#? Hacemos una secuancia para poder iterarla
#u=seq(0,3.09,by=0.01)
#vector = c() #? definimos un vector vacio
#for(i in u){
#? Agregamos los valores de la secuencia al vector
#* Forma de agregar el vector
#vector[(length(vector) + 1):(length(vector) + length(Simpson(i)))] <- Simpson(i)
#}
#? Definimos una matriz con los valores del vector y 10 columnas
#m=matrix(vector,ncol=10,byrow=TRUE)
#print(m)