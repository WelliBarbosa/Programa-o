peso=-1
pessoa=0
peso_total=0
while((peso!=0) and (pessoa<7) and (peso_total<560)):
    peso=int(input())
    peso_total=peso_total+peso
    if(peso!=0):
        pessoa+=1


print('{}'.format(pessoa))
print(f'{peso_total:.1f}')
