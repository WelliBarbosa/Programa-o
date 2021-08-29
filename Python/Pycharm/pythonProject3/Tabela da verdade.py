import hashlib
#Pegar um numero e transformar em binario
#Pegar esse numero em binario e converter em uma lista
#Pegar a lista e compara os numero
for i in range(16) :
    x = format(i, "b")
    # print(x)
    x = list(x)
    # print(list(x))
    if i<2:
        A = 0
        B = 0
        C = 0
        D = int(x[0])
    elif i<4:
        A = 0
        B = 0
        C = int(x[0])
        D = int(x[1])
    elif i<8:
        A = 0
        B = int(x[0])
        C = int(x[1])
        D = int(x[2])
    else:
        A = int(x[0])
        B = int(x[1])
        C = int(x[2])
        D = int(x[3])

    if ((A  or (B==0)  and C  and D)!=0):
        print("{}{}{}{} 1".format(A, B, C, D))

    else:
        print("{}{}{}{} 0".format(A, B, C, D))
