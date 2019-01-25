
source("./rscript/lib/simpson.R")

#? Hacemos una secuancia para poder iterarla
u=seq(-3.09,0,by=0.01)
vector = c() #? definimos un vector vacio
for(i in u){
#? Agregamos los valores de la secuencia al vector
#* Forma de agregar el vector
vector[(length(vector) + 1):(length(vector) + length(Simpson(i)))] <- Simpson(i)
}
#? Definimos una matriz con los valores del vector y 10 columnas
m=matrix(vector,ncol=10,byrow=TRUE)
print(m)