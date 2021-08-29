lista=[]
a = int(input())
b = int(input())
if a<b:
	while (a<(b+1)):
		lista.append(a)
		a+=1
else:
	while (b<(a+1)):
		lista.append(b)
		b+=1
print(lista)