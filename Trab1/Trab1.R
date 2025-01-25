# Gráfico da função f(x)
f<-function(x){sin(5*x)-x/3}
plot(f,0,10,col="red",cex.axis=0.8,las=1)
abline(h=0,v=0)

g<-function(x){sin(5*x)}
h<-function(x){x/3}
plot(g,0,2,col="blue",ylim=c(0,3),cex.axis=0.8,las=1)
plot(h,0,2,col="red",add=T)
abline(h=0,v=0)
text(0.4,2.5,expression(g(x)))
segments(0.1,2.5,0.2,2.5,col="blue")
text(0.4,2.0,expression(h(x)))
segments(0.1,2,0.2,2,col="red")
options(digits=13)

require(pracma)

# bissecção
bisect(f, 0.5,1, maxiter = 100)

# Falsa posição
regulaFalsi(f,0.5,1, maxiter = 100)

# Newton-Raphson
newton(f,0.5,tol=0.000000001)

# Secante
secant(f,1.7,1.8)
