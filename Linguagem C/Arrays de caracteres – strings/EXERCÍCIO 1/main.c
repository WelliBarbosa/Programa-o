#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
int main()
{ char meu_nome[90],primeiros[5];
    setlocale(LC_ALL,"");
 fgets(meu_nome, 90,stdin);
 strcpy(primeiros,meu_nome);
 printf("seu nome é %s",primeiros);
}
