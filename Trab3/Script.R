# Carregue o pacotes digitize e polynom
require(digitize)
require(polynom)

# Inserindo a figura
# Marcando os pontos de coordenadas conhecidas
cal <- ReadAndCal('figura.jpg')

# Selecionando outros pontos de f
pontos <- DigitData(col = 'blue')
data <- Calibrate(pontos, cal,2,4,0.25,1)
data
x<-data[,1]
x
y<-data[,2]
y
poly.calc(x,y)
f<-function(x) {-2.540002 + 5.610488*x - 3.849446*x^2 + 1.282676*x^3 - 0.2069933*x^4 +  
0.0131224*x^5}
integrate(f,2,4)
area_f<-1.437941

# Selecionando outros pontos de g
pontos <- DigitData(col = 'red')
data <- Calibrate(pontos, cal,2,4,0.25,1)
x<-data[,1]
y<-data[,2]
poly.calc(x,y)
g<-function(x) {-0.9010872 + 2.522475*x - 1.928793*x^2 + 0.7135652*x^3 - 0.1257299*x^4 +  
0.008684645*x^5}
integrate(g,2,4)
area_g<-1.033721

# Calculando a area verde
area_verde <- area_f - area_g
print(area_verde)

# Plotando o gráfico a partir dos polinomios interpoladores
plot(f,0,4.5,lwd=3,col="blue",lty=2,ylim=c(0,1))
plot(g,0,4.5,lwd=3,col="blue", add=T,lty=2,ylim=c(0,1))
