#d)Utilizando o método de Gauss-Jacobi, realize dez iterações, marque os valores em um gráfico igual ao elaborado na letra a) e apresente-os em uma tabela.

require(pracma)

f1<-function(x1){3*x1-6}
f2<-function(x2){(23-x2)/2}

plot(f1,0,20,lwd = 3,col="red",ylab="y",xlab="x1",ylim=c(0,50))
abline(h=0,v=0,lwd=3)
curve((23-x)/2,from=0,to=20,lwd=3,col="blue",add=TRUE)

A<-matrix(c(3,-1,1,2),nrow= 2,ncol=2,byrow=TRUE)
b<-c(6, 23)

start<-c(20,50)
resultados<-matrix(,ncol=2,nrow=10)
for ( i in 1:10){
a<-itersolve(A,b, start, method = "Jacobi", nmax=i)
resultados[i,1]<-a$x[1]
resultados[i,2]<-a$x[2]
points(resultados[i,1],resultados[i,2],pch=10,col="blue",lwd=6)
}

resultados