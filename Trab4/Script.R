######################
# Plotando o Gráfico #
######################

f<-function(x){(2*x*sin(x))/(3+cos(2*x))}
plot(f, pi/6,(5*pi)/6,lwd=2,xlim=c(0,5),ylim=c(-0.1, 2),col="red")
abline(h=0,v=0,lwd=2)
segments(((5*pi)/6),0,((5*pi)/6),f((5*pi)/6),lwd=2,col="blue")
segments((pi/6),0,(pi/6),f(pi/6),lwd=2,col="blue")

#####################
# Regra do trapezio #
#####################

# Trapezio
segments((pi/6),f(pi/6),((5*pi)/6),f((5*pi)/6),col="blue",lwd=2,lty=2)

# Area = 0.9399623
A=((f(pi/6)+f((5*pi)/6))*(((5*pi)/6)-(pi/6)))/2
A

# Calculando o valor exato = 2.242231
require(polynom)
solucao<-integrate(f,(pi/6),(5*pi)/6) 
solucao

# Erro Relativo RT = 0.5807915
ER<-abs(2.242231-0.9399623)/abs(2.242231)
ER

##################################################
# Regra dos trapezios repetidos 10 subintervalos #
##################################################

f<-function(x){(2*x*sin(x))/(3+cos(2*x))}
plot(f, pi/6,(5*pi)/6,lwd=2,xlim=c(0,5),ylim=c(-0.1, 2),col="red")
abline(h=0,v=0,lwd=2)
segments(((5*pi)/6),0,((5*pi)/6),f((5*pi)/6),lwd=2,col="blue")
segments((pi/6),0,(pi/6),f(pi/6),lwd=2,col="blue")

# Carregando o pacote caTools
require(caTools)

# Calculando a integral utilizando a  
# Regra dos Trapezios repetidos com 
# 10 subintervalos

# Encontrado o valor de h = 0.2094395
h<-(((5*pi)/6)-(pi/6))/10
h

# Criando uma sequencia
x<-seq((pi/6),((5*pi)/6),0.2094395)
x

# Calculando o valor de f(x) para cada ponto acima.
y<-f(x)
y

# Desenhando os trapezios
for (i in 1:11){
segments(x[i],0,x[i],f(x[i]),col="blue",lwd=2)
}

for (i in 1:10){
segments(x[i],f(x[i]),x[i+1],f(x[i+1]),col="blue",lwd=2)
}

# Regra dos trapezios repetidos = 2.234931
trapz(x,y)

# Erro Relativo RTR 10 subtintervalos = 0.003255686
ER<-abs(2.242231-2.234931)/abs(2.242231)
ER

###################################################
# Regra dos trapezios repetidos 100 subintervalos #
###################################################

f<-function(x){(2*x*sin(x))/(3+cos(2*x))}
plot(f, pi/6,(5*pi)/6,lwd=2,xlim=c(0,3),ylim=c(-0.1, 2),col="red")
abline(h=0,v=0,lwd=2)
segments(((5*pi)/6),0,((5*pi)/6),f((5*pi)/6),lwd=2,col="blue")
segments((pi/6),0,(pi/6),f(pi/6),lwd=2,col="blue")

# Carregando o pacote caTools
require(caTools)

# Calculando a integral utilizando a  
# Regra dos Trapezios repetidos com 
# 100 subintervalos

# Encontrado o valor de h = 0.02094395
h<-(((5*pi)/6)-(pi/6))/100
h

# Criando uma sequencia
x<-seq((pi/6),((5*pi)/6),0.02094395)
x

# Calculando o valor de f(x) para cada ponto acima.
y<-f(x)
y

# Desenhando os trapezios
for (i in 1:101){
segments(x[i],0,x[i],f(x[i]),col="blue",lwd=2)
}

for (i in 1:100){
segments(x[i],f(x[i]),x[i+1],f(x[i+1]),col="blue",lwd=2)
}

# Regra dos trapezios repetidos = 2.242158
trapz(x,y)

options(scipen=999)
# Erro Relativo RTR 100 subintervalos = 0.00003255686
ER<-abs(2.242231-2.242158)/abs(2.242231)
ER

####################################################
# Regra dos trapezios repetidos 1000 subintervalos #
####################################################

f<-function(x){(2*x*sin(x))/(3+cos(2*x))}
plot(f, pi/6,(5*pi)/6,lwd=2,xlim=c(0,2.8),ylim=c(-0.1, 2),col="red")
abline(h=0,v=0,lwd=2)
segments(((5*pi)/6),0,((5*pi)/6),f((5*pi)/6),lwd=2,col="blue")
segments((pi/6),0,(pi/6),f(pi/6),lwd=2,col="blue")

# Carregando o pacote caTools
require(caTools)

# Calculando a integral utilizando a  
# Regra dos Trapezios repetidos com 
# 1000 subintervalos

# Encontrado o valor de h = 0.002094395
h<-(((5*pi)/6)-(pi/6))/1000
h

# Criando uma sequencia
x<-seq((pi/6),((5*pi)/6),0.002094395)
x

# Calculando o valor de f(x) para cada ponto acima.
y<-f(x)
y

# Desenhando os trapezios
for (i in 1:1001){
segments(x[i],0,x[i],f(x[i]),col="blue",lwd=2)
}

for (i in 1:1000){
segments(x[i],f(x[i]),x[i+1],f(x[i+1]),col="blue",lwd=2)
}

# Regra dos trapezios repetidos = 2.24223
trapz(x,y)

options(scipen=999)
# Erro Relativo RTR 1000 subintervalos = 0.0000004459844
ER<-abs(2.242231-2.24223)/abs(2.242231)
ER






