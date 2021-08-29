#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {int idade=0,vendas=0,vendas_vista=0,menor_idade=1235;
    double valor=0,media_vista=0,total_cartao=0,total_vista=0,maior_compra=0;
    char pagamento,continuar;
    do {
        scanf("%d",&idade);
         if(idade<menor_idade)
            menor_idade = idade;
        scanf("lf",&valor);
        if (valor>maior_compra)
            maior_compra = valor;
        scanf("%s",&pagamento);
        if(pagamento =='C'){
            total_cartao = valor + total_cartao;
            //printf("cartao");
            }
        else if(pagamento =='V'){
            total_vista = valor + total_vista;
            vendas_vista++;
            //printf("vista e %d ",vendas_vista);
        }
        scanf("%s",&continuar);
        vendas++;


       ;

    }while(continuar!='N');
    media_vista=total_vista/vendas_vista;
    printf("%d\n",vendas);
  if(total_vista!=0)
    printf("%.2lf\n",total_vista);
    else
    printf("0\n");
 if(total_cartao!=0)
    printf("%.2lf\n",total_cartao);
    else
    printf("0\n");
    printf("%d\n",menor_idade);
 if(maior_compra!=0)
    printf("%.2lf\n",maior_compra);
    else
    printf("0\n");
if(vendas_vista!=0)
    printf("%.2lf",media_vista);
else
    printf("0");
	return 0;
}
