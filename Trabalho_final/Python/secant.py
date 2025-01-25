import time
from scipy.optimize import root_scalar

# Definindo a função
def f(x):
    return x**3 - x - 2

# Medindo o tempo com root_scalar e método da secante
def measure_time_secant():
    n_reps = 100  # Número de repetições

    # Início da medição
    start_user = time.process_time()  # Tempo de CPU (usuário)
    start_real = time.time()          # Tempo real (decorrido)

    for _ in range(n_reps):
        result = root_scalar(f, x0=1.5, x1=2, method='secant', xtol=1e-6)

    # Fim da medição
    end_user = time.process_time()    # Tempo de CPU (usuário)
    end_real = time.time()            # Tempo real (decorrido)

    user_time = end_user - start_user
    elapsed_time = end_real - start_real
    system_time = elapsed_time - user_time

    return user_time, system_time, elapsed_time

# Executando e exibindo os resultados
user_time, system_time, elapsed_time = measure_time_secant()
print(f"Tempo do usuário: {user_time:.6f} s")
print(f"Tempo do sistema: {system_time:.6f} s")
print(f"Tempo decorrido: {elapsed_time:.6f} s")