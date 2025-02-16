# Definindo as funções
f1 <- function(x) { exp(3*x) + 10*x }
f2 <- function(x) { sin(x) + 40 }

# a) Gráfico
plot(f1, -5, 5, xlab = expression('x'), 
     ylab = expression('y'), lwd = 3, col = "blue", ylim = c(-10, 50))
abline(h = 0, v = 0, lwd = 3)
plot(f2, -5, 5, add = TRUE, col = "red", lwd = 3)

require(nleqslv)
# Definindo o sistema
sistema <- function(x) {
y <- numeric(2)
y[1] <- exp(3*x[1]) + 10*x[1] - x[2]
y[2] <- sin(x[1]) + 40 - x[2]
y
}

xstart <- c(1,40)
points(1,40,pch=20,lwd=3,col="black")
nleqslv(xstart,sistema,method = c("Newton"),control=list(xtol=0.000001))
points(1.129375,40.904145,pch=20,lwd=3,col="green")