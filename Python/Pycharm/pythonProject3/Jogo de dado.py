import string
import random

a=0
tamanho=1
chars = [1,2,3,4,5,6]
rnd = random.SystemRandom()
jogar = input("Você gostaria de jogar?")
while jogar == "sim" or jogar == "Sim":
    print(rnd.choice(chars))
    jogar=input("Você gostaria de jogar?")
    a+=1

print("Jogo encerrado")
print(a)