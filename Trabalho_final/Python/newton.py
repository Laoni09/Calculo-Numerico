import time
from math import e
from scipy.optimize import newton

# Definindo a função e sua derivada
def f(x):
    return x**3 - x - 2

def df(x):
    return 3 * x**2 - 1

# Medindo o tempo
def measure_time():
    n_reps = 10000000  # Número de repetições
    x0 = 1.5      # Chute inicial

    # Início da medição
    start_user = time.process_time()  # Tempo de CPU (usuário)
    start_real = time.time()          # Tempo real (decorrido)

    for _ in range(n_reps):
        newton(f, x0, fprime=df, tol=1e-6)

    # Fim da medição
    end_user = time.process_time()    # Tempo de CPU (usuário)
    end_real = time.time()            # Tempo real (decorrido)

    user_time = end_user - start_user
    elapsed_time = end_real - start_real
    system_time = elapsed_time - user_time

    return user_time, system_time, elapsed_time

# Executando e exibindo os resultados
user_time, system_time, elapsed_time = measure_time()
print(f"Tempo do usuário: {user_time:.6f} s")
print(f"Tempo do sistema: {system_time:.6f} s")
print(f"Tempo decorrido: {elapsed_time:.6f} s")