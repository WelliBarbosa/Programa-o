#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <locale.h>
/* (r?dio, tv, revista e outdoor).
Escolha entre FM e AM para r?dio custam R$ 500 se for para FM, e R$ 300 se for para AM
Escolha do horario da Tv se for ate 20h custam R$ 1200 e depois de 20h R$ 2000 em hor?rio nobre
- An?ncios para revista custam R$ 750, e para outdoor custam R$ 1500
Escreva um programa que receba como entrada os dados dos an?ncios escolhidos por 7 clientes da ag?ncia e exiba o total que ela vai receber e quantos an?ncios de cada m?dia ser?o produzidos.
Formato de entrada
Os dados de entrada v?o variar de acordo com o tipo de m?dia escolhido para cada an?ncio.
Se o tipo for r?dio, haver? uma nova entrada para faixa (AM ou FM). Se o tipo for tv, haver? uma nova entrada para hor?rio (valor inteiro). Caso o tipo de m?dia seja revista ou outdoor, n?o ser?o necess?rias outras entradas.
Formato de sa?da
Um valor real com duas casas decimais, e quatro valores inteiros. Todos os valores devem ser separados por quebra de linha
*/
int main() {int horario,i;
    char tipo[4], tipo_do_anuncio[10];
    float custo;
    custo=0;
        setlocale(LC_ALL,"");

        for(i=0;i<7;i++){
            scanf("%s",&tipo_do_anuncio);
            if(tipo_do_anuncio[0] =='R'&& tipo_do_anuncio[2] =='d'){
                scanf("%s",&tipo);
                if (tipo[0]=='F'){ //se a escolha para radio for FM, o custo ser? igual a 500 reais
                    custo = custo + 500;
                } else if(tipo[0]=='A'){ // se a escolha para radio for AM, o custo ser? igual 300 reais
                        custo = custo + 300;
                }
            }
            else if(tipo_do_anuncio[0]=='T'){
                scanf("%d",&horario);//escolha do horario
                if(horario<=20){ // se o horario for igual ou menor que 20h, o custo ser? o valor do custo do anuncio
                                // radio mais o custo do anuncio no horario
                    custo = custo + 1200.0;
                }  else {
                        custo = custo + 2000.0;
            }
            }
            else if(tipo_do_anuncio[0] == 'R'&&tipo_do_anuncio[1] == 'e'){
                    custo = custo + 750;
            }
            else if(tipo_do_anuncio[0]== 'O'){
                custo = custo + 1500;
            }

        }
    printf("%.2f",custo);
	return 0;
}
