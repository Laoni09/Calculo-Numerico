require(pracma)

# Definindo a função
f <- function(x) x^3 - x - 2

# Testando o Método da Secante
tempo <- system.time(replicate(100, secant(f, x0 = 1.5, x1 = 2, tol = 1e-6)))
print(tempo)