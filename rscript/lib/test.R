simpsons.rule <- function(f, a, b) {
  if (is.function(f) == FALSE) {
    stop('f must be a function with one parameter (variable)')
  }
   
  h <- (b - a) / 2
  x0 <- a
  x1 <- a + h
  x2 <- b
   
  s <- (h / 3) * (f(x0) + 4 * f(x1) + f(x2))
   
  return(s)
}
 f <- function(x) {
  exp(-(x^2)/2)/sqrt(2*pi)
}
simpsons.rule(f, 0, 1)