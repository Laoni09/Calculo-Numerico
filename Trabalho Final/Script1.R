require(pracma)

# Definindo a função e sua derivada
f <- function(x) x^3 - x - 2
df <- function(x) 3 * x^2 - 1

# Testando Newton-Raphson
tempo <- system.time(replicate(5000000, newtonRaphson(f, df, x0 = 1.5, tol = 1e-6)))
print(tempo)