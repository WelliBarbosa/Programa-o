n = int(input())
fib_list = [0,1]
n = n -2

if n>=0:
    for i in range(n):
        a = fib_list[-1] + fib_list[-2]
        fib_list.append(a)

    fib_string = [str(i) for i in fib_list]

    print(' '.join(fib_string))
else:
    print(0)



