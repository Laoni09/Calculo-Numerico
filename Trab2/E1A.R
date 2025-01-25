#a) Faça um gráfico para representar este sistema linear, considerando o eixo x_1 (abscissa) variando no intervalo [0,20] e o eixo x_2 (ordenada)  no intervalo [0,50].

f1<-function(x1){3*x1-6}
f2<-function(x2){(23-x2)/2}

plot(f1,0,20,lwd = 3,col="red",ylab="y",xlab="x1",ylim=c(0,50))
abline(h=0,v=0,lwd=3)
curve((23-x)/2,from=0,to=20,lwd=3,col="blue",add=TRUE)
 