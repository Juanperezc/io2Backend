Simpson <- function(a,b,n)
{
if(n%%2!=0)
{print("La particion debe ser un numero par");return()}
if(n == 2)
{
h <- (b-a)/2
m <- (b+a)/2
Integral <- (h/3)*(f(a)+4*f(m)+f(b))
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
Integral <- (h/3)*(f(xi[1]) +
2*sum(f(xi[2:(n/2)]))+4*sum(f(xp[1:(n/2)]))+f(xi[(n/2)+1]))
}
return(round(Integral, digits = 5))
}
f <- function(x) {
  exp(-(x^2)/2)/sqrt(2*pi)
}

Trapecio <- function(a,b,n)
{
if(n==1)
{
h <- (b-a)/2
Integral <- h*( (f(a) + f(b)))
}
else
{
x <- numeric(n+1)
h <- (b-a)/n
x <- seq(a,b,h)
y <- f(x)
plot(x,y,"h",xlim=c(a,b))
Integral <- h*( (f(x[1]) + f(x[n+1]))/2 + sum(f(x[2:n])))
}

round(Integral, digits = 5)
}

print(Simpson(-100,1.5,400))
print(Trapecio(-20,1,400))