from threading import Thread
import time

def carro(trajeto,velocidade,piloto):
    while trajeto <= 100:
        trajeto += velocidade
        time.sleep(0.5)
        print('carro1 com piloto {} está em {}km e tem uma velocidade de {}km/s \n'.format(piloto, trajeto, velocidade))


t_carro1= Thread(target=carro, args=[0,8, 'Castro'])
t_carro2= Thread(target=carro, args=[30,6, 'Joaquim'])

t_carro2.start()
t_carro1.start()