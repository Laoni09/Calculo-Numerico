require(pracma)

# Definindo a função
f <- function(x) x^3 - x - 2

# Testando Bisseção
tempo <- system.time(replicate(1000000, bisection(f, a = 1, b = 2, tol = 1e-6)))
print(tempo)