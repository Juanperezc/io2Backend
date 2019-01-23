source("./rscript/lib/normal-function.R")

#? Funcion de Simpson
#todo =================================
Simpson <- function(b,n,a)
{
if(missing(n)){
  n <- 400
}
if(missing(a)){
  a <- -1000
}
if(n%%2!=0)
{print("La particion debe ser un numero par");return()}
if(n == 2)
{
h <- (b-a)/2
m <- (b+a)/2
integral <- (h/3)*(f(a)+4*f(m)+f(b))
}
else
{
h <- (b-a)/n
d <- 2*h
#Vector que guarda los Xi de indice impar X1,X3,...Xn+1)
xi <- seq(a,b,d)
xpi <- a + h ; xpf <- b - h
#Vector que guarda los Xi de indice par X2, x4,...Xn
xp<- seq(xpi,xpf,d)
x <- sort(c(xi,xp))
y <- f(x)
plot(x,y,"h",xlim=c(a,b))
integral <- (h/3)*(f(xi[1]) +
2*sum(f(xi[2:(n/2)]))+4*sum(f(xp[1:(n/2)]))+f(xi[(n/2)+1]))
}
return(round(integral, digits = 5))
}

#! =================================