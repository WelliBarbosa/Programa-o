import string
import random

tamanho=1
chars = string.ascii_letters + string.
rnd = random.SystemRandom()

print(''.join(rnd.choice(chars) for i in range(tamanho)))
senha = (''.join(rnd.choice(chars)))
print(senha)