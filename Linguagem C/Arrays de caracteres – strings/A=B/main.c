#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {int A,B,x,k;
    scanf("%d",&A);//ler o valor de a
    scanf("%d",&B);//ler o valor de b
    k=90;
    while (A>B&&A!=B){// se a for maior que B entrara em loop
        x=log10(A)/log10(2);// vai tirar o log A na base dois
        A = A - 2^x;// depois vai elevar 2 ao o valor inteiro do log tirado anteriormente
        printf("%d\n",A);
    }


            return 0;
}
