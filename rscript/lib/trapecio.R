
source("./rscript/lib/normal-function.R")
#? Funcion de Trapecio
#todo =================================
Trapecio <- function(a,b,n)
{
if(n==1)
{
h <- (b-a)/2
integral <- h*( (f(a) + f(b)))
}
else
{
x <- numeric(n+1)
h <- (b-a)/n
x <- seq(a,b,h)
y <- f(x)
plot(x,y,"h",xlim=c(a,b))
integral <- h*( (f(x[1]) + f(x[n+1]))/2 + sum(f(x[2:n])))
}

round(integral, digits = 5)
}
