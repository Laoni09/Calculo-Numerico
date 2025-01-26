require(pracma)

# Definindo a função
f <- function(x) x^3 - x - 2

# Testando o Método da Secante
tempo <- system.time(replicate(1000000, secant(f, a = 1.5, b = 2, tol = 1e-6)))
print(tempo)