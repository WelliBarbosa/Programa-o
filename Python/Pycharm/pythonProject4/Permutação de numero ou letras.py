import itertools


resultado= itertools.permutations('abcdef',2)

for i in resultado:
    print(''.join(i))
