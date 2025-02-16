 f<-function(x){((1/2)*sin(2*x))-((1/3)*cos(3*x))+(4/3)}

# Esboçando o grafico
curve(f,0,1,col="blue",lwd=2)
abline(h=0,v=0,lwd=3)

require(pracma)
f<-function(x,y){cos(2*x)+sin(3*x)}
a<-0
b<-1
y0<-1
# numero de pontos da malha
n=100 # (b-a)/h

euler_a<-euler_heun(f,a,b,y0,n, improved =TRUE)
euler_a

points(euler_a$t,euler_a$y,pch="+",col="green")





