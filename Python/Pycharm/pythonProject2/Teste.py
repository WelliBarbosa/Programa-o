# custo=0
# tipo_de_anuncio=input()
# if tipo_de_anuncio == "Rádio":
#     frequencia = input()
#     if frequencia == "FM":
#         custo = custo + 500.00
#     elif frequencia == "AM":
#         custo = custo + 300.00
# elif tipo_de_anuncio == "TV":
#     horario= int(input())
#     if horario<=20:
#         custo = custo + 1200.00
#     elif horario>20:
#         custo = custo + 2000.00
# elif tipo_de_anuncio == "Revista":
#     custo= custo + 750.00
# else:
#     custo= custo + 1500.00
# print(f'{custo:.2f}')

# conjunto = {1,2,3,4,5,6,7,8,9}
# conjunto_par = {2,4,6,8}
# conjunto_impar = {1,3,5,7,9}
# conjunto_total_c = conjunto_par.union(conjunto_impar)
# conjunto_total_c.add(0)
# conjunto_total= conjunto_total_c
#
# Lista={''}
# for x in range(3):
#     print(x)
#     a = input()
#     Lista.add(a)
# Lista.discard('')
# print(Lista)
# Lista= set(Lista)
# print(Lista)
# class Calculadora:
#     def soma(a,b):
#         return(a+b)
#     def multiplicacao(a,b):
#         return(a*b)
#     def elevado_a_dois(a,b):
#
#         return (a*a,b*b)
#
# print(Calculadora.elevado_a_dois(1,3)\n)

# class Televisao:
#     def __init__(self):
#         self.ligada=False
#         self.canal=1
#     def power(self):
#         if self.ligada:
#             self.ligada=False
#         else:
#             self.ligada = True
#
#     def up(self):
#         if self.ligada==True:
#             self.canal += 1
#     def down(self):
#         if self.ligada==True:
#             self.canal -= 2
#
# telivisão=Televisao()
# print(telivisão.ligada)
# telivisão.power()
# print(telivisão.ligada)
# telivisão.up()
# print("{}".format(telivisão.canal))

dias=int(input("Digite a quantidade de dias de locacao:"))
distancia_percorrida=int(input("Digite a quantidade de km rodados:"))
valor=0.9*(dias*30+0.01*distancia_percorrida)
print(f'Valor a pagar pelo aluguel: R${valor:.6f}')

